//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanNormalizationFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisDeGermanNormalizationFilter_RESTRICT
#define OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisDeGermanNormalizationFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisDeGermanNormalizationFilter_) && (OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisDeGermanNormalizationFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisDeGermanNormalizationFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanNormalizationFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisDeGermanNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanNormalizationFilter *new_OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanNormalizationFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisDeGermanNormalizationFilter_INCLUDE_ALL")
