//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/ckb/SoraniStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/ckb/SoraniStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisCkbSoraniStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCkbSoraniStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  if (len > 5 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u062f\u0627")) {
    len -= 2;
  }
  else if (len > 4 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0646\u0627")) {
    len--;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06d5\u0648\u06d5")) {
    len -= 3;
  }
  if (len > 6 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0645\u0627\u0646") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u0627\u0646") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u062a\u0627\u0646"))) {
    len -= 3;
  }
  if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06ce\u06a9\u06cc")) {
    return len - 3;
  }
  else if (len > 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u06d5\u06a9\u06cc")) {
    return len - 4;
  }
  if (len > 5 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06ce\u06a9")) {
    return len - 2;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u06d5\u06a9")) {
    return len - 3;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06d5\u06a9\u06d5")) {
    return len - 3;
  }
  else if (len > 5 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06a9\u06d5")) {
    return len - 2;
  }
  else if (len > 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06d5\u06a9\u0627\u0646")) {
    return len - 4;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06a9\u0627\u0646")) {
    return len - 3;
  }
  else if (len > 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u0627\u0646\u06cc")) {
    return len - 4;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0627\u0646\u06cc")) {
    return len - 3;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u0627\u0646")) {
    return len - 3;
  }
  else if (len > 5 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0627\u0646")) {
    return len - 2;
  }
  else if (len > 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc\u0627\u0646\u06d5")) {
    return len - 4;
  }
  else if (len > 6 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0627\u0646\u06d5")) {
    return len - 3;
  }
  else if (len > 5 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0627\u06cc\u06d5") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06d5\u06cc\u06d5"))) {
    return len - 2;
  }
  else if (len > 4 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06d5")) {
    return len - 1;
  }
  else if (len > 4 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u06cc")) {
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
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCkbSoraniStemmer = { "SoraniStemmer", "org.apache.lucene.analysis.ckb", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCkbSoraniStemmer;
}

@end

void OrgApacheLuceneAnalysisCkbSoraniStemmer_init(OrgApacheLuceneAnalysisCkbSoraniStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisCkbSoraniStemmer *new_OrgApacheLuceneAnalysisCkbSoraniStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniStemmer, init)
}

OrgApacheLuceneAnalysisCkbSoraniStemmer *create_OrgApacheLuceneAnalysisCkbSoraniStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniStemmer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCkbSoraniStemmer)
