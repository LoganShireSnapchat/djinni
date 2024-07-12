// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from array.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

final class TestArrayCppProxy: DjinniSupport.CppProxy, TestSuite.TestArray {
    init(_ inst: djinni.swift.AnyValue) { super.init(inst:inst) } 
}
enum TestArrayMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.TestArray
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { TestArrayCppProxy(c) as SwiftType })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}
public class TestArray_statics {
    static func testStringArray(_ a: Array<String>) throws -> Array<String> {
        var params = djinni.swift.ParameterList()
        params.addValue(ArrayMarshaller<StringMarshaller>.toCpp(a))
        var ret = djinni_generated.TestArray_testStringArray(&params)
        try handleCppErrors(&ret)
        return ArrayMarshaller<StringMarshaller>.fromCpp(ret)
    }
    static func testIntArray(_ a: Array<Int32>) throws -> Array<Int32> {
        var params = djinni.swift.ParameterList()
        params.addValue(ArrayMarshaller<I32Marshaller>.toCpp(a))
        var ret = djinni_generated.TestArray_testIntArray(&params)
        try handleCppErrors(&ret)
        return ArrayMarshaller<I32Marshaller>.fromCpp(ret)
    }
    static func testRecordArray(_ a: Array<TestSuite.Vec2>) throws -> Array<TestSuite.Vec2> {
        var params = djinni.swift.ParameterList()
        params.addValue(ArrayMarshaller<Vec2Marshaller>.toCpp(a))
        var ret = djinni_generated.TestArray_testRecordArray(&params)
        try handleCppErrors(&ret)
        return ArrayMarshaller<Vec2Marshaller>.fromCpp(ret)
    }
    static func testArrayOfArray(_ a: Array<Array<Int32>>) throws -> Array<Array<Int32>> {
        var params = djinni.swift.ParameterList()
        params.addValue(ArrayMarshaller<ArrayMarshaller<I32Marshaller>>.toCpp(a))
        var ret = djinni_generated.TestArray_testArrayOfArray(&params)
        try handleCppErrors(&ret)
        return ArrayMarshaller<ArrayMarshaller<I32Marshaller>>.fromCpp(ret)
    }
}
