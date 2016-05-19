//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/Token.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream () {
 @public
  jboolean exhausted_;
  OrgApacheLuceneAnalysisToken *singleToken_;
  OrgApacheLuceneUtilAttributeImpl *tokenAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, singleToken_, OrgApacheLuceneAnalysisToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, tokenAtt_, OrgApacheLuceneUtilAttributeImpl *)

@implementation OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream

- (instancetype)initWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(self, token);
  return self;
}

- (jboolean)incrementToken {
  if (exhausted_) {
    return false;
  }
  else {
    [self clearAttributes];
    [((OrgApacheLuceneAnalysisToken *) nil_chk(singleToken_)) copyToWithOrgApacheLuceneUtilAttributeImpl:tokenAtt_];
    exhausted_ = true;
    return true;
  }
}

- (void)reset {
  exhausted_ = false;
}

- (OrgApacheLuceneAnalysisToken *)getToken {
  return [((OrgApacheLuceneAnalysisToken *) nil_chk(singleToken_)) clone];
}

- (void)setTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  JreStrongAssign(&self->singleToken_, [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) clone]);
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(singleToken_);
  RELEASE_(tokenAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisToken:", "SingleTokenTokenStream", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "getToken", NULL, "Lorg.apache.lucene.analysis.Token;", 0x1, NULL, NULL },
    { "setTokenWithOrgApacheLuceneAnalysisToken:", "setToken", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "singleToken_", NULL, 0x2, "Lorg.apache.lucene.analysis.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenAtt_", NULL, 0x12, "Lorg.apache.lucene.util.AttributeImpl;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream = { 2, "SingleTokenTokenStream", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *self, OrgApacheLuceneAnalysisToken *token) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, JreLoadStatic(OrgApacheLuceneAnalysisToken, TOKEN_ATTRIBUTE_FACTORY));
  self->exhausted_ = false;
  JreAssert((token != nil), (@"org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java:41 condition failed: assert token != null;"));
  JreStrongAssign(&self->singleToken_, [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) clone]);
  JreStrongAssign(&self->tokenAtt_, (OrgApacheLuceneUtilAttributeImpl *) cast_chk([self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()], [OrgApacheLuceneUtilAttributeImpl class]));
  JreAssert((([self->tokenAtt_ isKindOfClass:[OrgApacheLuceneAnalysisToken class]])), (@"org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java:45 condition failed: assert (tokenAtt instanceof Token);"));
}

OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *new_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisToken *token) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, initWithOrgApacheLuceneAnalysisToken_, token)
}

OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *create_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisToken *token) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, initWithOrgApacheLuceneAnalysisToken_, token)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream)
