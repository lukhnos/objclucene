//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadSpanCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchPayloadsPayloadSpanCollector_RESTRICT
#define OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchPayloadsPayloadSpanCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_) && (OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE_ALL || OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE)
#define _OrgApacheLuceneSearchPayloadsPayloadSpanCollector_

#define OrgApacheLuceneSearchSpansSpanCollector_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpanCollector_INCLUDE 1
#include "org/apache/lucene/search/spans/SpanCollector.h"

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTerm;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchPayloadsPayloadSpanCollector : NSObject < OrgApacheLuceneSearchSpansSpanCollector >

#pragma mark Public

- (instancetype)init;

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (id<JavaUtilCollection>)getPayloads;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(OrgApacheLuceneSearchPayloadsPayloadSpanCollector *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadSpanCollector *new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchPayloadsPayloadSpanCollector_INCLUDE_ALL")
