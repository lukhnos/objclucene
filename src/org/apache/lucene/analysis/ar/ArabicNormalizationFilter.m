//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/ar/ArabicNormalizationFilter.h"
#include "org/apache/lucene/analysis/ar/ArabicNormalizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/ar/ArabicNormalizationFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisArArabicNormalizationFilter () {
 @public
  OrgApacheLuceneAnalysisArArabicNormalizer *normalizer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicNormalizationFilter, normalizer_, OrgApacheLuceneAnalysisArArabicNormalizer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

@implementation OrgApacheLuceneAnalysisArArabicNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    jint newlen = [((OrgApacheLuceneAnalysisArArabicNormalizer *) nil_chk(normalizer_)) normalizeWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ java_length]];
    [termAtt_ setLengthWithInt:newlen];
    return true;
  }
  return false;
}

- (void)dealloc {
  RELEASE_(normalizer_);
  RELEASE_(termAtt_);
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
    { "normalizer_", "LOrgApacheLuceneAnalysisArArabicNormalizer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicNormalizationFilter = { "ArabicNormalizationFilter", "org.apache.lucene.analysis.ar", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisArArabicNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisArArabicNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->normalizer_, new_OrgApacheLuceneAnalysisArArabicNormalizer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisArArabicNormalizationFilter *new_OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisArArabicNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisArArabicNormalizationFilter *create_OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisArArabicNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicNormalizationFilter)
