//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_) && (OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (jboolean)incrementToken;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)isKeyword;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_INCLUDE_ALL")
