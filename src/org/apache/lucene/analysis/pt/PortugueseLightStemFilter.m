//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseLightStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/pt/PortugueseLightStemFilter.h"
#include "org/apache/lucene/analysis/pt/PortugueseLightStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/pt/PortugueseLightStemFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisPtPortugueseLightStemFilter () {
 @public
  OrgApacheLuceneAnalysisPtPortugueseLightStemmer *stemmer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter, stemmer_, OrgApacheLuceneAnalysisPtPortugueseLightStemmer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisPtPortugueseLightStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) isKeyword]) {
      jint newlen = [((OrgApacheLuceneAnalysisPtPortugueseLightStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ java_length]];
      [termAtt_ setLengthWithInt:newlen];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(stemmer_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAttr_);
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
    { "stemmer_", "LOrgApacheLuceneAnalysisPtPortugueseLightStemmer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "keywordAttr_", "LOrgApacheLuceneAnalysisTokenattributesKeywordAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseLightStemFilter = { "PortugueseLightStemFilter", "org.apache.lucene.analysis.pt", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter;
}

@end

void OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisPtPortugueseLightStemmer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *new_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *create_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter)
