// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from primitive_list.djinni

#include "NativePrimitiveList.hpp"  // my header

namespace djinni_generated {

djinni::swift::AnyValue NativePrimitiveList::fromCpp(const ::testsuite::PrimitiveList& c) {
    auto ret = std::make_shared<djinni::swift::CompositeValue>();
    ret->addValue(::djinni::swift::List<::djinni::swift::I64>::fromCpp(c.list));
    return {ret};
}
::testsuite::PrimitiveList NativePrimitiveList::toCpp(const djinni::swift::AnyValue& s) {
    auto p = std::get<djinni::swift::CompositeValuePtr>(s);
    return ::testsuite::PrimitiveList(::djinni::swift::List<::djinni::swift::I64>::toCpp(p->getValue(0)));
}

} // namespace djinni_generated