//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocValuesWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexDocValuesWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexDocValuesWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocValuesWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocValuesWriter

#if !defined (OrgApacheLuceneIndexDocValuesWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocValuesWriter || defined(INCLUDE_OrgApacheLuceneIndexDocValuesWriter))
#define OrgApacheLuceneIndexDocValuesWriter_

@class OrgApacheLuceneCodecsDocValuesConsumer;
@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneIndexDocValuesWriter : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (void)finishWithInt:(jint)numDoc;

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
            withOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)consumer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValuesWriter)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocValuesWriter_init(OrgApacheLuceneIndexDocValuesWriter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValuesWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocValuesWriter")
