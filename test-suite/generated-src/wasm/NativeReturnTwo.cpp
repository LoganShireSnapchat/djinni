// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from multiple_inheritance.djinni

#include "NativeReturnTwo.hpp"  // my header

namespace djinni_generated {

em::val NativeReturnTwo::cppProxyMethods() {
    static const em::val methods = em::val::array(std::vector<std::string> {
        "getInstance",
        "returnTwo",
    });
    return methods;
}

em::val NativeReturnTwo::get_instance() {
    return ::djinni_generated::NativeReturnTwo::fromCpp(::testsuite::ReturnTwo::get_instance());
}
int8_t NativeReturnTwo::return_two(const CppType& self) {
    return ::djinni::I8::fromCpp(self->return_two());
}

EMSCRIPTEN_BINDINGS(return_two) {
    em::class_<::testsuite::ReturnTwo>("ReturnTwo")
        .smart_ptr<std::shared_ptr<::testsuite::ReturnTwo>>("ReturnTwo")
        .function("nativeDestroy", &NativeReturnTwo::nativeDestroy)
        .class_function("getInstance", NativeReturnTwo::get_instance)
        .function("returnTwo", NativeReturnTwo::return_two)
        ;
}

}  // namespace djinni_generated
