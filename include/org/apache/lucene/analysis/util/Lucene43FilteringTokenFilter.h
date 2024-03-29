//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter))
#define OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Backcompat FilteringTokenFilter for versions 4.3 and before.
 */
@interface OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithBoolean:(jboolean)enablePositionIncrements
   withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

- (void)reset;

#pragma mark Protected

/*!
 @brief Override this method and return if the current input token should be returned by <code>incrementToken</code>.
 */
- (jboolean)accept;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter")
