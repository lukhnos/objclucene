//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fi/FinnishLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_) && (OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory *new_OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisFiFinnishLightStemFilterFactory_INCLUDE_ALL")
