//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked13.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked13_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked13_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked13_) && (OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked13_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked13 : OrgApacheLuceneUtilPackedBulkOperationPacked

#pragma mark Public

- (instancetype)init;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked13)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked13_init(OrgApacheLuceneUtilPackedBulkOperationPacked13 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked13 *new_OrgApacheLuceneUtilPackedBulkOperationPacked13_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked13)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked13_INCLUDE_ALL")