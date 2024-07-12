// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from outcome.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

final class TestOutcomeCppProxy: DjinniSupport.CppProxy, TestSuite.TestOutcome {
    init(_ inst: djinni.swift.AnyValue) { super.init(inst:inst) } 
}
enum TestOutcomeMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.TestOutcome
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { TestOutcomeCppProxy(c) as SwiftType })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}
public class TestOutcome_statics {
    static func getSuccessOutcome() throws -> Result<String, Int32> {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.TestOutcome_getSuccessOutcome(&params)
        try handleCppErrors(&ret)
        return OutcomeMarshaller<StringMarshaller, I32Marshaller>.fromCpp(ret)
    }
    static func getErrorOutcome() throws -> Result<String, Int32> {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.TestOutcome_getErrorOutcome(&params)
        try handleCppErrors(&ret)
        return OutcomeMarshaller<StringMarshaller, I32Marshaller>.fromCpp(ret)
    }
    static func putSuccessOutcome(_ x: Result<String, Int32>) throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(OutcomeMarshaller<StringMarshaller, I32Marshaller>.toCpp(x))
        var ret = djinni_generated.TestOutcome_putSuccessOutcome(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
    static func putErrorOutcome(_ x: Result<String, Int32>) throws -> Int32 {
        var params = djinni.swift.ParameterList()
        params.addValue(OutcomeMarshaller<StringMarshaller, I32Marshaller>.toCpp(x))
        var ret = djinni_generated.TestOutcome_putErrorOutcome(&params)
        try handleCppErrors(&ret)
        return I32Marshaller.fromCpp(ret)
    }
    static func getNestedSuccessOutcome() throws -> TestSuite.NestedOutcome {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.TestOutcome_getNestedSuccessOutcome(&params)
        try handleCppErrors(&ret)
        return NestedOutcomeMarshaller.fromCpp(ret)
    }
    static func getNestedErrorOutcome() throws -> TestSuite.NestedOutcome {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.TestOutcome_getNestedErrorOutcome(&params)
        try handleCppErrors(&ret)
        return NestedOutcomeMarshaller.fromCpp(ret)
    }
    static func putNestedSuccessOutcome(_ x: TestSuite.NestedOutcome) throws -> Int32 {
        var params = djinni.swift.ParameterList()
        params.addValue(NestedOutcomeMarshaller.toCpp(x))
        var ret = djinni_generated.TestOutcome_putNestedSuccessOutcome(&params)
        try handleCppErrors(&ret)
        return I32Marshaller.fromCpp(ret)
    }
    static func putNestedErrorOutcome(_ x: TestSuite.NestedOutcome) throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(NestedOutcomeMarshaller.toCpp(x))
        var ret = djinni_generated.TestOutcome_putNestedErrorOutcome(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
}
