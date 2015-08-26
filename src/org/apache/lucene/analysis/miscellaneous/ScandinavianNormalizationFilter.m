//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/ScandinavianNormalizationFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"
#include "org/apache/lucene/util/AttributeSource.h"

#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AA 0x00c5
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_aa 0x00e5
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE 0x00c6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae 0x00e6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE_se 0x00c4
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae_se 0x00e4
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE 0x00d8
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe 0x00f8
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE_se 0x00d6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe_se 0x00f6

@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> charTermAttribute_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, charTermAttribute_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, AA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, aa, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, AE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, ae, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, AE_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, ae_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, OE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, oe, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, OE_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter, oe_se, jchar)

@implementation OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return NO;
  }
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(charTermAttribute_)) buffer];
  jint length = [charTermAttribute_ length];
  jint i;
  for (i = 0; i < length; i++) {
    if (IOSCharArray_Get(nil_chk(buffer), i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae_se) {
      *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae;
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE_se) {
      *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE;
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe_se) {
      *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe;
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE_se) {
      *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE;
    }
    else if (length - 1 > i) {
      if (IOSCharArray_Get(buffer, i) == 'a' && (IOSCharArray_Get(buffer, i + 1) == 'a' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'A' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_aa;
      }
      else if (IOSCharArray_Get(buffer, i) == 'A' && (IOSCharArray_Get(buffer, i + 1) == 'a' || IOSCharArray_Get(buffer, i + 1) == 'A' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AA;
      }
      else if (IOSCharArray_Get(buffer, i) == 'a' && (IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae;
      }
      else if (IOSCharArray_Get(buffer, i) == 'A' && (IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE;
      }
      else if (IOSCharArray_Get(buffer, i) == 'o' && (IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe;
      }
      else if (IOSCharArray_Get(buffer, i) == 'O' && (IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
        *IOSCharArray_GetRef(buffer, i) = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE;
      }
    }
  }
  [charTermAttribute_ setLengthWithInt:length];
  return YES;
}

- (void)dealloc {
  RELEASE_(charTermAttribute_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "ScandinavianNormalizationFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "charTermAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "AA", "AA", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AA },
    { "aa", "aa", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_aa },
    { "AE", "AE", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE },
    { "ae", "ae", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae },
    { "AE_se", "AE_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_AE_se },
    { "ae_se", "ae_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_ae_se },
    { "OE", "OE", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE },
    { "oe", "oe", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe },
    { "OE_se", "OE_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_OE_se },
    { "oe_se", "oe_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_oe_se },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter = { 2, "ScandinavianNormalizationFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 11, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->charTermAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *self = [OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter)
