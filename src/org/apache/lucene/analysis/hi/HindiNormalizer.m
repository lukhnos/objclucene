//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hi/HindiNormalizer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/hi/HindiNormalizer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/hi/HindiNormalizer must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisHiHindiNormalizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisHiHindiNormalizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    switch (IOSCharArray_Get(nil_chk(s), i)) {
      case 0x0928:
      if (i + 1 < len && IOSCharArray_Get(s, i + 1) == 0x094d) {
        *IOSCharArray_GetRef(s, i) = 0x0902;
        len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i + 1, len);
      }
      break;
      case 0x0901:
      *IOSCharArray_GetRef(s, i) = 0x0902;
      break;
      case 0x093c:
      len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i, len);
      i--;
      break;
      case 0x0929:
      *IOSCharArray_GetRef(s, i) = 0x0928;
      break;
      case 0x0931:
      *IOSCharArray_GetRef(s, i) = 0x0930;
      break;
      case 0x0934:
      *IOSCharArray_GetRef(s, i) = 0x0933;
      break;
      case 0x0958:
      *IOSCharArray_GetRef(s, i) = 0x0915;
      break;
      case 0x0959:
      *IOSCharArray_GetRef(s, i) = 0x0916;
      break;
      case 0x095a:
      *IOSCharArray_GetRef(s, i) = 0x0917;
      break;
      case 0x095b:
      *IOSCharArray_GetRef(s, i) = 0x091c;
      break;
      case 0x095c:
      *IOSCharArray_GetRef(s, i) = 0x0921;
      break;
      case 0x095d:
      *IOSCharArray_GetRef(s, i) = 0x0922;
      break;
      case 0x095e:
      *IOSCharArray_GetRef(s, i) = 0x092b;
      break;
      case 0x095f:
      *IOSCharArray_GetRef(s, i) = 0x092f;
      break;
      case 0x200d:
      case 0x200c:
      len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i, len);
      i--;
      break;
      case 0x094d:
      len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i, len);
      i--;
      break;
      case 0x0945:
      case 0x0946:
      *IOSCharArray_GetRef(s, i) = 0x0947;
      break;
      case 0x0949:
      case 0x094a:
      *IOSCharArray_GetRef(s, i) = 0x094b;
      break;
      case 0x090d:
      case 0x090e:
      *IOSCharArray_GetRef(s, i) = 0x090f;
      break;
      case 0x0911:
      case 0x0912:
      *IOSCharArray_GetRef(s, i) = 0x0913;
      break;
      case 0x0972:
      *IOSCharArray_GetRef(s, i) = 0x0905;
      break;
      case 0x0906:
      *IOSCharArray_GetRef(s, i) = 0x0905;
      break;
      case 0x0908:
      *IOSCharArray_GetRef(s, i) = 0x0907;
      break;
      case 0x090a:
      *IOSCharArray_GetRef(s, i) = 0x0909;
      break;
      case 0x0960:
      *IOSCharArray_GetRef(s, i) = 0x090b;
      break;
      case 0x0961:
      *IOSCharArray_GetRef(s, i) = 0x090c;
      break;
      case 0x0910:
      *IOSCharArray_GetRef(s, i) = 0x090f;
      break;
      case 0x0914:
      *IOSCharArray_GetRef(s, i) = 0x0913;
      break;
      case 0x0940:
      *IOSCharArray_GetRef(s, i) = 0x093f;
      break;
      case 0x0942:
      *IOSCharArray_GetRef(s, i) = 0x0941;
      break;
      case 0x0944:
      *IOSCharArray_GetRef(s, i) = 0x0943;
      break;
      case 0x0963:
      *IOSCharArray_GetRef(s, i) = 0x0962;
      break;
      case 0x0948:
      *IOSCharArray_GetRef(s, i) = 0x0947;
      break;
      case 0x094c:
      *IOSCharArray_GetRef(s, i) = 0x094b;
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
  static const void *ptrTable[] = { "normalize", "[CI" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHiHindiNormalizer = { "HindiNormalizer", "org.apache.lucene.analysis.hi", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisHiHindiNormalizer;
}

@end

void OrgApacheLuceneAnalysisHiHindiNormalizer_init(OrgApacheLuceneAnalysisHiHindiNormalizer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisHiHindiNormalizer *new_OrgApacheLuceneAnalysisHiHindiNormalizer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHiHindiNormalizer, init)
}

OrgApacheLuceneAnalysisHiHindiNormalizer *create_OrgApacheLuceneAnalysisHiHindiNormalizer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHiHindiNormalizer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHiHindiNormalizer)
