//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/HyphenatedWordsFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_INCLUDE_ALL")