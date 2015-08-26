//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hu/HungarianLightStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/hu/HungarianLightStemFilter.h"
#include "org/apache/lucene/analysis/hu/HungarianLightStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisHuHungarianLightStemFilter () {
 @public
  OrgApacheLuceneAnalysisHuHungarianLightStemmer *stemmer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHuHungarianLightStemFilter, stemmer_, OrgApacheLuceneAnalysisHuHungarianLightStemmer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHuHungarianLightStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHuHungarianLightStemFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisHuHungarianLightStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) isKeyword]) {
      jint newlen = [((OrgApacheLuceneAnalysisHuHungarianLightStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length]];
      [termAtt_ setLengthWithInt:newlen];
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(stemmer_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAttr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "HungarianLightStemFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemmer_", NULL, 0x12, "Lorg.apache.lucene.analysis.hu.HungarianLightStemmer;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHuHungarianLightStemFilter = { 2, "HungarianLightStemFilter", "org.apache.lucene.analysis.hu", NULL, 0x11, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisHuHungarianLightStemFilter;
}

@end

void OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHuHungarianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisHuHungarianLightStemmer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisHuHungarianLightStemFilter *new_OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisHuHungarianLightStemFilter *self = [OrgApacheLuceneAnalysisHuHungarianLightStemFilter alloc];
  OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHuHungarianLightStemFilter)
