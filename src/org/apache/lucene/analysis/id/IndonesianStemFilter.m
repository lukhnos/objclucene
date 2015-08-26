//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/id/IndonesianStemFilter.h"
#include "org/apache/lucene/analysis/id/IndonesianStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

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
      jint newlen = [((OrgApacheLuceneAnalysisIdIndonesianStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length] withBoolean:stemDerivational_];
      [termAtt_ setLengthWithInt:newlen];
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(keywordAtt_);
  RELEASE_(stemmer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "IndonesianStemFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withBoolean:", "IndonesianStemFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "stemmer_", NULL, 0x12, "Lorg.apache.lucene.analysis.id.IndonesianStemmer;", NULL, NULL, .constantValue.asLong = 0 },
    { "stemDerivational_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisIdIndonesianStemFilter = { 2, "IndonesianStemFilter", "org.apache.lucene.analysis.id", NULL, 0x11, 3, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisIdIndonesianStemFilter;
}

@end

void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(self, input, YES);
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter *self = [OrgApacheLuceneAnalysisIdIndonesianStemFilter alloc];
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisIdIndonesianStemmer_init());
  self->stemDerivational_ = stemDerivational;
}

OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) {
  OrgApacheLuceneAnalysisIdIndonesianStemFilter *self = [OrgApacheLuceneAnalysisIdIndonesianStemFilter alloc];
  OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(self, input, stemDerivational);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisIdIndonesianStemFilter)
