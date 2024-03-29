//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/id/IndonesianStemFilter.h"
#include "org/apache/lucene/analysis/id/IndonesianStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/id/IndonesianStemFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisIdIndonesianStemFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAtt_;
  OrgApacheLuceneAnalysisIdIndonesianStemmer *stemmer_;
  jboolean stemDerivational_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisIdIndonesianStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisIdIndonesianStemFilter, keywordAtt_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisIdIndonesianStemFilter, stemmer_, OrgApacheLuceneAnalysisIdIndonesianStemmer *)

@implementation OrgApacheLuceneAnalysisIdIndonesianStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                               withBoolean:(jboolean)stemDerivational {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(self, input, stemDerivational);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAtt_)) isKeyword]) {
      jint newlen = [((OrgApacheLuceneAnalysisIdIndonesianStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ java_length] withBoolean:stemDerivational_];
      [termAtt_ setLengthWithInt:newlen];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(keywordAtt_);
  RELEASE_(stemmer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withBoolean:);
  methods[2].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "keywordAtt_", "LOrgApacheLuceneAnalysisTokenattributesKeywordAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "stemmer_", "LOrgApacheLuceneAnalysisIdIndonesianStemmer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "stemDerivational_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LOrgApacheLuceneAnalysisTokenStream;Z", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisIdIndonesianStemFilter = { "IndonesianStemFilter", "org.apache.lucene.analysis.id", ptrTable, methods, fields, 7, 0x11, 3, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisIdIndonesianStemFilter;
}

@end

void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(self, input, true);
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisIdIndonesianStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *create_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisIdIndonesianStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisIdIndonesianStemmer_init());
  self->stemDerivational_ = stemDerivational;
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisIdIndonesianStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_, input, stemDerivational)
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *create_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisIdIndonesianStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_, input, stemDerivational)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisIdIndonesianStemFilter)
