//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/Lucene43StopFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLucene43StopFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreLucene43StopFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLucene43StopFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLucene43StopFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreLucene43StopFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreLucene43StopFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLucene43StopFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCoreLucene43StopFilter))
#define OrgApacheLuceneAnalysisCoreLucene43StopFilter_

#define RESTRICT_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 1
#include "org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Backcompat StopFilter for versions 4.3 and before.
 */
@interface OrgApacheLuceneAnalysisCoreLucene43StopFilter : OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithBoolean:(jboolean)enablePositionIncrements
   withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords;

#pragma mark Protected

/*!
 @brief Returns the next input Token whose term() is not a stop word.
 */
- (jboolean)accept;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithBoolean:(jboolean)arg0
   withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLucene43StopFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLucene43StopFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCoreLucene43StopFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLucene43StopFilter *new_OrgApacheLuceneAnalysisCoreLucene43StopFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLucene43StopFilter *create_OrgApacheLuceneAnalysisCoreLucene43StopFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLucene43StopFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLucene43StopFilter")
