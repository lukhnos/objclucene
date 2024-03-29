//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ToStringUtils.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/util/ToStringUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/ToStringUtils must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilToStringUtils ()

- (instancetype)init;

@end

inline IOSCharArray *OrgApacheLuceneUtilToStringUtils_get_HEX(void);
static IOSCharArray *OrgApacheLuceneUtilToStringUtils_HEX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilToStringUtils, HEX, IOSCharArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilToStringUtils)

@implementation OrgApacheLuceneUtilToStringUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilToStringUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)boostWithFloat:(jfloat)boost {
  return OrgApacheLuceneUtilToStringUtils_boostWithFloat_(boost);
}

+ (void)byteArrayWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                             withByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(buffer, bytes);
}

+ (NSString *)longHexWithLong:(jlong)x {
  return OrgApacheLuceneUtilToStringUtils_longHexWithLong_(x);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(boostWithFloat:);
  methods[2].selector = @selector(byteArrayWithJavaLangStringBuilder:withByteArray:);
  methods[3].selector = @selector(longHexWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HEX", "[C", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "boost", "F", "byteArray", "LJavaLangStringBuilder;[B", "longHex", "J", &OrgApacheLuceneUtilToStringUtils_HEX };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilToStringUtils = { "ToStringUtils", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilToStringUtils;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilToStringUtils class]) {
    JreStrongAssign(&OrgApacheLuceneUtilToStringUtils_HEX, [@"0123456789abcdef" java_toCharArray]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilToStringUtils)
  }
}

@end

void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

NSString *OrgApacheLuceneUtilToStringUtils_boostWithFloat_(jfloat boost) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  if (boost != 1.0f) {
    return JreStrcat("C$", '^', JavaLangFloat_toStringWithFloat_(boost));
  }
  else return @"";
}

void OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(JavaLangStringBuilder *buffer, IOSByteArray *bytes) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(bytes))->size_; i++) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:@"b["])) appendWithInt:i])) appendWithNSString:@"]="])) appendWithInt:IOSByteArray_Get(bytes, i)];
    if (i < bytes->size_ - 1) {
      [buffer appendWithChar:','];
    }
  }
}

NSString *OrgApacheLuceneUtilToStringUtils_longHexWithLong_(jlong x) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  IOSCharArray *asHex = [IOSCharArray arrayWithLength:16];
  for (jint i = 16; --i >= 0; JreURShiftAssignLong(&x, 4)) {
    *IOSCharArray_GetRef(asHex, i) = IOSCharArray_Get(nil_chk(OrgApacheLuceneUtilToStringUtils_HEX), (jint) x & (jint) 0x0F);
  }
  return JreStrcat("$$", @"0x", [NSString java_stringWithCharacters:asHex]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilToStringUtils)
