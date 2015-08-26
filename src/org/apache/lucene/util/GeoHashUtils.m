//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoHashUtils.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/GeoHashUtils.h"
#include "org/apache/lucene/util/GeoUtils.h"

#define OrgApacheLuceneUtilGeoHashUtils_MORTON_OFFSET 4

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoHashUtils, MORTON_OFFSET, jshort)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilGeoHashUtils)

IOSCharArray *OrgApacheLuceneUtilGeoHashUtils_BASE_32_;
NSString *OrgApacheLuceneUtilGeoHashUtils_BASE_32_STRING_;

@implementation OrgApacheLuceneUtilGeoHashUtils

+ (jlong)longEncodeWithDouble:(jdouble)lon
                   withDouble:(jdouble)lat
                      withInt:(jint)level {
  return OrgApacheLuceneUtilGeoHashUtils_longEncodeWithDouble_withDouble_withInt_(lon, lat, level);
}

+ (jlong)longEncodeWithNSString:(NSString *)hash_ {
  return OrgApacheLuceneUtilGeoHashUtils_longEncodeWithNSString_(hash_);
}

+ (NSString *)stringEncodeWithLong:(jlong)geoHashLong {
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithLong_(geoHashLong);
}

+ (NSString *)stringEncodeWithDouble:(jdouble)lon
                          withDouble:(jdouble)lat {
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_(lon, lat);
}

+ (NSString *)stringEncodeWithDouble:(jdouble)lon
                          withDouble:(jdouble)lat
                             withInt:(jint)level {
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_withInt_(lon, lat, level);
}

+ (NSString *)stringEncodeFromMortonLongWithLong:(jlong)hashedVal {
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeFromMortonLongWithLong_(hashedVal);
}

+ (NSString *)stringEncodeFromMortonLongWithLong:(jlong)hashedVal
                                         withInt:(jint)level {
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeFromMortonLongWithLong_withInt_(hashedVal, level);
}

+ (jlong)mortonEncodeWithNSString:(NSString *)hash_ {
  return OrgApacheLuceneUtilGeoHashUtils_mortonEncodeWithNSString_(hash_);
}

+ (jlong)mortonEncodeWithLong:(jlong)geoHashLong {
  return OrgApacheLuceneUtilGeoHashUtils_mortonEncodeWithLong_(geoHashLong);
}

- (instancetype)init {
  OrgApacheLuceneUtilGeoHashUtils_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilGeoHashUtils class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilGeoHashUtils_BASE_32_, [IOSCharArray newArrayWithChars:(jchar[]){ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' } count:32]);
    JreStrongAssign(&OrgApacheLuceneUtilGeoHashUtils_BASE_32_STRING_, [NSString stringWithCharacters:OrgApacheLuceneUtilGeoHashUtils_BASE_32_]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilGeoHashUtils)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "longEncodeWithDouble:withDouble:withInt:", "longEncode", "J", 0x19, NULL, NULL },
    { "longEncodeWithNSString:", "longEncode", "J", 0x19, NULL, NULL },
    { "stringEncodeWithLong:", "stringEncode", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "stringEncodeWithDouble:withDouble:", "stringEncode", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "stringEncodeWithDouble:withDouble:withInt:", "stringEncode", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "stringEncodeFromMortonLongWithLong:", "stringEncodeFromMortonLong", "Ljava.lang.String;", 0x19, "Ljava.lang.Exception;", NULL },
    { "stringEncodeFromMortonLongWithLong:withInt:", "stringEncodeFromMortonLong", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "mortonEncodeWithNSString:", "mortonEncode", "J", 0x19, NULL, NULL },
    { "mortonEncodeWithLong:", "mortonEncode", "J", 0x19, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_32_", NULL, 0x19, "[C", &OrgApacheLuceneUtilGeoHashUtils_BASE_32_, NULL, .constantValue.asLong = 0 },
    { "BASE_32_STRING_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilGeoHashUtils_BASE_32_STRING_, NULL, .constantValue.asLong = 0 },
    { "PRECISION", "PRECISION", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilGeoHashUtils_PRECISION },
    { "MORTON_OFFSET", "MORTON_OFFSET", 0x1a, "S", NULL, NULL, .constantValue.asShort = OrgApacheLuceneUtilGeoHashUtils_MORTON_OFFSET },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilGeoHashUtils = { 2, "GeoHashUtils", "org.apache.lucene.util", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilGeoHashUtils;
}

@end

jlong OrgApacheLuceneUtilGeoHashUtils_longEncodeWithDouble_withDouble_withInt_(jdouble lon, jdouble lat, jint level) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jshort msf = (jshort) (((12 - level) * 5) + OrgApacheLuceneUtilGeoHashUtils_MORTON_OFFSET);
  return (JreLShift64((JreURShift64(OrgApacheLuceneUtilBitUtil_flipFlopWithLong_([((JavaLangLong *) nil_chk(OrgApacheLuceneUtilGeoUtils_mortonHashWithDouble_withDouble_(lon, lat))) longLongValue]), msf)), 4)) | level;
}

jlong OrgApacheLuceneUtilGeoHashUtils_longEncodeWithNSString_(NSString *hash_) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jint level = ((jint) [((NSString *) nil_chk(hash_)) length]) - 1;
  jlong b;
  jlong l = 0LL;
  {
    IOSCharArray *a__ = [hash_ toCharArray];
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      b = (jlong) ([((NSString *) nil_chk(OrgApacheLuceneUtilGeoHashUtils_BASE_32_STRING_)) indexOf:c]);
      l |= (JreLShift64(b, (level-- * 5)));
    }
  }
  return (JreLShift64(l, 4)) | ((jint) [hash_ length]);
}

NSString *OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithLong_(jlong geoHashLong) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jint level = (jint) geoHashLong & 15;
  JreURShiftAssignLong(&geoHashLong, 4);
  IOSCharArray *chars = [IOSCharArray arrayWithLength:level];
  do {
    *IOSCharArray_GetRef(chars, --level) = IOSCharArray_Get(nil_chk(OrgApacheLuceneUtilGeoHashUtils_BASE_32_), (jint) (geoHashLong & 31LL));
    JreURShiftAssignLong(&geoHashLong, 5);
  }
  while (level > 0);
  return [NSString stringWithCharacters:chars];
}

NSString *OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_(jdouble lon, jdouble lat) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_withInt_(lon, lat, 12);
}

