//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/invoke/MethodType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodType")
#ifdef RESTRICT_OrgLukhnosPortmobileInvokeMethodType
#define INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodType 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodType 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileInvokeMethodType

#if !defined (OrgLukhnosPortmobileInvokeMethodType_) && (INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodType || defined(INCLUDE_OrgLukhnosPortmobileInvokeMethodType))
#define OrgLukhnosPortmobileInvokeMethodType_

@class IOSClass;

@interface OrgLukhnosPortmobileInvokeMethodType : NSObject {
 @public
  IOSClass *clazz_;
}

#pragma mark Public

- (IOSClass *)getType;

+ (OrgLukhnosPortmobileInvokeMethodType *)methodTypeWithIOSClass:(IOSClass *)clazz;

#pragma mark Package-Private

- (instancetype)initWithIOSClass:(IOSClass *)clazz;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileInvokeMethodType)

J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileInvokeMethodType, clazz_, IOSClass *)

FOUNDATION_EXPORT void OrgLukhnosPortmobileInvokeMethodType_initWithIOSClass_(OrgLukhnosPortmobileInvokeMethodType *self, IOSClass *clazz);

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodType *new_OrgLukhnosPortmobileInvokeMethodType_initWithIOSClass_(IOSClass *clazz) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodType *create_OrgLukhnosPortmobileInvokeMethodType_initWithIOSClass_(IOSClass *clazz);

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodType *OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(IOSClass *clazz);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileInvokeMethodType)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileInvokeMethodType")
