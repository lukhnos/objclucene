//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitDocIdSetFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE_ALL")
#if OrgApacheLuceneSearchJoinBitDocIdSetFilter_RESTRICT
#define OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchJoinBitDocIdSetFilter_RESTRICT

#if !defined (_OrgApacheLuceneSearchJoinBitDocIdSetFilter_) && (OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE_ALL || OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE)
#define _OrgApacheLuceneSearchJoinBitDocIdSetFilter_

#define OrgApacheLuceneSearchFilter_RESTRICT 1
#define OrgApacheLuceneSearchFilter_INCLUDE 1
#include "org/apache/lucene/search/Filter.h"

#define OrgApacheLuceneSearchJoinBitSetProducer_RESTRICT 1
#define OrgApacheLuceneSearchJoinBitSetProducer_INCLUDE 1
#include "org/apache/lucene/search/join/BitSetProducer.h"

@interface OrgApacheLuceneSearchJoinBitDocIdSetFilter : OrgApacheLuceneSearchFilter < OrgApacheLuceneSearchJoinBitSetProducer >

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBitDocIdSetFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinBitDocIdSetFilter_init(OrgApacheLuceneSearchJoinBitDocIdSetFilter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBitDocIdSetFilter)

#endif

#pragma pop_macro("OrgApacheLuceneSearchJoinBitDocIdSetFilter_INCLUDE_ALL")
