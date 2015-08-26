//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hunspell/HunspellStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_) && (OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_INCLUDE 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory *new_OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_INCLUDE_ALL")
