// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from constant_enum.djinni

#include "NativeConstantWithEnum.hpp"  // my header

namespace djinni_generated {

djinni::swift::AnyValue NativeConstantWithEnum::fromCpp(const ::testsuite::ConstantWithEnum& c) {
    auto ret = std::make_shared<djinni::swift::CompositeValue>();
    return {ret};
}
::testsuite::ConstantWithEnum NativeConstantWithEnum::toCpp(const djinni::swift::AnyValue& s) {
    auto p = std::get<djinni::swift::CompositeValuePtr>(s);
    return ::testsuite::ConstantWithEnum();
}

} // namespace djinni_generated