//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked8.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked8_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked8_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked8_) && (OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked8_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked8 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked8)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked8_init(OrgApacheLuceneUtilPackedBulkOperationPacked8 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked8 *new_OrgApacheLuceneUtilPackedBulkOperationPacked8_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked8)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked8_INCLUDE_ALL")
