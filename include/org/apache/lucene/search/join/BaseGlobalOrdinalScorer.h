//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BaseGlobalOrdinalScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_RESTRICT
#define OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_) && (OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE_ALL || OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE)
#define _OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_

#define OrgApacheLuceneSearchScorer_RESTRICT 1
#define OrgApacheLuceneSearchScorer_INCLUDE 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer : OrgApacheLuceneSearchScorer {
 @public
  OrgApacheLuceneIndexSortedDocValues *values_;
  OrgApacheLuceneSearchScorer *approximationScorer_;
  jfloat score_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
            withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)approximationScorer;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

#pragma mark Protected

- (OrgApacheLuceneSearchTwoPhaseIterator *)createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)approximation;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer, values_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer, approximationScorer_, OrgApacheLuceneSearchScorer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_INCLUDE_ALL")
