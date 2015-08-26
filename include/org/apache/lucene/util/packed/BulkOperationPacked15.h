//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked15.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked15_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked15_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked15_) && (OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked15_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked15 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked15)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked15_init(OrgApacheLuceneUtilPackedBulkOperationPacked15 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked15 *new_OrgApacheLuceneUtilPackedBulkOperationPacked15_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked15)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked15_INCLUDE_ALL")
