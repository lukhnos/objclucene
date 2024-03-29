//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/QueryTermScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightQueryTermScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightQueryTermScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightQueryTermScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightQueryTermScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightQueryTermScorer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchHighlightQueryTermScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightQueryTermScorer || defined(INCLUDE_OrgApacheLuceneSearchHighlightQueryTermScorer))
#define OrgApacheLuceneSearchHighlightQueryTermScorer_

#define RESTRICT_OrgApacheLuceneSearchHighlightScorer 1
#define INCLUDE_OrgApacheLuceneSearchHighlightScorer 1
#include "org/apache/lucene/search/highlight/Scorer.h"

@class IOSObjectArray;
@class JavaUtilHashSet;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchHighlightTextFragment;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief <code>Scorer</code> implementation which scores text fragments by the number of
  unique query terms found.This class uses the <code>QueryTermExtractor</code>
  class to process determine the query terms and their boosts to be used.
 */
@interface OrgApacheLuceneSearchHighlightQueryTermScorer : NSObject < OrgApacheLuceneSearchHighlightScorer > {
 @public
  OrgApacheLuceneSearchHighlightTextFragment *currentTextFragment_;
  JavaUtilHashSet *uniqueTermsInFragment_;
  jfloat totalScore_;
  jfloat maxTermWeight_;
}

#pragma mark Public

/*!
 @param query a Lucene query (ideally rewritten using query.rewrite before         being passed to this class and the searcher)
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

/*!
 @param query a Lucene query (ideally rewritten using query.rewrite before         being passed to this class and the searcher)
 @param reader used to compute IDF which can be used to a) score selected         fragments better b) use graded highlights eg set font color
          intensity
 @param fieldName the field on which Inverse Document Frequency (IDF)         calculations are based
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                         withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                withNSString:(NSString *)fieldName;

/*!
 @param query a Lucene query (ideally rewritten using query.rewrite before         being passed to this class and the searcher)
 @param fieldName the Field name which is used to match Query terms
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                withNSString:(NSString *)fieldName;

- (instancetype __nonnull)initWithOrgApacheLuceneSearchHighlightWeightedTermArray:(IOSObjectArray *)weightedTerms;

- (void)allFragmentsProcessed;

- (jfloat)getFragmentScore;

/*!
 @return The highest weighted term (useful for passing to GradientFormatter
          to set top end of coloring scale.
 */
- (jfloat)getMaxTermWeight;

- (jfloat)getTokenScore;

- (OrgApacheLuceneAnalysisTokenStream *)init__WithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream OBJC_METHOD_FAMILY_NONE;

- (void)startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:(OrgApacheLuceneSearchHighlightTextFragment *)newFragment;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightQueryTermScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryTermScorer, currentTextFragment_, OrgApacheLuceneSearchHighlightTextFragment *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryTermScorer, uniqueTermsInFragment_, JavaUtilHashSet *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchHighlightQueryTermScorer *self, OrgApacheLuceneSearchQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *new_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *create_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(OrgApacheLuceneSearchHighlightQueryTermScorer *self, OrgApacheLuceneSearchQuery *query, NSString *fieldName);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *new_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(OrgApacheLuceneSearchQuery *query, NSString *fieldName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *create_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(OrgApacheLuceneSearchQuery *query, NSString *fieldName);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchHighlightQueryTermScorer *self, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *fieldName);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *new_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *fieldName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *create_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *fieldName);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchHighlightWeightedTermArray_(OrgApacheLuceneSearchHighlightQueryTermScorer *self, IOSObjectArray *weightedTerms);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *new_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchHighlightWeightedTermArray_(IOSObjectArray *weightedTerms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightQueryTermScorer *create_OrgApacheLuceneSearchHighlightQueryTermScorer_initWithOrgApacheLuceneSearchHighlightWeightedTermArray_(IOSObjectArray *weightedTerms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightQueryTermScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightQueryTermScorer")
