//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/util/Objects.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileUtilObjects")
#ifdef RESTRICT_OrgLukhnosPortmobileUtilObjects
#define INCLUDE_ALL_OrgLukhnosPortmobileUtilObjects 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileUtilObjects 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileUtilObjects

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgLukhnosPortmobileUtilObjects_) && (INCLUDE_ALL_OrgLukhnosPortmobileUtilObjects || defined(INCLUDE_OrgLukhnosPortmobileUtilObjects))
#define OrgLukhnosPortmobileUtilObjects_

@class IOSObjectArray;

@interface OrgLukhnosPortmobileUtilObjects : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (jboolean)equalsWithId:(id)a
                  withId:(id)b;

+ (jint)hash__WithNSObjectArray:(IOSObjectArray *)values;

+ (jint)hashCodeWithId:(id)o;

+ (id)requireNonNullWithId:(id)obj;

+ (id)requireNonNullWithId:(id)obj
              withNSString:(NSString *)msg;

+ (NSString *)toStringWithId:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileUtilObjects)

FOUNDATION_EXPORT void OrgLukhnosPortmobileUtilObjects_init(OrgLukhnosPortmobileUtilObjects *self);

FOUNDATION_EXPORT OrgLukhnosPortmobileUtilObjects *new_OrgLukhnosPortmobileUtilObjects_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosPortmobileUtilObjects *create_OrgLukhnosPortmobileUtilObjects_init(void);

FOUNDATION_EXPORT id OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(id obj);

FOUNDATION_EXPORT id OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(id obj, NSString *msg);

FOUNDATION_EXPORT jint OrgLukhnosPortmobileUtilObjects_hashCodeWithId_(id o);

FOUNDATION_EXPORT jint OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(IOSObjectArray *values);

FOUNDATION_EXPORT NSString *OrgLukhnosPortmobileUtilObjects_toStringWithId_(id o);

FOUNDATION_EXPORT jboolean OrgLukhnosPortmobileUtilObjects_equalsWithId_withId_(id a, id b);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileUtilObjects)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileUtilObjects")
