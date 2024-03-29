//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LowerCaseFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreLowerCaseFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCoreLowerCaseFilter))
#define OrgApacheLuceneAnalysisCoreLowerCaseFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Normalizes token text to lower case.
 */
@interface OrgApacheLuceneAnalysisCoreLowerCaseFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @brief Create a new LowerCaseFilter, that normalizes token text to lower case.
 @param inArg TokenStream to filter
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLowerCaseFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCoreLowerCaseFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseFilter *new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseFilter *create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLowerCaseFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseFilter")
