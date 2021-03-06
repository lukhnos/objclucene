//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/UnicodeUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@interface OrgApacheLuceneUtilUnicodeUtil ()

- (instancetype)init;

@end

inline jlong OrgApacheLuceneUtilUnicodeUtil_get_UNI_MAX_BMP();
#define OrgApacheLuceneUtilUnicodeUtil_UNI_MAX_BMP 65535LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_MAX_BMP, jlong)

inline jlong OrgApacheLuceneUtilUnicodeUtil_get_HALF_SHIFT();
#define OrgApacheLuceneUtilUnicodeUtil_HALF_SHIFT 10LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, HALF_SHIFT, jlong)

inline jlong OrgApacheLuceneUtilUnicodeUtil_get_HALF_MASK();
#define OrgApacheLuceneUtilUnicodeUtil_HALF_MASK 1023LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, HALF_MASK, jlong)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_SURROGATE_OFFSET();
#define OrgApacheLuceneUtilUnicodeUtil_SURROGATE_OFFSET -56613888
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, SURROGATE_OFFSET, jint)

/*!
 @brief Shift value for lead surrogate to form a supplementary character.
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_LEAD_SURROGATE_SHIFT_();
#define OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_SHIFT_ 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, LEAD_SURROGATE_SHIFT_, jint)

/*!
 @brief Mask to retrieve the significant value from a trail surrogate.
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_TRAIL_SURROGATE_MASK_();
#define OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MASK_ 1023
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, TRAIL_SURROGATE_MASK_, jint)

/*!
 @brief Trail surrogate minimum value
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_TRAIL_SURROGATE_MIN_VALUE();
#define OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MIN_VALUE 56320
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, TRAIL_SURROGATE_MIN_VALUE, jint)

/*!
 @brief Lead surrogate minimum value
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_LEAD_SURROGATE_MIN_VALUE();
#define OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_MIN_VALUE 55296
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, LEAD_SURROGATE_MIN_VALUE, jint)

/*!
 @brief The minimum value for Supplementary code points
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_SUPPLEMENTARY_MIN_VALUE();
#define OrgApacheLuceneUtilUnicodeUtil_SUPPLEMENTARY_MIN_VALUE 65536
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, SUPPLEMENTARY_MIN_VALUE, jint)

/*!
 @brief Value that all lead surrogate starts with
 */
inline jint OrgApacheLuceneUtilUnicodeUtil_get_LEAD_SURROGATE_OFFSET_();
#define OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_OFFSET_ 55232
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, LEAD_SURROGATE_OFFSET_, jint)

__attribute__((unused)) static void OrgApacheLuceneUtilUnicodeUtil_init(OrgApacheLuceneUtilUnicodeUtil *self);

__attribute__((unused)) static OrgApacheLuceneUtilUnicodeUtil *new_OrgApacheLuceneUtilUnicodeUtil_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilUnicodeUtil *create_OrgApacheLuceneUtilUnicodeUtil_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilUnicodeUtil)

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilUnicodeUtil_BIG_TERM;
IOSIntArray *OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength;

@implementation OrgApacheLuceneUtilUnicodeUtil

+ (OrgApacheLuceneUtilBytesRef *)BIG_TERM {
  return OrgApacheLuceneUtilUnicodeUtil_BIG_TERM;
}

+ (jint)UNI_SUR_HIGH_START {
  return OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START;
}

+ (jint)UNI_SUR_HIGH_END {
  return OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END;
}

+ (jint)UNI_SUR_LOW_START {
  return OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START;
}

+ (jint)UNI_SUR_LOW_END {
  return OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END;
}

+ (jint)UNI_REPLACEMENT_CHAR {
  return OrgApacheLuceneUtilUnicodeUtil_UNI_REPLACEMENT_CHAR;
}

+ (jint)MAX_UTF8_BYTES_PER_CHAR {
  return OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR;
}

+ (IOSIntArray *)utf8CodeLength {
  return OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilUnicodeUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)UTF16toUTF8WithCharArray:(IOSCharArray *)source
                         withInt:(jint)offset
                         withInt:(jint)length
                   withByteArray:(IOSByteArray *)outArg {
  return OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(source, offset, length, outArg);
}

+ (jint)UTF16toUTF8WithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                    withInt:(jint)offset
                                    withInt:(jint)length
                              withByteArray:(IOSByteArray *)outArg {
  return OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(s, offset, length, outArg);
}

+ (jboolean)validUTF16StringWithJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  return OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithJavaLangCharSequence_(s);
}

