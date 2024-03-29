//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadSpanCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadSpanCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadSpanCollector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchPayloadsPayloadSpanCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanCollector || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadSpanCollector))
#define OrgApacheLuceneSearchPayloadsPayloadSpanCollector_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanCollector 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanCollector 1
#include "org/apache/lucene/search/spans/SpanCollector.h"

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTerm;
@protocol JavaUtilCollection;

/*!
 @brief SpanCollector for collecting payloads
 */
@interface OrgApacheLuceneSearchPayloadsPayloadSpanCollector : NSObject < OrgApacheLuceneSearchSpansSpanCollector >

#pragma mark Public

- (instancetype __nonnull)init;

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @return the collected payloads
 */
- (id<JavaUtilCollection>)getPayloads;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(OrgApacheLuceneSearchPayloadsPayloadSpanCollector *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadSpanCollector *new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadSpanCollector *create_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanCollector")
