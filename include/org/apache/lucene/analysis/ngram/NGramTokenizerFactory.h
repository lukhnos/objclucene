//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenizerFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_RESTRICT
#define OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_) && (OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_

#define OrgApacheLuceneAnalysisUtilTokenizerFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenizerFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"

@class OrgApacheLuceneAnalysisTokenizer;
@class OrgApacheLuceneUtilAttributeFactory;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisNgramNGramTokenizerFactory : OrgApacheLuceneAnalysisUtilTokenizerFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramNGramTokenizerFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNgramNGramTokenizerFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizerFactory *new_OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramNGramTokenizerFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNgramNGramTokenizerFactory_INCLUDE_ALL")
