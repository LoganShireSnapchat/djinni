// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from extended_record.djinni

import DjinniSupport
import DjinniSupportCxx
import Foundation
import TestSuite
import TestSuiteCxx

enum RecordUsingExtendedRecordMarshaller: DjinniSupport.Marshaller {
    typealias SwiftType = TestSuite.RecordUsingExtendedRecord
    static func fromCpp(_ c: djinni.swift.AnyValue) -> SwiftType {
        return withUnsafePointer(to: c) { p in
            let er = ExtendedRecordMarshaller.fromCpp(djinni.swift.getMember(p, 0))
            return SwiftType(er: er)
        }
    }
    static func toCpp(_ s: SwiftType) -> djinni.swift.AnyValue {
        var ret = djinni.swift.makeCompositeValue()
        djinni.swift.addMember(&ret, ExtendedRecordMarshaller.toCpp(s.er))
        return ret
    }
}