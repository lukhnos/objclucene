//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hu/HungarianLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_) && (OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory *new_OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_INCLUDE_ALL")
