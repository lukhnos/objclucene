//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/KStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisEnKStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisEnKStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisEnKStemFilter_) && (OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisEnKStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisEnKStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnKStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnKStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisEnKStemFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnKStemFilter *new_OrgApacheLuceneAnalysisEnKStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnKStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisEnKStemFilter_INCLUDE_ALL")
