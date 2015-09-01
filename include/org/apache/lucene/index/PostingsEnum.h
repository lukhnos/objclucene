//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/PostingsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexPostingsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexPostingsEnum_RESTRICT
#define OrgApacheLuceneIndexPostingsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexPostingsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexPostingsEnum_RESTRICT

#if !defined (_OrgApacheLuceneIndexPostingsEnum_) && (OrgApacheLuceneIndexPostingsEnum_INCLUDE_ALL || OrgApacheLuceneIndexPostingsEnum_INCLUDE)
#define _OrgApacheLuceneIndexPostingsEnum_

#define OrgApacheLuceneSearchDocIdSetIterator_RESTRICT 1
#define OrgApacheLuceneSearchDocIdSetIterator_INCLUDE 1
#include "org/apache/lucene/search/DocIdSetIterator.h"

@class OrgApacheLuceneUtilBytesRef;

#define OrgApacheLuceneIndexPostingsEnum_NONE 0
#define OrgApacheLuceneIndexPostingsEnum_FREQS 8
#define OrgApacheLuceneIndexPostingsEnum_POSITIONS 24
#define OrgApacheLuceneIndexPostingsEnum_OFFSETS 56
#define OrgApacheLuceneIndexPostingsEnum_PAYLOADS 88
#define OrgApacheLuceneIndexPostingsEnum_ALL 120

@interface OrgApacheLuceneIndexPostingsEnum : OrgApacheLuceneSearchDocIdSetIterator

#pragma mark Public

- (jint)endOffset;

+ (jboolean)featureRequestedWithInt:(jint)flags
                          withShort:(jshort)feature;

- (jint)freq;

- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (jint)nextPosition;

- (jint)startOffset;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexPostingsEnum)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, NONE, jshort)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, FREQS, jshort)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, POSITIONS, jshort)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, OFFSETS, jshort)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, PAYLOADS, jshort)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPostingsEnum, ALL, jshort)

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(jint flags, jshort feature);

FOUNDATION_EXPORT void OrgApacheLuceneIndexPostingsEnum_init(OrgApacheLuceneIndexPostingsEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexPostingsEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexPostingsEnum_INCLUDE_ALL")
