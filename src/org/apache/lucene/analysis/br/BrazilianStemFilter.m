//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/br/BrazilianStemFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/br/BrazilianStemFilter.h"
#include "org/apache/lucene/analysis/br/BrazilianStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisBrBrazilianStemFilter () {
 @public
  OrgApacheLuceneAnalysisBrBrazilianStemmer *stemmer_;
  id<JavaUtilSet> exclusions_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisBrBrazilianStemFilter, stemmer_, OrgApacheLuceneAnalysisBrBrazilianStemmer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisBrBrazilianStemFilter, exclusions_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisBrBrazilianStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisBrBrazilianStemFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisBrBrazilianStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisBrBrazilianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    NSString *term = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) description];
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) isKeyword] && (exclusions_ == nil || ![exclusions_ containsWithId:term])) {
      NSString *s = [((OrgApacheLuceneAnalysisBrBrazilianStemmer *) nil_chk(stemmer_)) stemWithNSString:term];
      if ((s != nil) && ![s isEqual:term]) [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([termAtt_ setEmpty])) appendWithNSString:s];
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(stemmer_);
  RELEASE_(exclusions_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAttr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "BrazilianStemFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemmer_", NULL, 0x2, "Lorg.apache.lucene.analysis.br.BrazilianStemmer;", NULL, NULL, .constantValue.asLong = 0 },
    { "exclusions_", NULL, 0x2, "Ljava.util.Set;", NULL, "Ljava/util/Set<*>;", .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisBrBrazilianStemFilter = { 2, "BrazilianStemFilter", "org.apache.lucene.analysis.br", NULL, 0x11, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisBrBrazilianStemFilter;
}

@end

void OrgApacheLuceneAnalysisBrBrazilianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisBrBrazilianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisBrBrazilianStemmer_init());
  JreStrongAssign(&self->exclusions_, nil);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisBrBrazilianStemFilter *new_OrgApacheLuceneAnalysisBrBrazilianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisBrBrazilianStemFilter *self = [OrgApacheLuceneAnalysisBrBrazilianStemFilter alloc];
  OrgApacheLuceneAnalysisBrBrazilianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisBrBrazilianStemFilter)
