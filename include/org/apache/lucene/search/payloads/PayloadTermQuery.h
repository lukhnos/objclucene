//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadTermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchPayloadsPayloadTermQuery_RESTRICT
#define OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchPayloadsPayloadTermQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchPayloadsPayloadTermQuery_) && (OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE_ALL || OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE)
#define _OrgApacheLuceneSearchPayloadsPayloadTermQuery_

#define OrgApacheLuceneSearchSpansSpanTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpanTermQuery_INCLUDE 1
#include "org/apache/lucene/search/spans/SpanTermQuery.h"

@interface OrgApacheLuceneSearchPayloadsPayloadTermQuery : OrgApacheLuceneSearchSpansSpanTermQuery

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadTermQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadTermQuery_init(OrgApacheLuceneSearchPayloadsPayloadTermQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadTermQuery *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadTermQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchPayloadsPayloadTermQuery_INCLUDE_ALL")
