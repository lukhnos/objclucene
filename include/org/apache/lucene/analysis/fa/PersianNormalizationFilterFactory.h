//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianNormalizationFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_) && (OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_INCLUDE 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisFaPersianNormalizationFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisFaPersianNormalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory *new_OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisFaPersianNormalizationFilterFactory_INCLUDE_ALL")
