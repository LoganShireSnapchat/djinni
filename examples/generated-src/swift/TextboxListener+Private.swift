// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from example.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TextSort
import TextSortCxx

let textboxListenerMethods: Vtbl<TextboxListener> = [
    { inst, params, ret in
        let _items = ItemListMarshaller.fromCpp(djinni.swift.getMember(params, 0))
        try inst.update(_items)
    },
]

enum TextboxListenerMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TextSort.TextboxListener
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { fatalError("n/a") })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { djinni_generated.TextboxListenerSwiftProxy.make(ctxPtr(s, textboxListenerMethods), dispatcherProtocalCall)})
    }
}