//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternReplaceCharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_) && (OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_

#define OrgApacheLuceneAnalysisUtilCharFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisCharFilter;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory : OrgApacheLuceneAnalysisUtilCharFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCharFilter *)createWithJavaIoReader:(JavaIoReader *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory *new_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_INCLUDE_ALL")