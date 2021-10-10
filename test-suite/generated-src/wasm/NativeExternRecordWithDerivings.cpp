// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from yaml-test.djinni

#include "NativeExternRecordWithDerivings.hpp"  // my header
#include "NativeColor.hpp"
#include "NativeRecordWithDerivings.hpp"

namespace djinni_generated {

auto NativeExternRecordWithDerivings::toCpp(const JsType& j) -> CppType {
    return {::djinni_generated::NativeRecordWithDerivings::Boxed::toCpp(j["member"]),
            ::djinni_generated::NativeColor::Boxed::toCpp(j["e"])};
}
auto NativeExternRecordWithDerivings::fromCpp(const CppType& c) -> JsType {
    em::val js = em::val::object();
    js.set("member", ::djinni_generated::NativeRecordWithDerivings::Boxed::fromCpp(c.member));
    js.set("e", ::djinni_generated::NativeColor::Boxed::fromCpp(c.e));
    return js;
}

}  // namespace djinni_generated
