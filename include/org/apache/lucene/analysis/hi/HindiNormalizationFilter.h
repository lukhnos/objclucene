//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hi/HindiNormalizationFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiNormalizationFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisHiHindiNormalizationFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiNormalizationFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiNormalizationFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisHiHindiNormalizationFilter

#if !defined (OrgApacheLuceneAnalysisHiHindiNormalizationFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiNormalizationFilter || defined(INCLUDE_OrgApacheLuceneAnalysisHiHindiNormalizationFilter))
#define OrgApacheLuceneAnalysisHiHindiNormalizationFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>HindiNormalizer</code> to normalize the
 orthography.
 <p>
 In some cases the normalization may cause unrelated terms to conflate, so
 to prevent terms from being normalized use an instance of
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
 the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
 </p>
 - seealso: HindiNormalizer
 */
@interface OrgApacheLuceneAnalysisHiHindiNormalizationFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHiHindiNormalizationFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHiHindiNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHiHindiNormalizationFilter *new_OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHiHindiNormalizationFilter *create_OrgApacheLuceneAnalysisHiHindiNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHiHindiNormalizationFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiNormalizationFilter")
