//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Constants.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/StringTokenizer.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/Version.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/Constants must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilConstants ()

- (instancetype)init;

@end

inline jint OrgApacheLuceneUtilConstants_get_JVM_MAJOR_VERSION(void);
static jint OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JVM_MAJOR_VERSION, jint)

inline jint OrgApacheLuceneUtilConstants_get_JVM_MINOR_VERSION(void);
static jint OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JVM_MINOR_VERSION, jint)

__attribute__((unused)) static void OrgApacheLuceneUtilConstants_init(OrgApacheLuceneUtilConstants *self);

__attribute__((unused)) static OrgApacheLuceneUtilConstants *new_OrgApacheLuceneUtilConstants_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilConstants *create_OrgApacheLuceneUtilConstants_init(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilConstants__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilConstants__Annotations$1(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilConstants)

NSString *OrgApacheLuceneUtilConstants_JVM_VENDOR;
NSString *OrgApacheLuceneUtilConstants_JVM_VERSION;
NSString *OrgApacheLuceneUtilConstants_JVM_NAME;
NSString *OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION;
NSString *OrgApacheLuceneUtilConstants_JAVA_VERSION;
NSString *OrgApacheLuceneUtilConstants_OS_NAME;
jboolean OrgApacheLuceneUtilConstants_LINUX;
jboolean OrgApacheLuceneUtilConstants_WINDOWS;
jboolean OrgApacheLuceneUtilConstants_SUN_OS;
jboolean OrgApacheLuceneUtilConstants_MAC_OS_X;
jboolean OrgApacheLuceneUtilConstants_FREE_BSD;
NSString *OrgApacheLuceneUtilConstants_OS_ARCH;
NSString *OrgApacheLuceneUtilConstants_OS_VERSION;
NSString *OrgApacheLuceneUtilConstants_JAVA_VENDOR;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_64BIT;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9;
NSString *OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION;
NSString *OrgApacheLuceneUtilConstants_LUCENE_VERSION;

@implementation OrgApacheLuceneUtilConstants

+ (NSString *)JVM_VENDOR {
  return OrgApacheLuceneUtilConstants_JVM_VENDOR;
}

+ (NSString *)JVM_VERSION {
  return OrgApacheLuceneUtilConstants_JVM_VERSION;
}

+ (NSString *)JVM_NAME {
  return OrgApacheLuceneUtilConstants_JVM_NAME;
}

+ (NSString *)JVM_SPEC_VERSION {
  return OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION;
}

+ (NSString *)JAVA_VERSION {
  return OrgApacheLuceneUtilConstants_JAVA_VERSION;
}

+ (NSString *)OS_NAME {
  return OrgApacheLuceneUtilConstants_OS_NAME;
}

+ (jboolean)LINUX {
  return OrgApacheLuceneUtilConstants_LINUX;
}

+ (jboolean)WINDOWS {
  return OrgApacheLuceneUtilConstants_WINDOWS;
}

+ (jboolean)SUN_OS {
  return OrgApacheLuceneUtilConstants_SUN_OS;
}

+ (jboolean)MAC_OS_X {
  return OrgApacheLuceneUtilConstants_MAC_OS_X;
}

+ (jboolean)FREE_BSD {
  return OrgApacheLuceneUtilConstants_FREE_BSD;
}

+ (NSString *)OS_ARCH {
  return OrgApacheLuceneUtilConstants_OS_ARCH;
}

+ (NSString *)OS_VERSION {
  return OrgApacheLuceneUtilConstants_OS_VERSION;
}

+ (NSString *)JAVA_VENDOR {
  return OrgApacheLuceneUtilConstants_JAVA_VENDOR;
}

+ (jboolean)JRE_IS_64BIT {
  return OrgApacheLuceneUtilConstants_JRE_IS_64BIT;
}

+ (jboolean)JRE_IS_MINIMUM_JAVA8 {
  return OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8;
}

+ (jboolean)JRE_IS_MINIMUM_JAVA9 {
  return OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9;
}

+ (NSString *)LUCENE_MAIN_VERSION {
  return OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION;
}

+ (NSString *)LUCENE_VERSION {
  return OrgApacheLuceneUtilConstants_LUCENE_VERSION;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilConstants_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "JVM_VENDOR", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "JVM_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
    { "JVM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "JVM_SPEC_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "JAVA_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "OS_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "LINUX", "Z", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "WINDOWS", "Z", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "SUN_OS", "Z", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "MAC_OS_X", "Z", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "FREE_BSD", "Z", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "OS_ARCH", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "OS_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "JAVA_VENDOR", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "JVM_MAJOR_VERSION", "I", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "JVM_MINOR_VERSION", "I", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "JRE_IS_64BIT", "Z", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "JRE_IS_MINIMUM_JAVA8", "Z", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "JRE_IS_MINIMUM_JAVA9", "Z", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "LUCENE_MAIN_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, 20 },
    { "LUCENE_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, 22 },
  };
  static const void *ptrTable[] = { &OrgApacheLuceneUtilConstants_JVM_VENDOR, &OrgApacheLuceneUtilConstants_JVM_VERSION, &OrgApacheLuceneUtilConstants_JVM_NAME, &OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, &OrgApacheLuceneUtilConstants_JAVA_VERSION, &OrgApacheLuceneUtilConstants_OS_NAME, &OrgApacheLuceneUtilConstants_LINUX, &OrgApacheLuceneUtilConstants_WINDOWS, &OrgApacheLuceneUtilConstants_SUN_OS, &OrgApacheLuceneUtilConstants_MAC_OS_X, &OrgApacheLuceneUtilConstants_FREE_BSD, &OrgApacheLuceneUtilConstants_OS_ARCH, &OrgApacheLuceneUtilConstants_OS_VERSION, &OrgApacheLuceneUtilConstants_JAVA_VENDOR, &OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION, &OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION, &OrgApacheLuceneUtilConstants_JRE_IS_64BIT, &OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8, &OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9, &OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION, (void *)&OrgApacheLuceneUtilConstants__Annotations$0, &OrgApacheLuceneUtilConstants_LUCENE_VERSION, (void *)&OrgApacheLuceneUtilConstants__Annotations$1 };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilConstants = { "Constants", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 1, 21, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilConstants;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilConstants class]) {
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VENDOR, JavaLangSystem_getPropertyWithNSString_(@"java.vm.vendor"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.vm.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_NAME, JavaLangSystem_getPropertyWithNSString_(@"java.vm.name"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.specification.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_NAME, JavaLangSystem_getPropertyWithNSString_(@"os.name"));
    OrgApacheLuceneUtilConstants_LINUX = [((NSString *) nil_chk(OrgApacheLuceneUtilConstants_OS_NAME)) java_hasPrefix:@"Linux"];
    OrgApacheLuceneUtilConstants_WINDOWS = [OrgApacheLuceneUtilConstants_OS_NAME java_hasPrefix:@"Windows"];
    OrgApacheLuceneUtilConstants_SUN_OS = [OrgApacheLuceneUtilConstants_OS_NAME java_hasPrefix:@"SunOS"];
    OrgApacheLuceneUtilConstants_MAC_OS_X = [OrgApacheLuceneUtilConstants_OS_NAME java_hasPrefix:@"Mac OS X"];
    OrgApacheLuceneUtilConstants_FREE_BSD = [OrgApacheLuceneUtilConstants_OS_NAME java_hasPrefix:@"FreeBSD"];
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_ARCH, JavaLangSystem_getPropertyWithNSString_(@"os.arch"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_VERSION, JavaLangSystem_getPropertyWithNSString_(@"os.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VENDOR, JavaLangSystem_getPropertyWithNSString_(@"java.vendor"));
    {
      JavaUtilStringTokenizer *st = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, @".");
      OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION = JavaLangInteger_parseIntWithNSString_([st nextToken]);
      if ([st hasMoreTokens]) {
        OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION = JavaLangInteger_parseIntWithNSString_([st nextToken]);
      }
      else {
        OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION = 0;
      }
      jboolean is64Bit = false;
      NSString *x = JavaLangSystem_getPropertyWithNSString_(@"sun.arch.data.model");
      if (x != nil) {
        is64Bit = [x java_contains:@"64"];
      }
      else {
        if (OrgApacheLuceneUtilConstants_OS_ARCH != nil && [OrgApacheLuceneUtilConstants_OS_ARCH java_contains:@"64"]) {
          is64Bit = true;
        }
        else {
          is64Bit = false;
        }
      }
      OrgApacheLuceneUtilConstants_JRE_IS_64BIT = is64Bit;
    }
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8 = (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION > 1 || (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION == 1 && OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION >= 8));
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9 = (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION > 1 || (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION == 1 && OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION >= 9));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION, [((OrgApacheLuceneUtilVersion *) nil_chk(JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST))) description]);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_VERSION, [JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST) description]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilConstants)
  }
}

@end

void OrgApacheLuceneUtilConstants_init(OrgApacheLuceneUtilConstants *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilConstants *new_OrgApacheLuceneUtilConstants_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilConstants, init)
}

OrgApacheLuceneUtilConstants *create_OrgApacheLuceneUtilConstants_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilConstants, init)
}

IOSObjectArray *OrgApacheLuceneUtilConstants__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilConstants__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilConstants)
