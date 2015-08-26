//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TrimFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_INCLUDE_ALL")
