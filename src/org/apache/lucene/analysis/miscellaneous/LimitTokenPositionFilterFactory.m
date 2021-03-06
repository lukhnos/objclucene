//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_MAX_TOKEN_POSITION_KEY = @"maxTokenPosition";
NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_CONSUME_ALL_TOKENS_KEY = @"consumeAllTokens";

@implementation OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory

+ (NSString *)MAX_TOKEN_POSITION_KEY {
  return OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_MAX_TOKEN_POSITION_KEY;
}

+ (NSString *)CONSUME_ALL_TOKENS_KEY {
  return OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_CONSUME_ALL_TOKENS_KEY;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(input, maxTokenPosition_, consumeAllTokens_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "LimitTokenPositionFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_TOKEN_POSITION_KEY", "MAX_TOKEN_POSITION_KEY", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_MAX_TOKEN_POSITION_KEY, NULL, .constantValue.asLong = 0 },
    { "CONSUME_ALL_TOKENS_KEY", "CONSUME_ALL_TOKENS_KEY", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_CONSUME_ALL_TOKENS_KEY, NULL, .constantValue.asLong = 0 },
    { "maxTokenPosition_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "consumeAllTokens_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory = { 2, "LimitTokenPositionFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->maxTokenPosition_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_MAX_TOKEN_POSITION_KEY];
  self->consumeAllTokens_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_CONSUME_ALL_TOKENS_KEY withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory)
