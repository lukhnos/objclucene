//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocValuesWriter_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocValuesWriter_RESTRICT
#define OrgApacheLuceneIndexDocValuesWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocValuesWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocValuesWriter_RESTRICT

#if !defined (_OrgApacheLuceneIndexDocValuesWriter_) && (OrgApacheLuceneIndexDocValuesWriter_INCLUDE_ALL || OrgApacheLuceneIndexDocValuesWriter_INCLUDE)
#define _OrgApacheLuceneIndexDocValuesWriter_

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

#pragma pop_macro("OrgApacheLuceneIndexDocValuesWriter_INCLUDE_ALL")