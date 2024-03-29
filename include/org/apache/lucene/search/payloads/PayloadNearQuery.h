//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadNearQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadNearQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadNearQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchPayloadsPayloadNearQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadNearQuery))
#define OrgApacheLuceneSearchPayloadsPayloadNearQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanNearQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanNearQuery 1
#include "org/apache/lucene/search/spans/SpanNearQuery.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchPayloadsPayloadFunction;
@class OrgApacheLuceneSearchSpansSpanWeight;

/*!
 @brief This class is very similar to 
 <code>org.apache.lucene.search.spans.SpanNearQuery</code> except that it factors
  in the value of the payloads located at each of the positions where the 
 <code>org.apache.lucene.search.spans.TermSpans</code> occurs.
 <p>
  NOTE: In order to take advantage of this with the default scoring implementation
  (<code>DefaultSimilarity</code>), you must override <code>DefaultSimilarity.scorePayload(int, int, int, BytesRef)</code>,
  which returns 1 by default. 
 <p>
  Payload scores are aggregated using a pluggable <code>PayloadFunction</code>.
 - seealso: org.apache.lucene.search.similarities.Similarity.SimScorer#computePayloadFactor(int, int, int, BytesRef)
 */
@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery : OrgApacheLuceneSearchSpansSpanNearQuery {
 @public
  NSString *fieldName_;
  OrgApacheLuceneSearchPayloadsPayloadFunction *function_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                                   withInt:(jint)slop
                                                               withBoolean:(jboolean)inOrder;

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                                   withInt:(jint)slop
                                                               withBoolean:(jboolean)inOrder
                          withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function;

- (OrgApacheLuceneSearchPayloadsPayloadNearQuery *)java_clone;

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)arg0
                                                                   withInt:(jint)arg1
                                                               withBoolean:(jboolean)arg2
                                                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadNearQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery, fieldName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery, function_, OrgApacheLuceneSearchPayloadsPayloadFunction *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder);

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadNearQuery)

#endif

#if !defined (OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight))
#define OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanNearQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanNearQuery_SpanNearWeight 1
#include "org/apache/lucene/search/spans/SpanNearQuery.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchPayloadsPayloadNearQuery;
@class OrgApacheLuceneSearchScorer;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight : OrgApacheLuceneSearchSpansSpanNearQuery_SpanNearWeight

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                                               withJavaUtilList:(id<JavaUtilList>)subWeights
                                         withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                withJavaUtilMap:(id<JavaUtilMap>)terms;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)outer$
                                                         withJavaUtilList:(id<JavaUtilList>)arg0
                                   withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)arg1
                                                          withJavaUtilMap:(id<JavaUtilMap>)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight)

#endif

#if !defined (OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer))
#define OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanScorer 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanScorer 1
#include "org/apache/lucene/search/spans/SpanScorer.h"

@class OrgApacheLuceneSearchPayloadsPayloadNearQuery;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchSpansSpanWeight;
@class OrgApacheLuceneSearchSpansSpans;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer : OrgApacheLuceneSearchSpansSpanScorer {
 @public
  OrgApacheLuceneSearchSpansSpans *spans_PayloadNearSpanScorer_;
  jfloat payloadScore_;
  OrgApacheLuceneUtilBytesRef *scratch_;
}

#pragma mark Public

- (jfloat)scoreCurrentDoc;

#pragma mark Protected

- (instancetype __nonnull)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                            withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                                       withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
                      withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer;

- (void)doCurrentSpans;

- (void)doStartCurrentDoc;

/*!
 @brief By default, uses the <code>PayloadFunction</code> to score the payloads, but
  can be overridden to do other things.
 @param payLoads The payloads
 @param start The start position of the span being scored
 @param end The end position of the span being scored
 - seealso: Spans
 */
- (void)processPayloadsWithJavaUtilCollection:(id<JavaUtilCollection>)payLoads
                                      withInt:(jint)start
                                      withInt:(jint)end;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg0
                         withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)arg1
        withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, spans_PayloadNearSpanScorer_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, scratch_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadNearQuery")
