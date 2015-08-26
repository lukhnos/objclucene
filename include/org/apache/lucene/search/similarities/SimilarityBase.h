//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/SimilarityBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesSimilarityBase_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesSimilarityBase_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesSimilarityBase_) && (OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesSimilarityBase_

#define OrgApacheLuceneSearchSimilaritiesSimilarity_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesSimilarity_INCLUDE 1
#include "org/apache/lucene/search/similarities/Similarity.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchCollectionStatistics;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;
@class OrgApacheLuceneSearchTermStatistics;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchSimilaritiesSimilarityBase : OrgApacheLuceneSearchSimilaritiesSimilarity {
 @public
  jboolean discountOverlaps_;
}

#pragma mark Public

- (instancetype)init;

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

- (jboolean)getDiscountOverlaps;

+ (jdouble)log2WithDouble:(jdouble)x;

- (void)setDiscountOverlapsWithBoolean:(jboolean)v;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (NSString *)description;

#pragma mark Protected

- (jfloat)decodeNormValueWithByte:(jbyte)norm;

- (jbyte)encodeNormValueWithFloat:(jfloat)boost
                        withFloat:(jfloat)length;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                     withInt:(jint)doc
                                                        withOrgApacheLuceneSearchExplanation:(OrgApacheLuceneSearchExplanation *)freq
                                                                                   withFloat:(jfloat)docLen;

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subExpls
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen;

- (void)fillBasicStatsWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                              withOrgApacheLuceneSearchTermStatistics:(OrgApacheLuceneSearchTermStatistics *)termStats;

- (OrgApacheLuceneSearchSimilaritiesBasicStats *)newStatsWithNSString:(NSString *)field
                                                            withFloat:(jfloat)queryBoost OBJC_METHOD_FAMILY_NONE;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesSimilarityBase)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesSimilarityBase_init(OrgApacheLuceneSearchSimilaritiesSimilarityBase *self);

FOUNDATION_EXPORT jdouble OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(jdouble x);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesSimilarityBase)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE_ALL")
