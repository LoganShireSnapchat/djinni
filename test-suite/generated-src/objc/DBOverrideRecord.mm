// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from optionals.djinni

#import "DBOverrideRecord.h"


@implementation DBOverrideRecord

- (nonnull instancetype)initWithOptInt:(nullable NSNumber *)optInt
                              optFloat:(nullable NSNumber *)optFloat
                                reqInt:(int32_t)reqInt
                             optDouble:(nullable NSNumber *)optDouble
{
    if (self = [super init]) {
        _optInt = optInt;
        _optFloat = optFloat;
        _reqInt = reqInt;
        _optDouble = optDouble;
    }
    return self;
}

+ (nonnull instancetype)overrideRecordWithOptInt:(nullable NSNumber *)optInt
                                        optFloat:(nullable NSNumber *)optFloat
                                          reqInt:(int32_t)reqInt
                                       optDouble:(nullable NSNumber *)optDouble
{
    return [[self alloc] initWithOptInt:optInt
                               optFloat:optFloat
                                 reqInt:reqInt
                              optDouble:optDouble];
}

#ifndef DJINNI_DISABLE_DESCRIPTION_METHODS
- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p optInt:%@ optFloat:%@ reqInt:%@ optDouble:%@>", self.class, (void *)self, self.optInt, self.optFloat, @(self.reqInt), self.optDouble];
}

#endif
@end