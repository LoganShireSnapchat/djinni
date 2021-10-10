// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from exception.djinni

#pragma once

#include "cpp_exception.hpp"
#include "djinni_wasm.hpp"

namespace djinni_generated {

struct NativeCppException : ::djinni::JsInterface<::testsuite::CppException, NativeCppException> {
    using CppType = std::shared_ptr<::testsuite::CppException>;
    using CppOptType = std::shared_ptr<::testsuite::CppException>;
    using JsType = em::val;
    using Boxed = NativeCppException;

    static CppType toCpp(JsType j) { return _fromJs(j); }
    static JsType fromCppOpt(const CppOptType& c) { return {_toJs(c)}; }
    static JsType fromCpp(const CppType& c) { return fromCppOpt(c); }

    static em::val cppProxyMethods();

    static int32_t throw_an_exception(const CppType& self);
    static em::val get();

};

}  // namespace djinni_generated
