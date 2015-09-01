//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_) && (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_

#define OrgApacheLuceneUtilPackedBulkOperation_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperation_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperation.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock : OrgApacheLuceneUtilPackedBulkOperation

#pragma mark Public

- (instancetype)initWithInt:(jint)bitsPerValue;

- (jint)byteBlockCount;

- (jint)byteValueCount;

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

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withByteArray:(IOSByteArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations;

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations;

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations;

- (jint)longBlockCount;

- (jint)longValueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jint bitsPerValue);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(jint bitsPerValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_INCLUDE_ALL")
