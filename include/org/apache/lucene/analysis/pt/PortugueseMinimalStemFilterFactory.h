//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseMinimalStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_) && (OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_INCLUDE_ALL")
