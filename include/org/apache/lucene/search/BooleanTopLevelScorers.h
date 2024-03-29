//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BooleanTopLevelScorers.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers")
#ifdef RESTRICT_OrgApacheLuceneSearchBooleanTopLevelScorers
#define INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchBooleanTopLevelScorers

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchBooleanTopLevelScorers_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers || defined(INCLUDE_OrgApacheLuceneSearchBooleanTopLevelScorers))
#define OrgApacheLuceneSearchBooleanTopLevelScorers_

/*!
 @brief Internal document-at-a-time scorers used to deal with stupid coord() computation
 */
@interface OrgApacheLuceneSearchBooleanTopLevelScorers : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanTopLevelScorers)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanTopLevelScorers_initPackagePrivate(OrgApacheLuceneSearchBooleanTopLevelScorers *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers *new_OrgApacheLuceneSearchBooleanTopLevelScorers_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers *create_OrgApacheLuceneSearchBooleanTopLevelScorers_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanTopLevelScorers)

#endif

#if !defined (OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers || defined(INCLUDE_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer))
#define OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_

#define RESTRICT_OrgApacheLuceneSearchFilterScorer 1
#define INCLUDE_OrgApacheLuceneSearchFilterScorer 1
#include "org/apache/lucene/search/FilterScorer.h"

@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilCollection;

/*!
 @brief Used when there is more than one scorer in a query, but a segment
  only had one non-null scorer.This just wraps that scorer directly
  to factor in coord().
 */
@interface OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer : OrgApacheLuceneSearchFilterScorer {
 @public
  jfloat boost_;
}

#pragma mark Public

- (id<JavaUtilCollection>)getChildren;

- (jfloat)score;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)inArg
                                                    withFloat:(jfloat)boost;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg0
                              withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer *self, OrgApacheLuceneSearchScorer *inArg, jfloat boost);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(OrgApacheLuceneSearchScorer *inArg, jfloat boost) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer *create_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(OrgApacheLuceneSearchScorer *inArg, jfloat boost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer)

#endif

#if !defined (OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers || defined(INCLUDE_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer))
#define OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_

#define RESTRICT_OrgApacheLuceneSearchConjunctionScorer 1
#define INCLUDE_OrgApacheLuceneSearchConjunctionScorer 1
#include "org/apache/lucene/search/ConjunctionScorer.h"

@class IOSFloatArray;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilList;

/*!
 @brief Used when there are both mandatory and optional clauses, but minShouldMatch
  dictates that some of the optional clauses must match.The query is a conjunction,
  but must compute coord based on how many optional subscorers matched (freq).
 */
@interface OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer : OrgApacheLuceneSearchConjunctionScorer

#pragma mark Public

- (jfloat)score;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                               withFloatArray:(IOSFloatArray *)coords
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)req
                                                      withInt:(jint)reqCount
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)opt;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0
                                                           withJavaUtilList:(id<JavaUtilList>)arg1
                                                           withJavaUtilList:(id<JavaUtilList>)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0
                                                           withJavaUtilList:(id<JavaUtilList>)arg1
                                                           withJavaUtilList:(id<JavaUtilList>)arg2
                                                                  withFloat:(jfloat)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer *self, OrgApacheLuceneSearchWeight *weight, IOSFloatArray *coords, OrgApacheLuceneSearchScorer *req, jint reqCount, OrgApacheLuceneSearchScorer *opt);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchWeight *weight, IOSFloatArray *coords, OrgApacheLuceneSearchScorer *req, jint reqCount, OrgApacheLuceneSearchScorer *opt) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer *create_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchWeight *weight, IOSFloatArray *coords, OrgApacheLuceneSearchScorer *req, jint reqCount, OrgApacheLuceneSearchScorer *opt);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer)

#endif

#if !defined (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers || defined(INCLUDE_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer))
#define OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_

#define RESTRICT_OrgApacheLuceneSearchReqOptSumScorer 1
#define INCLUDE_OrgApacheLuceneSearchReqOptSumScorer 1
#include "org/apache/lucene/search/ReqOptSumScorer.h"

@class OrgApacheLuceneSearchScorer;

/*!
 @brief Used when there are mandatory clauses with one optional clause: we compute
  coord based on whether the optional clause matched or not.
 */
@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer : OrgApacheLuceneSearchReqOptSumScorer

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)reqScorer
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)optScorer
                                                    withFloat:(jfloat)coordReq
                                                    withFloat:(jfloat)coordBoth;

- (jfloat)score;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg0
                                            withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer *self, OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jfloat coordReq, jfloat coordBoth);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jfloat coordReq, jfloat coordBoth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer *create_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jfloat coordReq, jfloat coordBoth);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)

#endif

#if !defined (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers || defined(INCLUDE_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer))
#define OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_

#define RESTRICT_OrgApacheLuceneSearchReqOptSumScorer 1
#define INCLUDE_OrgApacheLuceneSearchReqOptSumScorer 1
#include "org/apache/lucene/search/ReqOptSumScorer.h"

@class IOSFloatArray;
@class OrgApacheLuceneSearchScorer;

/*!
 @brief Used when there are mandatory clauses with optional clauses: we compute
  coord based on how many optional subscorers matched (freq).
 */
@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer : OrgApacheLuceneSearchReqOptSumScorer

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)reqScorer
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)optScorer
                                                      withInt:(jint)requiredCount
                                               withFloatArray:(IOSFloatArray *)coords;

- (jfloat)score;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg0
                                            withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer *self, OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jint requiredCount, IOSFloatArray *coords);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jint requiredCount, IOSFloatArray *coords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer *create_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer, jint requiredCount, IOSFloatArray *coords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchBooleanTopLevelScorers")
