//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseMinimalStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_) && (OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter *new_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilter_INCLUDE_ALL")
