//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cz/CzechStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCzCzechStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCzCzechStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCzCzechStemFilterFactory_) && (OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisCzCzechStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisCzCzechStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCzCzechStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCzCzechStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCzCzechStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCzCzechStemFilterFactory *new_OrgApacheLuceneAnalysisCzCzechStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCzCzechStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCzCzechStemFilterFactory_INCLUDE_ALL")