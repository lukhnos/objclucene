//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_) && (OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisCkbSoraniStemFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCkbSoraniStemFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory *new_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_INCLUDE_ALL")
