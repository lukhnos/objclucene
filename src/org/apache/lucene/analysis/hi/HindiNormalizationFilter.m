//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hi/HindiNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/hi/HindiNormalizationFilter.h"
#include "org/apache/lucene/analysis/hi/HindiNormalizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/hi/HindiNormalizationFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisHiHindiNormalizationFilter () {
 @public
  OrgApacheLuceneAnalysisHiHindiNormalizer *normalizer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHiHindiNormalizationFilter, normalizer_, OrgApacheLuceneAnalysisHiHindiNormalizer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHiHindiNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHiHindiNormalizationFilter, keywordAtt_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisHiHindiNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAtt_)) isKeyword]) [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setLengthWithInt:[((OrgApacheLuceneAnalysisHiHindiNormalizer *) nil_chk(normalizer_)) normalizeWithCharArray:[termAtt_ buffer] withInt:[termAtt_ java_length]]];
    return true;
  }
  return false;
}

- (void)dealloc {
  RELEASE_(normalizer_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "normalizer_", "LOrgApacheLuceneAnalysisHiHindiNormalizer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "keywordAtt_", "LOrgApacheLuceneAnalysisTokenattributesKeywordAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHiHindiNormalizationFilter = { "HindiNormalizationFilter", "org.apache.lucene.analysis.hi", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisHiHindiNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHiHindiNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->normalizer_, new_OrgApacheLuceneAnalysisHiHindiNormalizer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisHiHindiNormalizationFilter *new_OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHiHindiNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisHiHindiNormalizationFilter *create_OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHiHindiNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHiHindiNormalizationFilter)
