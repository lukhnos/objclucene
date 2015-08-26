//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_INCLUDE 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

- (jboolean)isIgnoreCase;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PROTECTED_TOKENS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, PROTECTED_TOKENS_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PATTERN_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, PATTERN_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_INCLUDE_ALL")
