//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenCountAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenCountAnalyzer.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/LimitTokenCountAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *delegate_;
  jint maxTokenCount_;
  jboolean consumeAllTokens_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer, delegate_, OrgApacheLuceneAnalysisAnalyzer *)

@implementation OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                                                withInt:(jint)maxTokenCount {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(self, delegate, maxTokenCount);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                                                withInt:(jint)maxTokenCount
                                            withBoolean:(jboolean)consumeAllTokens {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(self, delegate, maxTokenCount, consumeAllTokens);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName {
  return delegate_;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_([((OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) nil_chk(components)) getTokenizer], create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_([components getTokenStream], maxTokenCount_, consumeAllTokens_));
}

- (NSString *)description {
  return JreStrcat("$$$I$ZC", @"LimitTokenCountAnalyzer(", [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(delegate_)) description], @", maxTokenCount=", maxTokenCount_, @", consumeAllTokens=", consumeAllTokens_, ')');
}

- (void)dealloc {
  RELEASE_(delegate_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer;", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:withBoolean:);
  methods[2].selector = @selector(getWrappedAnalyzerWithNSString:);
  methods[3].selector = @selector(wrapComponentsWithNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:);
  methods[4].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneAnalysisAnalyzer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxTokenCount_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "consumeAllTokens_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;I", "LOrgApacheLuceneAnalysisAnalyzer;IZ", "getWrappedAnalyzer", "LNSString;", "wrapComponents", "LNSString;LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer = { "LimitTokenCountAnalyzer", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x11, 5, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount) {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(self, delegate, maxTokenCount, false);
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, delegate, maxTokenCount)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, delegate, maxTokenCount)
}

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens) {
  OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(delegate)) getReuseStrategy]);
  JreStrongAssign(&self->delegate_, delegate);
  self->maxTokenCount_ = maxTokenCount;
  self->consumeAllTokens_ = consumeAllTokens;
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_, delegate, maxTokenCount, consumeAllTokens)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_, delegate, maxTokenCount, consumeAllTokens)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer)
