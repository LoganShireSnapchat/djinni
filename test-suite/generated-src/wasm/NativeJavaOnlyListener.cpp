// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from single_language_interfaces.djinni

#include "NativeJavaOnlyListener.hpp"  // my header

namespace djinni_generated {


EMSCRIPTEN_BINDINGS(java_only_listener) {
    em::class_<::testsuite::JavaOnlyListener>("JavaOnlyListener")
        .smart_ptr<std::shared_ptr<::testsuite::JavaOnlyListener>>("JavaOnlyListener")
        .function("nativeDestroy", &NativeJavaOnlyListener::nativeDestroy)
        ;
}

}  // namespace djinni_generated
