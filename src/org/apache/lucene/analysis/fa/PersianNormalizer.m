//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianNormalizer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/fa/PersianNormalizer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/fa/PersianNormalizer must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisFaPersianNormalizer

+ (jchar)YEH {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_YEH;
}

+ (jchar)FARSI_YEH {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_FARSI_YEH;
}

+ (jchar)YEH_BARREE {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_YEH_BARREE;
}

+ (jchar)KEHEH {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_KEHEH;
}

+ (jchar)KAF {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_KAF;
}

+ (jchar)HAMZA_ABOVE {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_HAMZA_ABOVE;
}

+ (jchar)HEH_YEH {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_YEH;
}

+ (jchar)HEH_GOAL {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_GOAL;
}

+ (jchar)HEH {
  return OrgApacheLuceneAnalysisFaPersianNormalizer_HEH;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFaPersianNormalizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    switch (IOSCharArray_Get(nil_chk(s), i)) {
      case OrgApacheLuceneAnalysisFaPersianNormalizer_FARSI_YEH:
      case OrgApacheLuceneAnalysisFaPersianNormalizer_YEH_BARREE:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_KEHEH:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_KAF;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_YEH:
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_GOAL:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HAMZA_ABOVE:
      len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i, len);
      i--;
      break;
      default:
      break;
    }
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
  methods[1].selector = @selector(normalizeWithCharArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "YEH", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH, 0x19, -1, -1, -1, -1 },
    { "FARSI_YEH", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_FARSI_YEH, 0x19, -1, -1, -1, -1 },
    { "YEH_BARREE", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH_BARREE, 0x19, -1, -1, -1, -1 },
    { "KEHEH", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_KEHEH, 0x19, -1, -1, -1, -1 },
    { "KAF", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_KAF, 0x19, -1, -1, -1, -1 },
    { "HAMZA_ABOVE", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HAMZA_ABOVE, 0x19, -1, -1, -1, -1 },
    { "HEH_YEH", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_YEH, 0x19, -1, -1, -1, -1 },
    { "HEH_GOAL", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_GOAL, 0x19, -1, -1, -1, -1 },
    { "HEH", "C", .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "normalize", "[CI" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianNormalizer = { "PersianNormalizer", "org.apache.lucene.analysis.fa", ptrTable, methods, fields, 7, 0x1, 2, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisFaPersianNormalizer;
}

@end

void OrgApacheLuceneAnalysisFaPersianNormalizer_init(OrgApacheLuceneAnalysisFaPersianNormalizer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisFaPersianNormalizer *new_OrgApacheLuceneAnalysisFaPersianNormalizer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianNormalizer, init)
}

OrgApacheLuceneAnalysisFaPersianNormalizer *create_OrgApacheLuceneAnalysisFaPersianNormalizer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianNormalizer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianNormalizer)
