//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/FileVisitResult.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/lukhnos/portmobile/file/FileVisitResult.h"

#if __has_feature(objc_arc)
#error "org/lukhnos/portmobile/file/FileVisitResult must not be compiled with ARC (-fobjc-arc)"
#endif

__attribute__((unused)) static void OrgLukhnosPortmobileFileFileVisitResult_initWithNSString_withInt_(OrgLukhnosPortmobileFileFileVisitResult *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgLukhnosPortmobileFileFileVisitResult)

OrgLukhnosPortmobileFileFileVisitResult *OrgLukhnosPortmobileFileFileVisitResult_values_[1];

@implementation OrgLukhnosPortmobileFileFileVisitResult

+ (OrgLukhnosPortmobileFileFileVisitResult *)CONTINUE {
  return JreEnum(OrgLukhnosPortmobileFileFileVisitResult, CONTINUE);
}

+ (IOSObjectArray *)values {
  return OrgLukhnosPortmobileFileFileVisitResult_values();
}

+ (OrgLukhnosPortmobileFileFileVisitResult *)valueOfWithNSString:(NSString *)name {
  return OrgLukhnosPortmobileFileFileVisitResult_valueOfWithNSString_(name);
}

- (OrgLukhnosPortmobileFileFileVisitResult_Enum)toNSEnum {
  return (OrgLukhnosPortmobileFileFileVisitResult_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgLukhnosPortmobileFileFileVisitResult;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFileFileVisitResult;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CONTINUE", "LOrgLukhnosPortmobileFileFileVisitResult;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgLukhnosPortmobileFileFileVisitResult, CONTINUE), "Ljava/lang/Enum<Lorg/lukhnos/portmobile/file/FileVisitResult;>;" };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileFileVisitResult = { "FileVisitResult", "org.lukhnos.portmobile.file", ptrTable, methods, fields, 7, 0x4011, 2, 1, -1, -1, -1, 3, -1 };
  return &_OrgLukhnosPortmobileFileFileVisitResult;
}

+ (void)initialize {
  if (self == [OrgLukhnosPortmobileFileFileVisitResult class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 1 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 1; i++) {
      ((void)(OrgLukhnosPortmobileFileFileVisitResult_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      OrgLukhnosPortmobileFileFileVisitResult_initWithNSString_withInt_(e, JreEnumConstantName(OrgLukhnosPortmobileFileFileVisitResult_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(OrgLukhnosPortmobileFileFileVisitResult)
  }
}

@end

void OrgLukhnosPortmobileFileFileVisitResult_initWithNSString_withInt_(OrgLukhnosPortmobileFileFileVisitResult *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgLukhnosPortmobileFileFileVisitResult_values() {
  OrgLukhnosPortmobileFileFileVisitResult_initialize();
  return [IOSObjectArray arrayWithObjects:OrgLukhnosPortmobileFileFileVisitResult_values_ count:1 type:OrgLukhnosPortmobileFileFileVisitResult_class_()];
}

OrgLukhnosPortmobileFileFileVisitResult *OrgLukhnosPortmobileFileFileVisitResult_valueOfWithNSString_(NSString *name) {
  OrgLukhnosPortmobileFileFileVisitResult_initialize();
  for (int i = 0; i < 1; i++) {
    OrgLukhnosPortmobileFileFileVisitResult *e = OrgLukhnosPortmobileFileFileVisitResult_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgLukhnosPortmobileFileFileVisitResult *OrgLukhnosPortmobileFileFileVisitResult_fromOrdinal(NSUInteger ordinal) {
  OrgLukhnosPortmobileFileFileVisitResult_initialize();
  if (ordinal >= 1) {
    return nil;
  }
  return OrgLukhnosPortmobileFileFileVisitResult_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileFileVisitResult)
