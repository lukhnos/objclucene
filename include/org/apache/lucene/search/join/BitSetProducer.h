//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitSetProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE_ALL")
#if OrgApacheLuceneSearchJoinBitSetProducer_RESTRICT
#define OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchJoinBitSetProducer_RESTRICT

#if !defined (_OrgApacheLuceneSearchJoinBitSetProducer_) && (OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE_ALL || OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE)
#define _OrgApacheLuceneSearchJoinBitSetProducer_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneUtilBitSet;

@protocol OrgApacheLuceneSearchJoinBitSetProducer < NSObject, JavaObject >

- (OrgApacheLuceneUtilBitSet *)getBitSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBitSetProducer)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBitSetProducer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE_ALL")
