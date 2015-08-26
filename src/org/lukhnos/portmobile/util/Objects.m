//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/util/Objects.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Arrays.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@implementation OrgLukhnosPortmobileUtilObjects

+ (id)requireNonNullWithId:(id)obj {
  return OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(obj);
}

+ (id)requireNonNullWithId:(id)obj
              withNSString:(NSString *)msg {
  return OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(obj, msg);
}

+ (jint)hashCodeWithId:(id)o {
  return OrgLukhnosPortmobileUtilObjects_hashCodeWithId_(o);
}

+ (jint)hash__WithNSObjectArray:(IOSObjectArray *)values {
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(values);
}

+ (NSString *)toStringWithId:(id)o {
  return OrgLukhnosPortmobileUtilObjects_toStringWithId_(o);
}

+ (jboolean)equalsWithId:(id)a
                  withId:(id)b {
  return OrgLukhnosPortmobileUtilObjects_equalsWithId_withId_(a, b);
}

- (instancetype)init {
  OrgLukhnosPortmobileUtilObjects_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requireNonNullWithId:", "requireNonNull", "TT;", 0x9, NULL, "<T:Ljava/lang/Object;>(TT;)TT;" },
    { "requireNonNullWithId:withNSString:", "requireNonNull", "TT;", 0x9, NULL, "<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;" },
    { "hashCodeWithId:", "hashCode", "I", 0x9, NULL, NULL },
    { "hash__WithNSObjectArray:", "hash", "I", 0x89, NULL, NULL },
    { "toStringWithId:", "toString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "equalsWithId:withId:", "equals", "Z", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileUtilObjects = { 2, "Objects", "org.lukhnos.portmobile.util", NULL, 0x1, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosPortmobileUtilObjects;
}

@end

id OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(id obj) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  if (obj == nil) {
    @throw [new_JavaLangNullPointerException_init() autorelease];
  }
  return obj;
}

id OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(id obj, NSString *msg) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  if (obj == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(msg) autorelease];
  }
  return obj;
}

jint OrgLukhnosPortmobileUtilObjects_hashCodeWithId_(id o) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  return o == nil ? 0 : ((jint) [o hash]);
}

jint OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(IOSObjectArray *values) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  return JavaUtilArrays_hashCodeWithNSObjectArray_(values);
}

NSString *OrgLukhnosPortmobileUtilObjects_toStringWithId_(id o) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  return o == nil ? @"null" : [o description];
}

jboolean OrgLukhnosPortmobileUtilObjects_equalsWithId_withId_(id a, id b) {
  OrgLukhnosPortmobileUtilObjects_initialize();
  if (a == nil) {
    return b == nil ? YES : NO;
  }
  return b == nil ? NO : [nil_chk(a) isEqual:b];
}

void OrgLukhnosPortmobileUtilObjects_init(OrgLukhnosPortmobileUtilObjects *self) {
  NSObject_init(self);
}

OrgLukhnosPortmobileUtilObjects *new_OrgLukhnosPortmobileUtilObjects_init() {
  OrgLukhnosPortmobileUtilObjects *self = [OrgLukhnosPortmobileUtilObjects alloc];
  OrgLukhnosPortmobileUtilObjects_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileUtilObjects)
