//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter))
#define OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_

#define RESTRICT_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter 1
#include "org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Marks terms as keywords via the <code>KeywordAttribute</code>.Each token
  contained in the provided set is marked as a keyword by setting 
 <code>KeywordAttribute.setKeyword(boolean)</code> to <code>true</code>.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter : OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter

#pragma mark Public

/*!
 @brief Create a new KeywordSetMarkerFilter, that marks the current token as a
  keyword if the tokens term buffer is contained in the given set via the 
 <code>KeywordAttribute</code>.
 @param inArg TokenStream to filter
 @param keywordSet the keywords set to lookup the current termbuffer
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                         withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)keywordSet;

#pragma mark Protected

- (jboolean)isKeyword;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *new_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter")
