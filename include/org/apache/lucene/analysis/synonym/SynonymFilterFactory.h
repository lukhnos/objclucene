//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SynonymFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_) && (OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_INCLUDE 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisSynonymSynonymMap;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisSynonymSynonymFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

#pragma mark Protected

- (OrgApacheLuceneAnalysisSynonymSynonymMap *)loadSynonymsWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                           withNSString:(NSString *)cname
                                                                                            withBoolean:(jboolean)dedup
                                                                    withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymFilterFactory *new_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_INCLUDE_ALL")