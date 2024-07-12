// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from exception.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

final class CppExceptionCppProxy: DjinniSupport.CppProxy, TestSuite.CppException {
    init(_ inst: djinni.swift.AnyValue) { super.init(inst:inst) } 
    func throwAnException() throws -> Int32 {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        var ret = djinni_generated.CppException_throwAnException(&params)
        try handleCppErrors(&ret)
        return I32Marshaller.fromCpp(ret)
    }
    func callThrowingInterface(_ cb: TestSuite.ThrowingInterface) throws -> Int32 {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(ThrowingInterfaceMarshaller.toCpp(cb))
        var ret = djinni_generated.CppException_callThrowingInterface(&params)
        try handleCppErrors(&ret)
        return I32Marshaller.fromCpp(ret)
    }
    func callThrowingAndCatch(_ cb: TestSuite.ThrowingInterface) throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(ThrowingInterfaceMarshaller.toCpp(cb))
        var ret = djinni_generated.CppException_callThrowingAndCatch(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
}
enum CppExceptionMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.CppException
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { CppExceptionCppProxy(c) as SwiftType })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}
public class CppException_statics {
    static func get() throws -> TestSuite.CppException {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.CppException_get(&params)
        try handleCppErrors(&ret)
        return CppExceptionMarshaller.fromCpp(ret)
    }
}
