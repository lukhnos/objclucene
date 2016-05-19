//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BooleanScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchBooleanScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchBooleanScorer

#if !defined (OrgApacheLuceneSearchBooleanScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer))
#define OrgApacheLuceneSearchBooleanScorer_

#define RESTRICT_OrgApacheLuceneSearchBulkScorer 1
#define INCLUDE_OrgApacheLuceneSearchBulkScorer 1
#include "org/apache/lucene/search/BulkScorer.h"

@class IOSFloatArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue;
@class OrgApacheLuceneSearchBooleanScorer_OrCollector;
@class OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue;
@class OrgApacheLuceneSearchBooleanWeight;
@class OrgApacheLuceneSearchFakeScorer;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneSearchLeafCollector;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief <code>BulkScorer</code> that is used for pure disjunctions and disjunctions
 that have low values of <code>BooleanQuery.Builder.setMinimumNumberShouldMatch(int)</code>
 and dense clauses.
 This scorer scores documents by batches of 2048 docs.
 */
@interface OrgApacheLuceneSearchBooleanScorer : OrgApacheLuceneSearchBulkScorer {
 @public
  IOSObjectArray *buckets_;
  IOSLongArray *matching_;
  IOSFloatArray *coordFactors_;
  IOSObjectArray *leads_;
  OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue *head_;
  OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue *tail_;
  OrgApacheLuceneSearchFakeScorer *fakeScorer_;
  jint minShouldMatch_;
  jlong cost_;
  OrgApacheLuceneSearchBooleanScorer_OrCollector *orCollector_;
}

+ (jint)SHIFT;

+ (jint)SIZE;

+ (jint)MASK;

+ (jint)SET_SIZE;

+ (jint)SET_MASK;

#pragma mark Public

- (jlong)cost;

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchBooleanWeight:(OrgApacheLuceneSearchBooleanWeight *)weight
                                               withBoolean:(jboolean)disableCoord
                                                   withInt:(jint)maxCoord
                                    withJavaUtilCollection:(id<JavaUtilCollection>)scorers
                                                   withInt:(jint)minShouldMatch
                                               withBoolean:(jboolean)needsScores;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, buckets_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, matching_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, coordFactors_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, leads_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, head_, OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, tail_, OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, fakeScorer_, OrgApacheLuceneSearchFakeScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanScorer, orCollector_, OrgApacheLuceneSearchBooleanScorer_OrCollector *)

inline jint OrgApacheLuceneSearchBooleanScorer_get_SHIFT();
#define OrgApacheLuceneSearchBooleanScorer_SHIFT 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchBooleanScorer, SHIFT, jint)

inline jint OrgApacheLuceneSearchBooleanScorer_get_SIZE();
#define OrgApacheLuceneSearchBooleanScorer_SIZE 2048
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchBooleanScorer, SIZE, jint)

inline jint OrgApacheLuceneSearchBooleanScorer_get_MASK();
#define OrgApacheLuceneSearchBooleanScorer_MASK 2047
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchBooleanScorer, MASK, jint)

inline jint OrgApacheLuceneSearchBooleanScorer_get_SET_SIZE();
#define OrgApacheLuceneSearchBooleanScorer_SET_SIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchBooleanScorer, SET_SIZE, jint)

inline jint OrgApacheLuceneSearchBooleanScorer_get_SET_MASK();
#define OrgApacheLuceneSearchBooleanScorer_SET_MASK 31
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchBooleanScorer, SET_MASK, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(OrgApacheLuceneSearchBooleanScorer *self, OrgApacheLuceneSearchBooleanWeight *weight, jboolean disableCoord, jint maxCoord, id<JavaUtilCollection> scorers, jint minShouldMatch, jboolean needsScores);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer *new_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(OrgApacheLuceneSearchBooleanWeight *weight, jboolean disableCoord, jint maxCoord, id<JavaUtilCollection> scorers, jint minShouldMatch, jboolean needsScores) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer *create_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(OrgApacheLuceneSearchBooleanWeight *weight, jboolean disableCoord, jint maxCoord, id<JavaUtilCollection> scorers, jint minShouldMatch, jboolean needsScores);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer)