+ (jboolean)validUTF16StringWithCharArray:(IOSCharArray *)s
                                  withInt:(jint)size {
  return OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithCharArray_withInt_(s, size);
}

+ (jint)codePointCountWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)utf8 {
  return OrgApacheLuceneUtilUnicodeUtil_codePointCountWithOrgApacheLuceneUtilBytesRef_(utf8);
}

+ (jint)UTF8toUTF32WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)utf8
                                      withIntArray:(IOSIntArray *)ints {
  return OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(utf8, ints);
}

+ (NSString *)newStringWithIntArray:(IOSIntArray *)codePoints
                            withInt:(jint)offset
                            withInt:(jint)count {
  return OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(codePoints, offset, count);
}

+ (NSString *)toHexStringWithNSString:(NSString *)s {
  return OrgApacheLuceneUtilUnicodeUtil_toHexStringWithNSString_(s);
}

+ (jint)UTF8toUTF16WithByteArray:(IOSByteArray *)utf8
                         withInt:(jint)offset
                         withInt:(jint)length
                   withCharArray:(IOSCharArray *)outArg {
  return OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(utf8, offset, length, outArg);
}

+ (jint)UTF8toUTF16WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytesRef
                                     withCharArray:(IOSCharArray *)chars {
  return OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(bytesRef, chars);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilUnicodeUtil class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilUnicodeUtil_BIG_TERM, new_OrgApacheLuceneUtilBytesRef_initWithByteArray_([IOSByteArray arrayWithBytes:(jbyte[]){ -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 } count:10]));
    {
      jint v = JavaLangInteger_MIN_VALUE;
      JreStrongAssignAndConsume(&OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength, [IOSIntArray newArrayWithInts:(jint[]){ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4 } count:248]);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilUnicodeUtil)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "UnicodeUtil", NULL, 0x2, NULL, NULL },
    { "UTF16toUTF8WithCharArray:withInt:withInt:withByteArray:", "UTF16toUTF8", "I", 0x9, NULL, NULL },
    { "UTF16toUTF8WithJavaLangCharSequence:withInt:withInt:withByteArray:", "UTF16toUTF8", "I", 0x9, NULL, NULL },
    { "validUTF16StringWithJavaLangCharSequence:", "validUTF16String", "Z", 0x9, NULL, NULL },
    { "validUTF16StringWithCharArray:withInt:", "validUTF16String", "Z", 0x9, NULL, NULL },
    { "codePointCountWithOrgApacheLuceneUtilBytesRef:", "codePointCount", "I", 0x9, NULL, NULL },
    { "UTF8toUTF32WithOrgApacheLuceneUtilBytesRef:withIntArray:", "UTF8toUTF32", "I", 0x9, NULL, NULL },
    { "newStringWithIntArray:withInt:withInt:", "newString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "toHexStringWithNSString:", "toHexString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "UTF8toUTF16WithByteArray:withInt:withInt:withCharArray:", "UTF8toUTF16", "I", 0x9, NULL, NULL },
    { "UTF8toUTF16WithOrgApacheLuceneUtilBytesRef:withCharArray:", "UTF8toUTF16", "I", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BIG_TERM", "BIG_TERM", 0x19, "Lorg.apache.lucene.util.BytesRef;", &OrgApacheLuceneUtilUnicodeUtil_BIG_TERM, NULL, .constantValue.asLong = 0 },
    { "UNI_SUR_HIGH_START", "UNI_SUR_HIGH_START", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START },
    { "UNI_SUR_HIGH_END", "UNI_SUR_HIGH_END", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END },
    { "UNI_SUR_LOW_START", "UNI_SUR_LOW_START", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START },
    { "UNI_SUR_LOW_END", "UNI_SUR_LOW_END", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END },
    { "UNI_REPLACEMENT_CHAR", "UNI_REPLACEMENT_CHAR", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_UNI_REPLACEMENT_CHAR },
    { "UNI_MAX_BMP", "UNI_MAX_BMP", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneUtilUnicodeUtil_UNI_MAX_BMP },
    { "HALF_SHIFT", "HALF_SHIFT", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneUtilUnicodeUtil_HALF_SHIFT },
    { "HALF_MASK", "HALF_MASK", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneUtilUnicodeUtil_HALF_MASK },
    { "SURROGATE_OFFSET", "SURROGATE_OFFSET", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_SURROGATE_OFFSET },
    { "MAX_UTF8_BYTES_PER_CHAR", "MAX_UTF8_BYTES_PER_CHAR", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR },
    { "utf8CodeLength", "utf8CodeLength", 0x18, "[I", &OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength, NULL, .constantValue.asLong = 0 },
    { "LEAD_SURROGATE_SHIFT_", "LEAD_SURROGATE_SHIFT_", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_SHIFT_ },
    { "TRAIL_SURROGATE_MASK_", "TRAIL_SURROGATE_MASK_", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MASK_ },
    { "TRAIL_SURROGATE_MIN_VALUE", "TRAIL_SURROGATE_MIN_VALUE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MIN_VALUE },
    { "LEAD_SURROGATE_MIN_VALUE", "LEAD_SURROGATE_MIN_VALUE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_MIN_VALUE },
    { "SUPPLEMENTARY_MIN_VALUE", "SUPPLEMENTARY_MIN_VALUE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_SUPPLEMENTARY_MIN_VALUE },
    { "LEAD_SURROGATE_OFFSET_", "LEAD_SURROGATE_OFFSET_", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_OFFSET_ },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilUnicodeUtil = { 2, "UnicodeUtil", "org.apache.lucene.util", NULL, 0x11, 11, methods, 18, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilUnicodeUtil;
}

@end

void OrgApacheLuceneUtilUnicodeUtil_init(OrgApacheLuceneUtilUnicodeUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilUnicodeUtil *new_OrgApacheLuceneUtilUnicodeUtil_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilUnicodeUtil, init)
}

OrgApacheLuceneUtilUnicodeUtil *create_OrgApacheLuceneUtilUnicodeUtil_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilUnicodeUtil, init)
}

jint OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(IOSCharArray *source, jint offset, jint length, IOSByteArray *outArg) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint upto = 0;
  jint i = offset;
  jint end = offset + length;
  while (i < end) {
    jint code = (jint) IOSCharArray_Get(nil_chk(source), i++);
    if (code < (jint) 0x80) *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) code;
    else if (code < (jint) 0x800) {
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xC0 | (JreRShift32(code, 6)));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (code & (jint) 0x3F));
    }
    else if (code < (jint) 0xD800 || code > (jint) 0xDFFF) {
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xE0 | (JreRShift32(code, 12)));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(code, 6)) & (jint) 0x3F));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (code & (jint) 0x3F));
    }
    else {
      if (code < (jint) 0xDC00 && i < end) {
        jint utf32 = (jint) IOSCharArray_Get(source, i);
        if (utf32 >= (jint) 0xDC00 && utf32 <= (jint) 0xDFFF) {
          utf32 = (JreLShift32(code, 10)) + utf32 + OrgApacheLuceneUtilUnicodeUtil_SURROGATE_OFFSET;
          i++;
          *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xF0 | (JreRShift32(utf32, 18)));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(utf32, 12)) & (jint) 0x3F));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(utf32, 6)) & (jint) 0x3F));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (utf32 & (jint) 0x3F));
          continue;
        }
      }
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) (jint) 0xEF;
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) (jint) 0xBF;
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) (jint) 0xBD;
    }
  }
  return upto;
}

