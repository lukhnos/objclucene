//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianFoldingFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_) && (OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_INCLUDE_ALL")