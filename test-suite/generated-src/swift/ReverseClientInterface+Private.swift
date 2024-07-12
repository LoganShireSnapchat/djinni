// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from client_interface.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

final class ReverseClientInterfaceCppProxy: DjinniSupport.CppProxy, TestSuite.ReverseClientInterface {
    init(_ inst: djinni.swift.AnyValue) { super.init(inst:inst) } 
    func returnStr() throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        var ret = djinni_generated.ReverseClientInterface_returnStr(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
    func methTakingInterface(_ i: TestSuite.ReverseClientInterface) throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(ReverseClientInterfaceMarshaller.toCpp(i))
        var ret = djinni_generated.ReverseClientInterface_methTakingInterface(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
    func methTakingOptionalInterface(_ i: Optional<TestSuite.ReverseClientInterface>) throws -> String {
        var params = djinni.swift.ParameterList()
        params.addValue(inst)
        params.addValue(OptionalMarshaller<ReverseClientInterfaceMarshaller>.toCpp(i))
        var ret = djinni_generated.ReverseClientInterface_methTakingOptionalInterface(&params)
        try handleCppErrors(&ret)
        return StringMarshaller.fromCpp(ret)
    }
}
enum ReverseClientInterfaceMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.ReverseClientInterface
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { ReverseClientInterfaceCppProxy(c) as SwiftType })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}
public class ReverseClientInterface_statics {
    static func create() throws -> TestSuite.ReverseClientInterface {
        var params = djinni.swift.ParameterList()
        var ret = djinni_generated.ReverseClientInterface_create(&params)
        try handleCppErrors(&ret)
        return ReverseClientInterfaceMarshaller.fromCpp(ret)
    }
}
