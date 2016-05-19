//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternCaptureGroupTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter

#if !defined (OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter))
#define OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief CaptureGroup uses Java regexes to emit multiple tokens - one for each capture
 group in one or more patterns.
 <p>
 For example, a pattern like:
 </p>
 <p>
 <code>"(https?://([a-zA-Z\-_0-9.]+))"</code>
 </p>
 <p>
 when matched against the string "http://www.foo.com/index" would return the
 tokens "https://www.foo.com" and "www.foo.com".
 </p>
 <p>
 If none of the patterns match, or if preserveOriginal is true, the original
 token will be preserved.
 </p>
 <p>
 Each pattern is matched as often as it can be, so the pattern
 <code> "(...)"</code>, when matched against <code>"abcdefghi"</code> would
 produce <code>["abc","def","ghi"]</code>
 </p>
 <p>
 A camelCaseFilter could be written as:
 </p>
 <p>
 <code>
 "([A-Z]{2,})",                                 
 "(?&lt;![A-Z])([A-Z][a-z]+)",                     
 "(?:^|\\b|(?&lt;=[0-9_])|(?&lt;=[A-Z]{2}))([a-z]+)",
 "([0-9]+)"
 </code>
 </p>
 <p>
 plus if <code>preserveOriginal</code> is true, it would also return
 <code>"camelCaseFilter"</code>
 </p>
 */
@interface OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @param input
 the input <code>TokenStream</code>
 @param preserveOriginal
 set to true to return the original token even if one of the
 patterns matches
 @param patterns
 an array of <code>Pattern</code> objects to match against each token
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                               withBoolean:(jboolean)preserveOriginal
                             withJavaUtilRegexPatternArray:(IOSObjectArray *)patterns;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *new_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *create_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter")
