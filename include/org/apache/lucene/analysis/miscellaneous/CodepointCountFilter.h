//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/CodepointCountFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter))
#define OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_

#define RESTRICT_OrgApacheLuceneAnalysisUtilFilteringTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilFilteringTokenFilter 1
#include "org/apache/lucene/analysis/util/FilteringTokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Removes words that are too long or too short from the stream.
 <p>
  Note: Length is calculated as the number of Unicode codepoints. 
 </p>
 */
@interface OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter : OrgApacheLuceneAnalysisUtilFilteringTokenFilter

#pragma mark Public

/*!
 @brief Create a new <code>CodepointCountFilter</code>.This will filter out tokens whose 
 <code>CharTermAttribute</code> is either too short (<code>Character.codePointCount(char[], int, int)</code>
  &lt; min) or too long (<code>Character.codePointCount(char[], int, int)</code> &gt; max).
 @param inArg the <code>TokenStream</code>  to consume
 @param min the minimum length
 @param max the maximum length
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                             withInt:(jint)min
                                                             withInt:(jint)max;

- (jboolean)accept;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter *new_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter *create_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter")
