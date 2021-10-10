// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from array.djinni

#include "NativeTestArray.hpp"  // my header
#include "NativeVec2.hpp"

namespace djinni_generated {

em::val NativeTestArray::cppProxyMethods() {
    static const em::val methods = em::val::array(std::vector<std::string> {
        "testStringArray",
        "testIntArray",
        "testRecordArray",
        "testArrayOfArray",
    });
    return methods;
}

em::val NativeTestArray::testStringArray(const em::val& w_a) {
    return ::djinni::Array<::djinni::String>::fromCpp(::testsuite::TestArray::testStringArray(::djinni::Array<::djinni::String>::toCpp(w_a)));
}
em::val NativeTestArray::testIntArray(const em::val& w_a) {
    return ::djinni::Array<::djinni::I32>::fromCpp(::testsuite::TestArray::testIntArray(::djinni::Array<::djinni::I32>::toCpp(w_a)));
}
em::val NativeTestArray::testRecordArray(const em::val& w_a) {
    return ::djinni::Array<::djinni_generated::NativeVec2>::fromCpp(::testsuite::TestArray::testRecordArray(::djinni::Array<::djinni_generated::NativeVec2>::toCpp(w_a)));
}
em::val NativeTestArray::testArrayOfArray(const em::val& w_a) {
    return ::djinni::Array<::djinni::Array<::djinni::I32>>::fromCpp(::testsuite::TestArray::testArrayOfArray(::djinni::Array<::djinni::Array<::djinni::I32>>::toCpp(w_a)));
}

EMSCRIPTEN_BINDINGS(test_array) {
    em::class_<::testsuite::TestArray>("TestArray")
        .smart_ptr<std::shared_ptr<::testsuite::TestArray>>("TestArray")
        .function("nativeDestroy", &NativeTestArray::nativeDestroy)
        .class_function("testStringArray", NativeTestArray::testStringArray)
        .class_function("testIntArray", NativeTestArray::testIntArray)
        .class_function("testRecordArray", NativeTestArray::testRecordArray)
        .class_function("testArrayOfArray", NativeTestArray::testArrayOfArray)
        ;
}

}  // namespace djinni_generated