jint OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(id<JavaLangCharSequence> s, jint offset, jint length, IOSByteArray *outArg) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint end = offset + length;
  jint upto = 0;
  for (jint i = offset; i < end; i++) {
    jint code = (jint) [((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:i];
    if (code < (jint) 0x80) *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) code;
    else if (code < (jint) 0x800) {
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xC0 | (JreRShift32(code, 6)));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (code & (jint) 0x3F));
    }
    else if (code < (jint) 0xD800 || code > (jint) 0xDFFF) {
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xE0 | (JreRShift32(code, 12)));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(code, 6)) & (jint) 0x3F));
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (code & (jint) 0x3F));
    }
    else {
      if (code < (jint) 0xDC00 && (i < end - 1)) {
        jint utf32 = (jint) [s charAtWithInt:i + 1];
        if (utf32 >= (jint) 0xDC00 && utf32 <= (jint) 0xDFFF) {
          utf32 = (JreLShift32(code, 10)) + utf32 + OrgApacheLuceneUtilUnicodeUtil_SURROGATE_OFFSET;
          i++;
          *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) ((jint) 0xF0 | (JreRShift32(utf32, 18)));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(utf32, 12)) & (jint) 0x3F));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | ((JreRShift32(utf32, 6)) & (jint) 0x3F));
          *IOSByteArray_GetRef(outArg, upto++) = (jbyte) ((jint) 0x80 | (utf32 & (jint) 0x3F));
          continue;
        }
      }
      *IOSByteArray_GetRef(nil_chk(outArg), upto++) = (jbyte) (jint) 0xEF;
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) (jint) 0xBF;
      *IOSByteArray_GetRef(outArg, upto++) = (jbyte) (jint) 0xBD;
    }
  }
  return upto;
}

