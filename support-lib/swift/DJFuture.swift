import DjinniSupportCxx
import Foundation
import Combine

public typealias DJFuture<T> = Future<T, DjinniError>

protocol AbstractPromiseHolder: AnyObject {
    func fulfillPromise(value: UnsafePointer<djinni.swift.AnyValue>)
}

class PromiseHolder<T: Marshaller>: AbstractPromiseHolder {
    var promise: DJFuture<T.SwiftType>.Promise
    init(marshaller: T.Type, promise: @escaping DJFuture<T.SwiftType>.Promise) {
        self.promise = promise
    }
    func fulfillPromise(value: UnsafePointer<djinni.swift.AnyValue>) {
        if (!djinni.swift.isError(value)) {
            promise(.success(T.fromCpp(value.pointee)))
        } else {
            promise(.failure(DjinniError(djinni.swift.getError(value))))
        }
    }
}

public func futureCb(
  ptr: UnsafeMutableRawPointer?,
  result: UnsafeMutablePointer<djinni.swift.AnyValue>?)
  -> Void {
    let ctx = Unmanaged<AnyObject>.fromOpaque(ptr!).takeRetainedValue()
    let promiseHolder = ctx as! AbstractPromiseHolder
    promiseHolder.fulfillPromise(value:result!)
}

public func cleanupCb(psubscription: UnsafeMutableRawPointer?) -> Void {
    let _ = Unmanaged<AnyCancellable>.fromOpaque(psubscription!).takeRetainedValue()
}

public enum FutureMarshaller<T: Marshaller>: Marshaller {
    public typealias SwiftType = DJFuture<T.SwiftType>
    public static func fromCpp(_ v: djinni.swift.AnyValue) -> SwiftType {
        return Future() { promise in
            let promiseHolder = PromiseHolder(marshaller: T.self, promise: promise)
            let promiseHolderPtr = Unmanaged.passRetained(promiseHolder).toOpaque()
            withUnsafePointer(to: v) { p in
                djinni.swift.setFutureCb(p, futureCb, promiseHolderPtr)
            }
        }
    }
    public static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        var futureValue = djinni.swift.makeFutureValue(cleanupCb)
        let subscription = s.sink { completion in
            if case let .failure(e) = completion {
                var errorValue = djinni.swift.makeVoidValue()
                djinni.swift.setErrorValue(&errorValue, e.wrapped)
                djinni.swift.setFutureResult(&futureValue, &errorValue)
            }
        } receiveValue:{ v in
            var cppValue = T.toCpp(v)
            djinni.swift.setFutureResult(&futureValue, &cppValue)
        }
        let pSubscription = Unmanaged.passRetained(subscription).toOpaque()
        djinni.swift.storeSubscription(&futureValue, pSubscription)
        return futureValue
    }
}
