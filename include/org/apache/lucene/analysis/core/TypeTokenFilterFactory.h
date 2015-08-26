//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/TypeTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_) && (OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_INCLUDE 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (id<JavaUtilSet>)getStopTypes;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory *new_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_INCLUDE_ALL")
