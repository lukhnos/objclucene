//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory {
 @public
  jint maxTokenCount_;
  jboolean consumeAllTokens_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_MAX_TOKEN_COUNT_KEY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory, MAX_TOKEN_COUNT_KEY_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_CONSUME_ALL_TOKENS_KEY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory, CONSUME_ALL_TOKENS_KEY_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_INCLUDE_ALL")