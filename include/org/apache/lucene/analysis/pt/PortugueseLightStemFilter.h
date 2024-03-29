//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter))
#define OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>PortugueseLightStemmer</code> to stem 
  Portuguese words.
 <p>
  To prevent terms from being stemmed use an instance of 
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
  the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
  </p>
 */
@interface OrgApacheLuceneAnalysisPtPortugueseLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *new_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseLightStemFilter *create_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseLightStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter")
