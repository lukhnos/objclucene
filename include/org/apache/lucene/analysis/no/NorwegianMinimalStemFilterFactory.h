//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/no/NorwegianMinimalStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_) && (OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNoNorwegianMinimalStemFilterFactory_INCLUDE_ALL")
