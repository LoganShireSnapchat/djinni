// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from single_language_interfaces.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

/**
 * Generating and compiling this makes sure other languages don't break
 * on references to interfaces they don't need.
 */
final class UsesSingleLanguageListenersCppProxy: DjinniSupport.CppProxy, TestSuite.UsesSingleLanguageListeners {
    init(_ inst: djinni.swift.AnyValue) { super.init(inst:inst) } 
    func callForObjC(_ l: TestSuite.ObjcOnlyListener) throws -> Void {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(ObjcOnlyListenerMarshaller.toCpp(l))
        var ret = djinni_generated.UsesSingleLanguageListeners_callForObjC(&params)
        try handleCppErrors(&ret)
    }
    func returnForObjC() throws -> TestSuite.ObjcOnlyListener {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        var ret = djinni_generated.UsesSingleLanguageListeners_returnForObjC(&params)
        try handleCppErrors(&ret)
        return ObjcOnlyListenerMarshaller.fromCpp(ret)
    }
    func callForJava(_ l: TestSuite.JavaOnlyListener) throws -> Void {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(JavaOnlyListenerMarshaller.toCpp(l))
        var ret = djinni_generated.UsesSingleLanguageListeners_callForJava(&params)
        try handleCppErrors(&ret)
    }
    func returnForJava() throws -> TestSuite.JavaOnlyListener {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        var ret = djinni_generated.UsesSingleLanguageListeners_returnForJava(&params)
        try handleCppErrors(&ret)
        return JavaOnlyListenerMarshaller.fromCpp(ret)
    }
}
enum UsesSingleLanguageListenersMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.UsesSingleLanguageListeners
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { UsesSingleLanguageListenersCppProxy(c) as SwiftType })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}
