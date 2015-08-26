//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked6.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked6_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked6_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked6_) && (OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked6_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked6 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked6)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked6_init(OrgApacheLuceneUtilPackedBulkOperationPacked6 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked6 *new_OrgApacheLuceneUtilPackedBulkOperationPacked6_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked6)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked6_INCLUDE_ALL")
