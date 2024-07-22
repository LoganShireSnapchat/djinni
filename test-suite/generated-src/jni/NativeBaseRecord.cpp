// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from optionals.djinni

#include "NativeBaseRecord.hpp"  // my header
#include "Marshal.hpp"

namespace djinni_generated {

NativeBaseRecord::NativeBaseRecord() = default;

NativeBaseRecord::~NativeBaseRecord() = default;

auto NativeBaseRecord::fromCpp(JNIEnv* jniEnv, const CppType& c) -> ::djinni::LocalRef<JniType> {
    const auto& data = ::djinni::JniClass<NativeBaseRecord>::get();
    auto r = ::djinni::LocalRef<JniType>{jniEnv->NewObject(data.clazz.get(), data.jconstructor,
                                                           ::djinni::get(::djinni::I32::fromCpp(jniEnv, c.val)))};
    ::djinni::jniExceptionCheck(jniEnv);
    return r;
}

auto NativeBaseRecord::toCpp(JNIEnv* jniEnv, JniType j) -> CppType {
    ::djinni::JniLocalScope jscope(jniEnv, 2);
    assert(j != nullptr);
    const auto& data = ::djinni::JniClass<NativeBaseRecord>::get();
    return {::djinni::I32::toCpp(jniEnv, jniEnv->GetIntField(j, data.field_mVal))};
}

} // namespace djinni_generated