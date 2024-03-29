//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sv/SwedishLightStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/sv/SwedishLightStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/sv/SwedishLightStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisSvSwedishLightStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  if (len > 4 && IOSCharArray_Get(nil_chk(s), len - 1) == 's') len--;
  if (len > 7 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"elser") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"heten"))) return len - 5;
  if (len > 6 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"arne") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"erna") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ande") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"else") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"aste") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"orna") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"aren"))) return len - 4;
  if (len > 5 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"are") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ast") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"het"))) return len - 3;
  if (len > 4 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ar") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"er") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"or") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"en") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"at") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"te") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"et"))) return len - 2;
  if (len > 3) switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 't':
    case 'a':
    case 'e':
    case 'n':
    return len - 1;
  }
  return len;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(stemWithCharArray:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "stem", "[CI" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSvSwedishLightStemmer = { "SwedishLightStemmer", "org.apache.lucene.analysis.sv", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisSvSwedishLightStemmer;
}

@end

void OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(OrgApacheLuceneAnalysisSvSwedishLightStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisSvSwedishLightStemmer *new_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSvSwedishLightStemmer, init)
}

OrgApacheLuceneAnalysisSvSwedishLightStemmer *create_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSvSwedishLightStemmer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSvSwedishLightStemmer)
