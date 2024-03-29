//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitSetProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinBitSetProducer")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinBitSetProducer
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinBitSetProducer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinBitSetProducer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinBitSetProducer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinBitSetProducer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinBitSetProducer || defined(INCLUDE_OrgApacheLuceneSearchJoinBitSetProducer))
#define OrgApacheLuceneSearchJoinBitSetProducer_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneUtilBitSet;

/*!
 @brief A producer of <code>BitSet</code>s per segment.
 */
@protocol OrgApacheLuceneSearchJoinBitSetProducer < JavaObject >

/*!
 @brief Produce a <code>BitSet</code> matching the expected documents on the given
  segment.This may return <code>null</code> if no documents match.
 */
- (OrgApacheLuceneUtilBitSet *)getBitSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBitSetProducer)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBitSetProducer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinBitSetProducer")
