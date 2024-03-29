//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ScoringRewrite.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite")
#ifdef RESTRICT_OrgApacheLuceneSearchScoringRewrite
#define INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchScoringRewrite

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchScoringRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite || defined(INCLUDE_OrgApacheLuceneSearchScoringRewrite))
#define OrgApacheLuceneSearchScoringRewrite_

#define RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite 1
#define INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite 1
#include "org/apache/lucene/search/TermCollectingRewrite.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief Base rewrite method that translates each term into a query, and keeps
  the scores as computed by the query.
 <p>
 */
@interface OrgApacheLuceneSearchScoringRewrite : OrgApacheLuceneSearchTermCollectingRewrite
@property (readonly, class, strong) OrgApacheLuceneSearchScoringRewrite *SCORING_BOOLEAN_REWRITE NS_SWIFT_NAME(SCORING_BOOLEAN_REWRITE);
@property (readonly, class, strong) OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *CONSTANT_SCORE_BOOLEAN_REWRITE NS_SWIFT_NAME(CONSTANT_SCORE_BOOLEAN_REWRITE);

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

#pragma mark Protected

/*!
 @brief This method is called after every new term to check if the number of max clauses
  (e.g.in BooleanQuery) is not exceeded.
 Throws the corresponding <code>RuntimeException</code>.
 */
- (void)checkMaxClauseCountWithInt:(jint)count;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivate NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite)

/*!
 @brief A rewrite method that first translates each term into
   <code>BooleanClause.Occur.SHOULD</code> clause in a
   BooleanQuery, and keeps the scores as computed by the
   query.Note that typically such scores are
   meaningless to the user, and require non-trivial CPU
   to compute, so it's almost always better to use <code>MultiTermQuery.CONSTANT_SCORE_REWRITE</code>
  instead.
 <p><b>NOTE</b>: This rewrite method will hit <code>BooleanQuery.TooManyClauses</code>
  if the number of terms
   exceeds <code>BooleanQuery.getMaxClauseCount</code>.
 - seealso: MultiTermQuery#setRewriteMethod
 */
inline OrgApacheLuceneSearchScoringRewrite *OrgApacheLuceneSearchScoringRewrite_get_SCORING_BOOLEAN_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchScoringRewrite *OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchScoringRewrite, SCORING_BOOLEAN_REWRITE, OrgApacheLuceneSearchScoringRewrite *)

/*!
 @brief Like <code>SCORING_BOOLEAN_REWRITE</code> except
   scores are not computed.Instead, each matching
   document receives a constant score equal to the
   query's boost.
 <p><b>NOTE</b>: This rewrite method will hit <code>BooleanQuery.TooManyClauses</code>
  if the number of terms
   exceeds <code>BooleanQuery.getMaxClauseCount</code>.
 - seealso: MultiTermQuery#setRewriteMethod
 */
inline OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchScoringRewrite_get_CONSTANT_SCORE_BOOLEAN_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchScoringRewrite, CONSTANT_SCORE_BOOLEAN_REWRITE, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoringRewrite_init(OrgApacheLuceneSearchScoringRewrite *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoringRewrite)

#endif

#if !defined (OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite || defined(INCLUDE_OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector))
#define OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_

#define RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite 1
#define INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite_TermCollector 1
#include "org/apache/lucene/search/TermCollectingRewrite.h"

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchScoringRewrite;
@class OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefHash;

@interface OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector : OrgApacheLuceneSearchTermCollectingRewrite_TermCollector {
 @public
  OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart *array_;
  OrgApacheLuceneUtilBytesRefHash *terms_;
  OrgApacheLuceneIndexTermsEnum *termsEnum_;
}

#pragma mark Public

- (jboolean)collectWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScoringRewrite:(OrgApacheLuceneSearchScoringRewrite *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector, array_, OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector, terms_, OrgApacheLuceneUtilBytesRefHash *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector, termsEnum_, OrgApacheLuceneIndexTermsEnum *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_initWithOrgApacheLuceneSearchScoringRewrite_(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector *self, OrgApacheLuceneSearchScoringRewrite *outer$);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector *new_OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_initWithOrgApacheLuceneSearchScoringRewrite_(OrgApacheLuceneSearchScoringRewrite *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector *create_OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_initWithOrgApacheLuceneSearchScoringRewrite_(OrgApacheLuceneSearchScoringRewrite *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector)

#endif

#if !defined (OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart_) && (INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite || defined(INCLUDE_OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart))
#define OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart_

#define RESTRICT_OrgApacheLuceneUtilBytesRefHash 1
#define INCLUDE_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray 1
#include "org/apache/lucene/util/BytesRefHash.h"

@class IOSFloatArray;
@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilCounter;

/*!
 @brief Special implementation of BytesStartArray that keeps parallel arrays for boost and docFreq
 */
@interface OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart : OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray {
 @public
  IOSFloatArray *boost_;
  IOSObjectArray *termState_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)initSize;

- (IOSIntArray *)clear;

- (IOSIntArray *)grow;

- (IOSIntArray *)init__ OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0
       withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart, boost_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart, termState_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart_initWithInt_(OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart *self, jint initSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart *new_OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart_initWithInt_(jint initSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart *create_OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart_initWithInt_(jint initSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchScoringRewrite")