#endif

#if !defined (OrgApacheLuceneSearchBooleanScorer_Bucket_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer_Bucket))
#define OrgApacheLuceneSearchBooleanScorer_Bucket_

@interface OrgApacheLuceneSearchBooleanScorer_Bucket : NSObject {
 @public
  jdouble score_;
  jint freq_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer_Bucket)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_Bucket_init(OrgApacheLuceneSearchBooleanScorer_Bucket *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_Bucket *new_OrgApacheLuceneSearchBooleanScorer_Bucket_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_Bucket *create_OrgApacheLuceneSearchBooleanScorer_Bucket_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer_Bucket)

#endif

#if !defined (OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc))
#define OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_

@class OrgApacheLuceneSearchBooleanScorer;
@class OrgApacheLuceneSearchBulkScorer;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc : NSObject {
 @public
  __unsafe_unretained OrgApacheLuceneSearchBulkScorer *scorer_;
  jlong cost_;
  jint next_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchBooleanScorer:(OrgApacheLuceneSearchBooleanScorer *)outer$
                       withOrgApacheLuceneSearchBulkScorer:(OrgApacheLuceneSearchBulkScorer *)scorer;

- (void)advanceWithInt:(jint)min;

- (void)scoreWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                 withInt:(jint)min
                                 withInt:(jint)max;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_initWithOrgApacheLuceneSearchBooleanScorer_withOrgApacheLuceneSearchBulkScorer_(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *self, OrgApacheLuceneSearchBooleanScorer *outer$, OrgApacheLuceneSearchBulkScorer *scorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *new_OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_initWithOrgApacheLuceneSearchBooleanScorer_withOrgApacheLuceneSearchBulkScorer_(OrgApacheLuceneSearchBooleanScorer *outer$, OrgApacheLuceneSearchBulkScorer *scorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *create_OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_initWithOrgApacheLuceneSearchBooleanScorer_withOrgApacheLuceneSearchBulkScorer_(OrgApacheLuceneSearchBooleanScorer *outer$, OrgApacheLuceneSearchBulkScorer *scorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc)

#endif

#if !defined (OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue))
#define OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc;

@interface OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)a
                    withId:(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue_initWithInt_(OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue *new_OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue *create_OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue)

#endif

#if !defined (OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue))
#define OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc;

@interface OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

- (OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)getWithInt:(jint)i;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)a
                    withId:(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue_initWithInt_(OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue *new_OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue *create_OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue)

#endif

#if !defined (OrgApacheLuceneSearchBooleanScorer_OrCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer || defined(INCLUDE_OrgApacheLuceneSearchBooleanScorer_OrCollector))
#define OrgApacheLuceneSearchBooleanScorer_OrCollector_

#define RESTRICT_OrgApacheLuceneSearchLeafCollector 1
#define INCLUDE_OrgApacheLuceneSearchLeafCollector 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneSearchBooleanScorer;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchBooleanScorer_OrCollector : NSObject < OrgApacheLuceneSearchLeafCollector > {
 @public
  __unsafe_unretained OrgApacheLuceneSearchScorer *scorer_;
}

#pragma mark Public

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchBooleanScorer:(OrgApacheLuceneSearchBooleanScorer *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanScorer_OrCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanScorer_OrCollector_initWithOrgApacheLuceneSearchBooleanScorer_(OrgApacheLuceneSearchBooleanScorer_OrCollector *self, OrgApacheLuceneSearchBooleanScorer *outer$);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_OrCollector *new_OrgApacheLuceneSearchBooleanScorer_OrCollector_initWithOrgApacheLuceneSearchBooleanScorer_(OrgApacheLuceneSearchBooleanScorer *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanScorer_OrCollector *create_OrgApacheLuceneSearchBooleanScorer_OrCollector_initWithOrgApacheLuceneSearchBooleanScorer_(OrgApacheLuceneSearchBooleanScorer *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanScorer_OrCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchBooleanScorer")