jboolean OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithJavaLangCharSequence_(id<JavaLangCharSequence> s) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint size = [((id<JavaLangCharSequence>) nil_chk(s)) length];
  for (jint i = 0; i < size; i++) {
    jchar ch = [s charAtWithInt:i];
    if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END) {
      if (i < size - 1) {
        i++;
        jchar nextCH = [s charAtWithInt:i];
        if (nextCH >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START && nextCH <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) {
        }
        else return false;
      }
      else return false;
    }
    else if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) return false;
  }
  return true;
}

jboolean OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithCharArray_withInt_(IOSCharArray *s, jint size) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  for (jint i = 0; i < size; i++) {
    jchar ch = IOSCharArray_Get(nil_chk(s), i);
    if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END) {
      if (i < size - 1) {
        i++;
        jchar nextCH = IOSCharArray_Get(s, i);
        if (nextCH >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START && nextCH <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) {
        }
        else return false;
      }
      else return false;
    }
    else if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) return false;
  }
  return true;
}

jint OrgApacheLuceneUtilUnicodeUtil_codePointCountWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *utf8) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint pos = ((OrgApacheLuceneUtilBytesRef *) nil_chk(utf8))->offset_;
  jint limit = pos + utf8->length_;
  IOSByteArray *bytes = utf8->bytes_;
  jint codePointCount = 0;
  for (; pos < limit; codePointCount++) {
    jint v = IOSByteArray_Get(nil_chk(bytes), pos) & (jint) 0xFF;
    if (v < (jint) 0x80) {
      pos += 1;
      continue;
    }
    if (v >= (jint) 0xc0) {
      if (v < (jint) 0xe0) {
        pos += 2;
        continue;
      }
      if (v < (jint) 0xf0) {
        pos += 3;
        continue;
      }
      if (v < (jint) 0xf8) {
        pos += 4;
        continue;
      }
    }
    @throw create_JavaLangIllegalArgumentException_init();
  }
  if (pos > limit) @throw create_JavaLangIllegalArgumentException_init();
  return codePointCount;
}

jint OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(OrgApacheLuceneUtilBytesRef *utf8, IOSIntArray *ints) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint utf32Count = 0;
  jint utf8Upto = ((OrgApacheLuceneUtilBytesRef *) nil_chk(utf8))->offset_;
  IOSByteArray *bytes = utf8->bytes_;
  jint utf8Limit = utf8->offset_ + utf8->length_;
  while (utf8Upto < utf8Limit) {
    jint numBytes = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength), IOSByteArray_Get(nil_chk(bytes), utf8Upto) & (jint) 0xFF);
    jint v = 0;
    switch (numBytes) {
      case 1:
      *IOSIntArray_GetRef(nil_chk(ints), utf32Count++) = IOSByteArray_Get(bytes, utf8Upto++);
      continue;
      case 2:
      v = IOSByteArray_Get(bytes, utf8Upto++) & 31;
      break;
      case 3:
      v = IOSByteArray_Get(bytes, utf8Upto++) & 15;
      break;
      case 4:
      v = IOSByteArray_Get(bytes, utf8Upto++) & 7;
      break;
      default:
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"invalid utf8");
    }
    jint limit = utf8Upto + numBytes - 1;
    while (utf8Upto < limit) {
      v = (JreLShift32(v, 6)) | (IOSByteArray_Get(bytes, utf8Upto++) & 63);
    }
    *IOSIntArray_GetRef(nil_chk(ints), utf32Count++) = v;
  }
  return utf32Count;
}

NSString *OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(IOSIntArray *codePoints, jint offset, jint count) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  if (count < 0) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  IOSCharArray *chars = [IOSCharArray arrayWithLength:count];
  jint w = 0;
  for (jint r = offset, e = offset + count; r < e; ++r) {
    jint cp = IOSIntArray_Get(nil_chk(codePoints), r);
    if (cp < 0 || cp > (jint) 0x10ffff) {
      @throw create_JavaLangIllegalArgumentException_init();
    }
    while (true) {
      @try {
        if (cp < (jint) 0x010000) {
          *IOSCharArray_GetRef(chars, w) = (jchar) cp;
          w++;
        }
        else {
          *IOSCharArray_GetRef(chars, w) = (jchar) (OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_OFFSET_ + (JreRShift32(cp, OrgApacheLuceneUtilUnicodeUtil_LEAD_SURROGATE_SHIFT_)));
          *IOSCharArray_GetRef(chars, w + 1) = (jchar) (OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MIN_VALUE + (cp & OrgApacheLuceneUtilUnicodeUtil_TRAIL_SURROGATE_MASK_));
          w += 2;
        }
        break;
      }
      @catch (JavaLangIndexOutOfBoundsException *ex) {
        jint newlen = JreFpToInt((JavaLangMath_ceilWithDouble_((jdouble) codePoints->size_ * (w + 2) / (r - offset + 1))));
        IOSCharArray *temp = [IOSCharArray arrayWithLength:newlen];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(chars, 0, temp, 0, w);
        chars = temp;
      }
    }
  }
  return [NSString stringWithCharacters:chars offset:0 length:w];
}

