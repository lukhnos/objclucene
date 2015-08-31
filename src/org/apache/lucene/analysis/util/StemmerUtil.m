//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/StemmerUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@interface OrgApacheLuceneAnalysisUtilStemmerUtil ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneAnalysisUtilStemmerUtil_init(OrgApacheLuceneAnalysisUtilStemmerUtil *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisUtilStemmerUtil *new_OrgApacheLuceneAnalysisUtilStemmerUtil_init() NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneAnalysisUtilStemmerUtil

- (instancetype)init {
  OrgApacheLuceneAnalysisUtilStemmerUtil_init(self);
  return self;
}

+ (jboolean)startsWithWithCharArray:(IOSCharArray *)s
                            withInt:(jint)len
                       withNSString:(NSString *)prefix {
  return OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(s, len, prefix);
}

+ (jboolean)endsWithWithCharArray:(IOSCharArray *)s
                          withInt:(jint)len
                     withNSString:(NSString *)suffix {
  return OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, suffix);
}

+ (jboolean)endsWithWithCharArray:(IOSCharArray *)s
                          withInt:(jint)len
                    withCharArray:(IOSCharArray *)suffix {
  return OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withCharArray_(s, len, suffix);
}

+ (jint)delete__WithCharArray:(IOSCharArray *)s
                      withInt:(jint)pos
                      withInt:(jint)len {
  return OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, pos, len);
}

+ (jint)deleteNWithCharArray:(IOSCharArray *)s
                     withInt:(jint)pos
                     withInt:(jint)len
                     withInt:(jint)nChars {
  return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(s, pos, len, nChars);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StemmerUtil", NULL, 0x2, NULL, NULL },
    { "startsWithWithCharArray:withInt:withNSString:", "startsWith", "Z", 0x9, NULL, NULL },
    { "endsWithWithCharArray:withInt:withNSString:", "endsWith", "Z", 0x9, NULL, NULL },
    { "endsWithWithCharArray:withInt:withCharArray:", "endsWith", "Z", 0x9, NULL, NULL },
    { "delete__WithCharArray:withInt:withInt:", "delete", "I", 0x9, NULL, NULL },
    { "deleteNWithCharArray:withInt:withInt:withInt:", "deleteN", "I", 0x9, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilStemmerUtil = { 2, "StemmerUtil", "org.apache.lucene.analysis.util", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilStemmerUtil;
}

@end

void OrgApacheLuceneAnalysisUtilStemmerUtil_init(OrgApacheLuceneAnalysisUtilStemmerUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisUtilStemmerUtil *new_OrgApacheLuceneAnalysisUtilStemmerUtil_init() {
  OrgApacheLuceneAnalysisUtilStemmerUtil *self = [OrgApacheLuceneAnalysisUtilStemmerUtil alloc];
  OrgApacheLuceneAnalysisUtilStemmerUtil_init(self);
  return self;
}

jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(IOSCharArray *s, jint len, NSString *prefix) {
  OrgApacheLuceneAnalysisUtilStemmerUtil_initialize();
  jint prefixLen = ((jint) [((NSString *) nil_chk(prefix)) length]);
  if (prefixLen > len) return NO;
  for (jint i = 0; i < prefixLen; i++) if (IOSCharArray_Get(nil_chk(s), i) != [prefix charAtWithInt:i]) return NO;
  return YES;
}

jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(IOSCharArray *s, jint len, NSString *suffix) {
  OrgApacheLuceneAnalysisUtilStemmerUtil_initialize();
  jint suffixLen = ((jint) [((NSString *) nil_chk(suffix)) length]);
  if (suffixLen > len) return NO;
  for (jint i = suffixLen - 1; i >= 0; i--) if (IOSCharArray_Get(nil_chk(s), len - (suffixLen - i)) != [suffix charAtWithInt:i]) return NO;
  return YES;
}

jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withCharArray_(IOSCharArray *s, jint len, IOSCharArray *suffix) {
  OrgApacheLuceneAnalysisUtilStemmerUtil_initialize();
  jint suffixLen = ((IOSCharArray *) nil_chk(suffix))->size_;
  if (suffixLen > len) return NO;
  for (jint i = suffixLen - 1; i >= 0; i--) if (IOSCharArray_Get(nil_chk(s), len - (suffixLen - i)) != IOSCharArray_Get(suffix, i)) return NO;
  return YES;
}

jint OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(IOSCharArray *s, jint pos, jint len) {
  OrgApacheLuceneAnalysisUtilStemmerUtil_initialize();
  JreAssert((pos < len), (@"org/apache/lucene/analysis/util/StemmerUtil.java:94 condition failed: assert pos < len;"));
  if (pos < len - 1) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(s, pos + 1, s, pos, len - pos - 1);
  }
  return len - 1;
}

jint OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(IOSCharArray *s, jint pos, jint len, jint nChars) {
  OrgApacheLuceneAnalysisUtilStemmerUtil_initialize();
  JreAssert((pos + nChars <= len), (@"org/apache/lucene/analysis/util/StemmerUtil.java:111 condition failed: assert pos + nChars <= len;"));
  if (pos + nChars < len) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(s, pos + nChars, s, pos, len - pos - nChars);
  }
  return len - nChars;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilStemmerUtil)