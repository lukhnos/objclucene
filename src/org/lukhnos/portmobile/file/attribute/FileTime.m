//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/attribute/FileTime.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/lukhnos/portmobile/file/attribute/FileTime.h"

@implementation OrgLukhnosPortmobileFileAttributeFileTime

- (instancetype)initWithLong:(jlong)time {
  OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(self, time);
  return self;
}

- (NSString *)description {
  return JavaLangLong_toStringWithLong_(time_);
}

- (jboolean)isEqual:(id)obj {
  return ([obj isKindOfClass:[OrgLukhnosPortmobileFileAttributeFileTime class]]) ? [self compareToWithId:(OrgLukhnosPortmobileFileAttributeFileTime *) check_class_cast(obj, [OrgLukhnosPortmobileFileAttributeFileTime class])] == 0 : NO;
}

- (jint)compareToWithId:(OrgLukhnosPortmobileFileAttributeFileTime *)o {
  check_class_cast(o, [OrgLukhnosPortmobileFileAttributeFileTime class]);
  if (((OrgLukhnosPortmobileFileAttributeFileTime *) nil_chk(o))->time_ < time_) {
    return -1;
  }
  else if (o->time_ == time_) {
    return 0;
  }
  return 1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:", "FileTime", NULL, 0x0, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "time_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileAttributeFileTime = { 2, "FileTime", "org.lukhnos.portmobile.file.attribute", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/lukhnos/portmobile/file/attribute/FileTime;>;" };
  return &_OrgLukhnosPortmobileFileAttributeFileTime;
}

@end

void OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(OrgLukhnosPortmobileFileAttributeFileTime *self, jlong time) {
  NSObject_init(self);
  self->time_ = time;
}

OrgLukhnosPortmobileFileAttributeFileTime *new_OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(jlong time) {
  OrgLukhnosPortmobileFileAttributeFileTime *self = [OrgLukhnosPortmobileFileAttributeFileTime alloc];
  OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(self, time);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileAttributeFileTime)