NSString *OrgApacheLuceneUtilUnicodeUtil_toHexStringWithNSString_(NSString *s) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < ((jint) [((NSString *) nil_chk(s)) length]); i++) {
    jchar ch = [s charAtWithInt:i];
    if (i > 0) {
      [sb appendWithChar:' '];
    }
    if (ch < 128) {
      [sb appendWithChar:ch];
    }
    else {
      if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END) {
        [sb appendWithNSString:@"H:"];
      }
      else if (ch >= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START && ch <= OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) {
        [sb appendWithNSString:@"L:"];
      }
      else if (ch > OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END) {
        if (ch == (jint) 0xffff) {
          [sb appendWithNSString:@"F:"];
        }
        else {
          [sb appendWithNSString:@"E:"];
        }
      }
      [sb appendWithNSString:JreStrcat("$$", @"0x", JavaLangInteger_toHexStringWithInt_(ch))];
    }
  }
  return [sb description];
}

jint OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(IOSByteArray *utf8, jint offset, jint length, IOSCharArray *outArg) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  jint out_offset = 0;
  jint limit = offset + length;
  while (offset < limit) {
    jint b = IOSByteArray_Get(nil_chk(utf8), offset++) & (jint) 0xff;
    if (b < (jint) 0xc0) {
      JreAssert((b < (jint) 0x80), (@"org/apache/lucene/util/UnicodeUtil.java:546 condition failed: assert b < 0x80;"));
      *IOSCharArray_GetRef(nil_chk(outArg), out_offset++) = (jchar) b;
    }
    else if (b < (jint) 0xe0) {
      *IOSCharArray_GetRef(nil_chk(outArg), out_offset++) = (jchar) ((JreLShift32((b & (jint) 0x1f), 6)) + (IOSByteArray_Get(utf8, offset++) & (jint) 0x3f));
    }
    else if (b < (jint) 0xf0) {
      *IOSCharArray_GetRef(nil_chk(outArg), out_offset++) = (jchar) ((JreLShift32((b & (jint) 0xf), 12)) + (JreLShift32((IOSByteArray_Get(utf8, offset) & (jint) 0x3f), 6)) + (IOSByteArray_Get(utf8, offset + 1) & (jint) 0x3f));
      offset += 2;
    }
    else {
      JreAssert((b < (jint) 0xf8), (JreStrcat("$$", @"b = 0x", JavaLangInteger_toHexStringWithInt_(b))));
      jint ch = (JreLShift32((b & (jint) 0x7), 18)) + (JreLShift32((IOSByteArray_Get(utf8, offset) & (jint) 0x3f), 12)) + (JreLShift32((IOSByteArray_Get(utf8, offset + 1) & (jint) 0x3f), 6)) + (IOSByteArray_Get(utf8, offset + 2) & (jint) 0x3f);
      offset += 3;
      if (ch < OrgApacheLuceneUtilUnicodeUtil_UNI_MAX_BMP) {
        *IOSCharArray_GetRef(nil_chk(outArg), out_offset++) = (jchar) ch;
      }
      else {
        jint chHalf = ch - (jint) 0x0010000;
        *IOSCharArray_GetRef(nil_chk(outArg), out_offset++) = (jchar) ((JreRShift32(chHalf, 10)) + (jint) 0xD800);
        *IOSCharArray_GetRef(outArg, out_offset++) = (jchar) ((chHalf & OrgApacheLuceneUtilUnicodeUtil_HALF_MASK) + (jint) 0xDC00);
      }
    }
  }
  return out_offset;
}

jint OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(OrgApacheLuceneUtilBytesRef *bytesRef, IOSCharArray *chars) {
  OrgApacheLuceneUtilUnicodeUtil_initialize();
  return OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(((OrgApacheLuceneUtilBytesRef *) nil_chk(bytesRef))->bytes_, bytesRef->offset_, bytesRef->length_, chars);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilUnicodeUtil)
