//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter))
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief This TokenFilter limits its emitted tokens to those with positions that
  are not greater than the configured limit.
 <p>
  By default, this filter ignores any tokens in the wrapped <code>TokenStream</code>
  once the limit has been exceeded, which can result in <code>reset()</code> being 
  called prior to <code>incrementToken()</code> returning <code>false</code>.  For most  
 <code>TokenStream</code> implementations this should be acceptable, and faster 
  then consuming the full stream. If you are wrapping a <code>TokenStream</code>
  which requires that the full stream of tokens be exhausted in order to 
  function properly, use the  
 <code>consumeAllTokens</code>
  option.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @brief Build a filter that only accepts tokens up to and including the given maximum position.
 This filter will not consume any tokens with position greater than the maxTokenPosition limit.
 @param inArg the stream to wrap
 @param maxTokenPosition max position of tokens to produce (1st token always has position 1)
 - seealso: #LimitTokenPositionFilter(TokenStream,int,boolean)
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                             withInt:(jint)maxTokenPosition;

/*!
 @brief Build a filter that limits the maximum position of tokens to emit.
 @param inArg the stream to wrap
 @param maxTokenPosition max position of tokens to produce (1st token always has position 1)
 @param consumeAllTokens whether all tokens from the wrapped input stream must be consumed                          even if maxTokenPosition is exceeded.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                             withInt:(jint)maxTokenPosition
                                                         withBoolean:(jboolean)consumeAllTokens;

- (jboolean)incrementToken;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter")
