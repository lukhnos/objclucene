//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BM25Similarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBM25Similarity_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBM25Similarity_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBM25Similarity_) && (OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBM25Similarity_

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

@interface OrgApacheLuceneSearchSimilaritiesBM25Similarity : OrgApacheLuceneSearchSimilaritiesSimilarity {
 @public
  jboolean discountOverlaps_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)k1
                    withFloat:(jfloat)b;

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

- (jfloat)getB;

- (jboolean)getDiscountOverlaps;

- (jfloat)getK1;

- (OrgApacheLuceneSearchExplanation *)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                                      withOrgApacheLuceneSearchTermStatistics:(OrgApacheLuceneSearchTermStatistics *)termStats;

- (OrgApacheLuceneSearchExplanation *)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                                 withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

- (void)setDiscountOverlapsWithBoolean:(jboolean)v;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (NSString *)description;

#pragma mark Protected

- (jfloat)avgFieldLengthWithOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats;

- (jfloat)decodeNormValueWithByte:(jbyte)b;

- (jbyte)encodeNormValueWithFloat:(jfloat)boost
                          withInt:(jint)fieldLength;

- (jfloat)idfWithLong:(jlong)docFreq
             withLong:(jlong)numDocs;

- (jfloat)scorePayloadWithInt:(jint)doc
                      withInt:(jint)start
                      withInt:(jint)end
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (jfloat)sloppyFreqWithInt:(jint)distance;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBM25Similarity)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBM25Similarity_initWithFloat_withFloat_(OrgApacheLuceneSearchSimilaritiesBM25Similarity *self, jfloat k1, jfloat b);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBM25Similarity *new_OrgApacheLuceneSearchSimilaritiesBM25Similarity_initWithFloat_withFloat_(jfloat k1, jfloat b) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBM25Similarity_init(OrgApacheLuceneSearchSimilaritiesBM25Similarity *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBM25Similarity *new_OrgApacheLuceneSearchSimilaritiesBM25Similarity_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBM25Similarity)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBM25Similarity_INCLUDE_ALL")