NSString *OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_withInt_(jdouble lon, jdouble lat, jint level) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jlong hashedVal = OrgApacheLuceneUtilBitUtil_flipFlopWithLong_([((JavaLangLong *) nil_chk(OrgApacheLuceneUtilGeoUtils_mortonHashWithDouble_withDouble_(lon, lat))) longLongValue]);
  JavaLangStringBuilder *geoHash = [new_JavaLangStringBuilder_init() autorelease];
  jshort precision = 0;
  jshort msf = (JreLShift32(OrgApacheLuceneUtilGeoUtils_BITS, 1)) - 5;
  jlong mask = JreLShift64(31LL, msf);
  do {
    [geoHash appendWithChar:IOSCharArray_Get(nil_chk(OrgApacheLuceneUtilGeoHashUtils_BASE_32_), (jint) (JreURShift64((mask & hashedVal), (msf - (precision * 5)))))];
    JreURShiftAssignLong(&mask, 5);
  }
  while (++precision < level);
  return [geoHash description];
}

NSString *OrgApacheLuceneUtilGeoHashUtils_stringEncodeFromMortonLongWithLong_(jlong hashedVal) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  return OrgApacheLuceneUtilGeoHashUtils_stringEncodeWithDouble_withDouble_(hashedVal, OrgApacheLuceneUtilGeoHashUtils_PRECISION);
}

NSString *OrgApacheLuceneUtilGeoHashUtils_stringEncodeFromMortonLongWithLong_withInt_(jlong hashedVal, jint level) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  hashedVal = OrgApacheLuceneUtilBitUtil_flipFlopWithLong_(hashedVal);
  JavaLangStringBuilder *geoHash = [new_JavaLangStringBuilder_init() autorelease];
  jshort precision = 0;
  jshort msf = (JreLShift32(OrgApacheLuceneUtilGeoUtils_BITS, 1)) - 5;
  jlong mask = JreLShift64(31LL, msf);
  do {
    [geoHash appendWithChar:IOSCharArray_Get(nil_chk(OrgApacheLuceneUtilGeoHashUtils_BASE_32_), (jint) (JreURShift64((mask & hashedVal), (msf - (precision * 5)))))];
    JreURShiftAssignLong(&mask, 5);
  }
  while (++precision < level);
  return [geoHash description];
}

jlong OrgApacheLuceneUtilGeoHashUtils_mortonEncodeWithNSString_(NSString *hash_) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jint level = 11;
  jlong b;
  jlong l = 0LL;
  {
    IOSCharArray *a__ = [((NSString *) nil_chk(hash_)) toCharArray];
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      b = (jlong) ([((NSString *) nil_chk(OrgApacheLuceneUtilGeoHashUtils_BASE_32_STRING_)) indexOf:c]);
      l |= (JreLShift64(b, ((level-- * 5) + OrgApacheLuceneUtilGeoHashUtils_MORTON_OFFSET)));
    }
  }
  return OrgApacheLuceneUtilBitUtil_flipFlopWithLong_(l);
}

jlong OrgApacheLuceneUtilGeoHashUtils_mortonEncodeWithLong_(jlong geoHashLong) {
  OrgApacheLuceneUtilGeoHashUtils_initialize();
  jint level = (jint) (geoHashLong & 15);
  jshort odd = (jshort) (level & 1);
  return JreLShift64(OrgApacheLuceneUtilBitUtil_flipFlopWithLong_(JreLShift64((JreURShift64(geoHashLong, 4)), odd)), (((12 - level) * 5) + (OrgApacheLuceneUtilGeoHashUtils_MORTON_OFFSET - odd)));
}

void OrgApacheLuceneUtilGeoHashUtils_init(OrgApacheLuceneUtilGeoHashUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilGeoHashUtils *new_OrgApacheLuceneUtilGeoHashUtils_init() {
  OrgApacheLuceneUtilGeoHashUtils *self = [OrgApacheLuceneUtilGeoHashUtils alloc];
  OrgApacheLuceneUtilGeoHashUtils_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilGeoHashUtils)
