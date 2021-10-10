// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from djinni_perf_benchmark.djinni

#pragma once

#include "DataRef.hpp"
#include "DataView.hpp"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace snapchat { namespace djinni { namespace benchmark {

class ObjectNative;
class ObjectPlatform;
enum class EnumSixValue;
struct RecordSixInt;

/** djinni_perf_benchmark: This interface will be implemented in C++ and can be called from any language. */
class DjinniPerfBenchmark {
public:
    virtual ~DjinniPerfBenchmark() {}

    static std::shared_ptr<DjinniPerfBenchmark> getInstance();

    virtual int64_t cppTests() = 0;

    virtual void baseline() = 0;

    virtual void argString(const std::string & s) = 0;

    virtual void argBinary(const std::vector<uint8_t> & b) = 0;

    virtual void argDataRef(const ::snapchat::djinni::DataRef & r) = 0;

    virtual void argDataView(const ::snapchat::djinni::DataView & d) = 0;

    virtual void argEnumSixValue(EnumSixValue e) = 0;

    virtual void argRecordSixInt(const RecordSixInt & r) = 0;

    virtual void argListInt(const std::vector<int64_t> & v) = 0;

    virtual void argArrayInt(const std::vector<int64_t> & v) = 0;

    virtual void argObject(const std::shared_ptr<ObjectPlatform> & c) = 0;

    virtual void argListObject(const std::vector<std::shared_ptr<ObjectPlatform>> & l) = 0;

    virtual void argListRecord(const std::vector<RecordSixInt> & l) = 0;

    virtual void argArrayRecord(const std::vector<RecordSixInt> & a) = 0;

    virtual int64_t returnInt(int64_t i) = 0;

    virtual std::string returnString(int32_t size) = 0;

    virtual std::vector<uint8_t> returnBinary(int32_t size) = 0;

    virtual std::shared_ptr<ObjectNative> returnObject() = 0;

    virtual std::vector<int64_t> returnListInt(int32_t size) = 0;

    virtual std::vector<int64_t> returnArrayInt(int32_t size) = 0;

    virtual std::vector<std::shared_ptr<ObjectNative>> returnListObject(int32_t size) = 0;

    virtual std::vector<RecordSixInt> returnListRecord(int32_t size) = 0;

    virtual std::vector<RecordSixInt> returnArrayRecord(int32_t size) = 0;

    virtual std::string roundTripString(const std::string & s) = 0;
};

} } }  // namespace snapchat::djinni::benchmark
