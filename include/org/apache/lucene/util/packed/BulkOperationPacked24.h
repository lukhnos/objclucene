//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked24.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked24_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked24_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked24_) && (OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked24_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked24 : OrgApacheLuceneUtilPackedBulkOperationPacked

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
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked24)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked24_init(OrgApacheLuceneUtilPackedBulkOperationPacked24 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked24 *new_OrgApacheLuceneUtilPackedBulkOperationPacked24_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked24)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked24_INCLUDE_ALL")
