//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TruncateTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_PREFIX_LENGTH_KEY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory, PREFIX_LENGTH_KEY_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_INCLUDE_ALL")