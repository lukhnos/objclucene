//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisArArabicStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisArArabicStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisArArabicStemFilter_) && (OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisArArabicStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisArArabicStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisArArabicStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisArArabicStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicStemFilter *new_OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisArArabicStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisArArabicStemFilter_INCLUDE_ALL")
