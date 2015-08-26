//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConstantScoreQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchConstantScoreQuery_RESTRICT
#define OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchConstantScoreQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchConstantScoreQuery_) && (OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL || OrgApacheLuceneSearchConstantScoreQuery_INCLUDE)
#define _OrgApacheLuceneSearchConstantScoreQuery_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchConstantScoreQuery : OrgApacheLuceneSearchQuery {
 @public
  OrgApacheLuceneSearchQuery *query_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchQuery *)getQuery;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery, query_, OrgApacheLuceneSearchQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *self, OrgApacheLuceneSearchQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchConstantScoreQuery *new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery)

#endif

#if !defined (_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_) && (OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL || OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_INCLUDE)
#define _OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_

#define OrgApacheLuceneSearchBulkScorer_RESTRICT 1
#define OrgApacheLuceneSearchBulkScorer_INCLUDE 1
#include "org/apache/lucene/search/BulkScorer.h"

@class OrgApacheLuceneSearchConstantScoreQuery;
@class OrgApacheLuceneSearchWeight;
@protocol OrgApacheLuceneSearchLeafCollector;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer : OrgApacheLuceneSearchBulkScorer {
 @public
  OrgApacheLuceneSearchBulkScorer *bulkScorer_;
  OrgApacheLuceneSearchWeight *weight_;
  jfloat theScore_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery:(OrgApacheLuceneSearchConstantScoreQuery *)outer$
                            withOrgApacheLuceneSearchBulkScorer:(OrgApacheLuceneSearchBulkScorer *)bulkScorer
                                withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                                      withFloat:(jfloat)theScore;

- (jlong)cost;

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer, bulkScorer_, OrgApacheLuceneSearchBulkScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer, weight_, OrgApacheLuceneSearchWeight *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *self, OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchBulkScorer *bulkScorer, OrgApacheLuceneSearchWeight *weight, jfloat theScore);

FOUNDATION_EXPORT OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchBulkScorer *bulkScorer, OrgApacheLuceneSearchWeight *weight, jfloat theScore) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchConstantScoreQuery_INCLUDE_ALL")
