//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fi/FinnishLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFiFinnishLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisFiFinnishLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFiFinnishLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFiFinnishLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisFiFinnishLightStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisFiFinnishLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisFiFinnishLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisFiFinnishLightStemFilter))
#define OrgApacheLuceneAnalysisFiFinnishLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>FinnishLightStemmer</code> to stem Finnish
  words.
 <p>
  To prevent terms from being stemmed use an instance of 
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
  the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
  </p>
 */
@interface OrgApacheLuceneAnalysisFiFinnishLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFiFinnishLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFiFinnishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisFiFinnishLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishLightStemFilter *new_OrgApacheLuceneAnalysisFiFinnishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishLightStemFilter *create_OrgApacheLuceneAnalysisFiFinnishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFiFinnishLightStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFiFinnishLightStemFilter")
