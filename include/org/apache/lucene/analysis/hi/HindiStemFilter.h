//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hi/HindiStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisHiHindiStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisHiHindiStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisHiHindiStemFilter_) && (OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisHiHindiStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisHiHindiStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHiHindiStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHiHindiStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHiHindiStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHiHindiStemFilter *new_OrgApacheLuceneAnalysisHiHindiStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHiHindiStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisHiHindiStemFilter_INCLUDE_ALL")
