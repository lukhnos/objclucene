//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/no/NorwegianLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_) && (OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory *new_OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNoNorwegianLightStemFilterFactory_INCLUDE_ALL")
