//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/invoke/MethodHandle.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle")
#ifdef RESTRICT_OrgLukhnosPortmobileInvokeMethodHandle
#define INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileInvokeMethodHandle
#ifdef INCLUDE_OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor
#define INCLUDE_OrgLukhnosPortmobileInvokeMethodHandle 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgLukhnosPortmobileInvokeMethodHandle_) && (INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle || defined(INCLUDE_OrgLukhnosPortmobileInvokeMethodHandle))
#define OrgLukhnosPortmobileInvokeMethodHandle_

@class OrgLukhnosPortmobileInvokeMethodType;

@interface OrgLukhnosPortmobileInvokeMethodHandle : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgLukhnosPortmobileInvokeMethodHandle *)asTypeWithOrgLukhnosPortmobileInvokeMethodType:(OrgLukhnosPortmobileInvokeMethodType *)newType;

- (id)invokeExact;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileInvokeMethodHandle)

FOUNDATION_EXPORT void OrgLukhnosPortmobileInvokeMethodHandle_init(OrgLukhnosPortmobileInvokeMethodHandle *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileInvokeMethodHandle)

#endif

#if !defined (OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_) && (INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle || defined(INCLUDE_OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor))
#define OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_

@class IOSClass;
@class OrgLukhnosPortmobileInvokeMethodHandle;
@class OrgLukhnosPortmobileInvokeMethodType;

@interface OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor : OrgLukhnosPortmobileInvokeMethodHandle {
 @public
  IOSClass *clazz_;
}

#pragma mark Public

- (OrgLukhnosPortmobileInvokeMethodHandle *)asTypeWithOrgLukhnosPortmobileInvokeMethodType:(OrgLukhnosPortmobileInvokeMethodType *)newType;

- (id)invokeExact;

#pragma mark Package-Private

- (instancetype __nonnull)initWithIOSClass:(IOSClass *)clazz;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor)

J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor, clazz_, IOSClass *)

FOUNDATION_EXPORT void OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_initWithIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor *self, IOSClass *clazz);

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor *new_OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_initWithIOSClass_(IOSClass *clazz) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor *create_OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_initWithIOSClass_(IOSClass *clazz);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodHandle")
