//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanPositionRangeQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionRangeQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionRangeQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansSpanPositionRangeQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanPositionRangeQuery))
#define OrgApacheLuceneSearchSpansSpanPositionRangeQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 1
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"

@class OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus;
@class OrgApacheLuceneSearchSpansSpanQuery;
@class OrgApacheLuceneSearchSpansSpans;

/*!
 @brief Checks to see if the <code>getMatch()</code> lies between a start and end position
  See <code>SpanFirstQuery</code> for a derivation that is optimized for the case where start position is 0.
 */
@interface OrgApacheLuceneSearchSpansSpanPositionRangeQuery : OrgApacheLuceneSearchSpansSpanPositionCheckQuery {
 @public
  jint start_;
  jint end_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                              withInt:(jint)start
                                                              withInt:(jint)end;

- (OrgApacheLuceneSearchSpansSpanPositionRangeQuery *)java_clone;

- (jboolean)isEqual:(id)o;

/*!
 @return the maximum end position permitted in a match.
 */
- (jint)getEnd;

/*!
 @return The minimum position permitted in a match
 */
- (jint)getStart;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanPositionRangeQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionRangeQuery *new_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionRangeQuery *create_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery")
