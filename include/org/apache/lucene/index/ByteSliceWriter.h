//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ByteSliceWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexByteSliceWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexByteSliceWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexByteSliceWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter || defined(INCLUDE_OrgApacheLuceneIndexByteSliceWriter))
#define OrgApacheLuceneIndexByteSliceWriter_

#define RESTRICT_OrgApacheLuceneStoreDataOutput 1
#define INCLUDE_OrgApacheLuceneStoreDataOutput 1
#include "org/apache/lucene/store/DataOutput.h"

@class IOSByteArray;
@class OrgApacheLuceneUtilByteBlockPool;

/*!
 @brief Class to write byte streams into slices of shared
  byte[].This is used by DocumentsWriter to hold the
  posting list for many terms in RAM.
 */
@interface OrgApacheLuceneIndexByteSliceWriter : OrgApacheLuceneStoreDataOutput {
 @public
  jint offset0_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneUtilByteBlockPool:(OrgApacheLuceneUtilByteBlockPool *)pool;

- (jint)getAddress;

/*!
 @brief Set up the writer to write at address.
 */
- (void)init__WithInt:(jint)address OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Write byte into byte slice stream
 */
- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexByteSliceWriter)

FOUNDATION_EXPORT void OrgApacheLuceneIndexByteSliceWriter_initPackagePrivateWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneIndexByteSliceWriter *self, OrgApacheLuceneUtilByteBlockPool *pool);

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceWriter *new_OrgApacheLuceneIndexByteSliceWriter_initPackagePrivateWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneUtilByteBlockPool *pool) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceWriter *create_OrgApacheLuceneIndexByteSliceWriter_initPackagePrivateWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneUtilByteBlockPool *pool);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexByteSliceWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter")
