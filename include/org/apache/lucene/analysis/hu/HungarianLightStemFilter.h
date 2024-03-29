//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hu/HungarianLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHuHungarianLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisHuHungarianLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHuHungarianLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHuHungarianLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisHuHungarianLightStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisHuHungarianLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisHuHungarianLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisHuHungarianLightStemFilter))
#define OrgApacheLuceneAnalysisHuHungarianLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>HungarianLightStemmer</code> to stem
  Hungarian words.
 <p>
  To prevent terms from being stemmed use an instance of 
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
  the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
  </p>
 */
@interface OrgApacheLuceneAnalysisHuHungarianLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHuHungarianLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHuHungarianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHuHungarianLightStemFilter *new_OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHuHungarianLightStemFilter *create_OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHuHungarianLightStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHuHungarianLightStemFilter")
