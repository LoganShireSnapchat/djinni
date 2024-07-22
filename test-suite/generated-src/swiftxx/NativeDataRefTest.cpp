// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from data_ref_view.djinni

#include "NativeDataRefTest.hpp"  // my header
#include "Data_swift.hpp"

namespace djinni_generated {

djinni::swift::AnyValue DataRefTest_sendData(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto _data = ::djinni::swift::DataRefAdaptor::toCpp(params->getValue(1));
    inst->sendData(std::move(_data));
    return djinni::swift::makeVoidValue();
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_retriveAsBin(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto ret = inst->retriveAsBin();
    return ::djinni::swift::Binary::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_sendMutableData(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto _data = ::djinni::swift::DataRefAdaptor::toCpp(params->getValue(1));
    inst->sendMutableData(std::move(_data));
    return djinni::swift::makeVoidValue();
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_generateData(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto ret = inst->generateData();
    return ::djinni::swift::DataRefAdaptor::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_dataFromVec(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto ret = inst->dataFromVec();
    return ::djinni::swift::DataRefAdaptor::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_dataFromStr(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto ret = inst->dataFromStr();
    return ::djinni::swift::DataRefAdaptor::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_sendDataView(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto _data = ::djinni::swift::DataViewAdaptor::toCpp(params->getValue(1));
    auto ret = inst->sendDataView(std::move(_data));
    return ::djinni::swift::Binary::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_recvDataView(const djinni::swift::ParameterList* params) try {
    auto inst = NativeDataRefTest::toCpp(params->getValue(0));
    auto ret = inst->recvDataView();
    return ::djinni::swift::DataViewAdaptor::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}
djinni::swift::AnyValue DataRefTest_create(const djinni::swift::ParameterList* params) try {
    auto ret = ::testsuite::DataRefTest::create();
    return ::djinni_generated::NativeDataRefTest::fromCpp(ret);
}
catch (const std::exception& e) {
    return {djinni::swift::ErrorValue{ e.what(), std::current_exception()}};
}

} // namespace djinni_generated