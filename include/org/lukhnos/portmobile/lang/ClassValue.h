//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/lang/ClassValue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileLangClassValue")
#ifdef RESTRICT_OrgLukhnosPortmobileLangClassValue
#define INCLUDE_ALL_OrgLukhnosPortmobileLangClassValue 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileLangClassValue 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileLangClassValue

#if !defined (OrgLukhnosPortmobileLangClassValue_) && (INCLUDE_ALL_OrgLukhnosPortmobileLangClassValue || defined(INCLUDE_OrgLukhnosPortmobileLangClassValue))
#define OrgLukhnosPortmobileLangClassValue_

@class IOSClass;
@protocol JavaUtilMap;

@interface OrgLukhnosPortmobileLangClassValue : NSObject {
 @public
  jboolean defaultCached_;
  id defaultCachedMember_;
  id<JavaUtilMap> cache_;
}

#pragma mark Public

- (id)getWithIOSClass:(IOSClass *)type;

- (void)removeWithIOSClass:(IOSClass *)type;

#pragma mark Protected

- (instancetype)init;

- (id)computeValueWithIOSClass:(IOSClass *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileLangClassValue)

J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileLangClassValue, defaultCachedMember_, id)
J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileLangClassValue, cache_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgLukhnosPortmobileLangClassValue_init(OrgLukhnosPortmobileLangClassValue *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileLangClassValue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileLangClassValue")
