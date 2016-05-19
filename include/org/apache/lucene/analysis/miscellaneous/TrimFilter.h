//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TrimFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTrimFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTrimFilter

#if !defined (OrgApacheLuceneAnalysisMiscellaneousTrimFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousTrimFilter))
#define OrgApacheLuceneAnalysisMiscellaneousTrimFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Trims leading and trailing whitespace from Tokens in the stream.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousTrimFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @brief Create a new <code>TrimFilter</code>.
 @param inArg            the stream to consume
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousTrimFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousTrimFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousTrimFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTrimFilter *new_OrgApacheLuceneAnalysisMiscellaneousTrimFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTrimFilter *create_OrgApacheLuceneAnalysisMiscellaneousTrimFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousTrimFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilter")
