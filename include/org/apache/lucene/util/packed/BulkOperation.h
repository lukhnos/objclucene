//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperation.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperation")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperation
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperation 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperation 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperation

#if !defined (OrgApacheLuceneUtilPackedBulkOperation_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperation || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperation))
#define OrgApacheLuceneUtilPackedBulkOperation_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Decoder 1
#include "org/apache/lucene/util/packed/PackedInts.h"

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Encoder 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSByteArray;
@class OrgApacheLuceneUtilPackedPackedInts_Format;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperation : NSObject < OrgApacheLuceneUtilPackedPackedInts_Decoder, OrgApacheLuceneUtilPackedPackedInts_Encoder >

#pragma mark Public

/*!
 @brief For every number of bits per value, there is a minimum number of
 blocks (b) / values (v) you need to write in order to reach the next block
 boundary:
 - 16 bits per value -&gt; b=2, v=1
 - 24 bits per value -&gt; b=3, v=1
 - 50 bits per value -&gt; b=25, v=4
 - 63 bits per value -&gt; b=63, v=8
 - ...
 A bulk read consists in copying <code>iterations*v</code> values that are
 contained in <code>iterations*b</code> blocks into a <code>long[]</code>
 (higher values of <code>iterations</code> are likely to yield a better
 throughput): this requires n * (b + 8v) bytes of memory.
 This method computes <code>iterations</code> as
 <code>ramBudget / (b + 8v)</code> (since a long is 8 bytes).
 */
- (jint)computeIterationsWithInt:(jint)valueCount
                         withInt:(jint)ramBudget;

+ (OrgApacheLuceneUtilPackedBulkOperation *)ofWithOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format
                                                                                     withInt:(jint)bitsPerValue;

#pragma mark Protected

- (jint)writeLongWithLong:(jlong)block
            withByteArray:(IOSByteArray *)blocks
                  withInt:(jint)blocksOffset;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperation)

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperation *OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint bitsPerValue);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperation_init(OrgApacheLuceneUtilPackedBulkOperation *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperation)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperation")
