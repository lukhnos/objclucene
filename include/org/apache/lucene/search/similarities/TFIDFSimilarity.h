//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/TFIDFSimilarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_) && (OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_

#define OrgApacheLuceneSearchSimilaritiesSimilarity_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesSimilarity_INCLUDE 1
#include "org/apache/lucene/search/similarities/Similarity.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchCollectionStatistics;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;
@class OrgApacheLuceneSearchTermStatistics;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity : OrgApacheLuceneSearchSimilaritiesSimilarity

#pragma mark Public

- (instancetype)init;

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap;

- (jfloat)decodeNormValueWithLong:(jlong)norm;

- (jlong)encodeNormValueWithFloat:(jfloat)f;

- (jfloat)idfWithLong:(jlong)docFreq
             withLong:(jlong)numDocs;

- (OrgApacheLuceneSearchExplanation *)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                                      withOrgApacheLuceneSearchTermStatistics:(OrgApacheLuceneSearchTermStatistics *)termStats;

- (OrgApacheLuceneSearchExplanation *)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                                 withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

- (jfloat)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

- (jfloat)queryNormWithFloat:(jfloat)sumOfSquaredWeights;

- (jfloat)scorePayloadWithInt:(jint)doc
                      withInt:(jint)start
                      withInt:(jint)end
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jfloat)sloppyFreqWithInt:(jint)distance;

- (jfloat)tfWithFloat:(jfloat)freq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_init(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_INCLUDE_ALL")
