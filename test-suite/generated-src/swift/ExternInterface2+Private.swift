// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from yaml-test.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

enum ExternInterface2Marshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.ExternInterface2
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return cppInterfaceToSwift(c, { fatalError("n/a") })
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        return swiftInterfaceToCpp(s, { fatalError("n/a") })
    }
}