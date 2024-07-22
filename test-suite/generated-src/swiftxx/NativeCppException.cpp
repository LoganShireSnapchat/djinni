// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from exception.djinni

#include "NativeCppException.hpp"  // my header
#include "NativeThrowingInterface.hpp"

namespace djinni_generated {

djinni::swift::AnyValue CppException_throwAnException(const djinni::swift::ParameterList* params) try {
    auto inst = NativeCppException::toCpp(params->getValue(0));
    auto ret = inst->throw_an_exception();
    return ::djinni::swift::I32::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue CppException_callThrowingInterface(const djinni::swift::ParameterList* params) try {
    auto inst = NativeCppException::toCpp(params->getValue(0));
    auto _cb = ::djinni_generated::NativeThrowingInterface::toCpp(params->getValue(1));
    auto ret = inst->call_throwing_interface(std::move(_cb));
    return ::djinni::swift::I32::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue CppException_callThrowingAndCatch(const djinni::swift::ParameterList* params) try {
    auto inst = NativeCppException::toCpp(params->getValue(0));
    auto _cb = ::djinni_generated::NativeThrowingInterface::toCpp(params->getValue(1));
    auto ret = inst->call_throwing_and_catch(std::move(_cb));
    return ::djinni::swift::String::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue CppException_get(const djinni::swift::ParameterList* params) try {
    auto ret = ::testsuite::CppException::get();
    return ::djinni_generated::NativeCppException::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}

} // namespace djinni_generated