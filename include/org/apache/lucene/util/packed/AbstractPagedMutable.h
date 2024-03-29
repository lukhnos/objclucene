//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/AbstractPagedMutable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractPagedMutable")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedAbstractPagedMutable
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractPagedMutable 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractPagedMutable 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedAbstractPagedMutable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedAbstractPagedMutable_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractPagedMutable || defined(INCLUDE_OrgApacheLuceneUtilPackedAbstractPagedMutable))
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_

#define RESTRICT_OrgApacheLuceneUtilLongValues 1
#define INCLUDE_OrgApacheLuceneUtilLongValues 1
#include "org/apache/lucene/util/LongValues.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneUtilPackedPackedInts_Mutable;
@protocol JavaUtilCollection;

/*!
 @brief Base implementation for <code>PagedMutable</code> and <code>PagedGrowableWriter</code>.
 */
@interface OrgApacheLuceneUtilPackedAbstractPagedMutable : OrgApacheLuceneUtilLongValues < OrgApacheLuceneUtilAccountable > {
 @public
  jlong size_;
  jint pageShift_;
  jint pageMask_;
  IOSObjectArray *subMutables_;
  jint bitsPerValue_;
}
@property (readonly, class) jint MIN_BLOCK_SIZE NS_SWIFT_NAME(MIN_BLOCK_SIZE);
@property (readonly, class) jint MAX_BLOCK_SIZE NS_SWIFT_NAME(MAX_BLOCK_SIZE);

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Similar to <code>ArrayUtil.grow(long[])</code>.
 */
- (OrgApacheLuceneUtilPackedAbstractPagedMutable *)grow;

/*!
 @brief Similar to <code>ArrayUtil.grow(long[], int)</code>.
 */
- (OrgApacheLuceneUtilPackedAbstractPagedMutable *)growWithLong:(jlong)minSize;

- (jlong)ramBytesUsed;

/*!
 @brief Create a new copy of size <code>newSize</code> based on the content of
   this buffer.This method is much more efficient than creating a new
   instance and copying values one by one.
 */
- (OrgApacheLuceneUtilPackedAbstractPagedMutable *)resizeWithLong:(jlong)newSize;

/*!
 @brief Set value at <code>index</code>.
 */
- (void)setWithLong:(jlong)index
           withLong:(jlong)value;

/*!
 @brief The number of values.
 */
- (jlong)size;

- (NSString *)description;

#pragma mark Protected

- (jlong)baseRamBytesUsed;

- (void)fillPages;

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneUtilPackedAbstractPagedMutable *)newUnfilledCopyWithLong:(jlong)newSize OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithInt:(jint)bitsPerValue
                                           withLong:(jlong)size
                                            withInt:(jint)pageSize;

- (jint)indexInPageWithLong:(jlong)index;

- (jint)lastPageSizeWithLong:(jlong)size;

- (jint)pageIndexWithLong:(jlong)index;

- (jint)pageSize;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedAbstractPagedMutable)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedAbstractPagedMutable, subMutables_, IOSObjectArray *)

inline jint OrgApacheLuceneUtilPackedAbstractPagedMutable_get_MIN_BLOCK_SIZE(void);
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_MIN_BLOCK_SIZE 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractPagedMutable, MIN_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneUtilPackedAbstractPagedMutable_get_MAX_BLOCK_SIZE(void);
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_MAX_BLOCK_SIZE 1073741824
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractPagedMutable, MAX_BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedAbstractPagedMutable_initPackagePrivateWithInt_withLong_withInt_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jint bitsPerValue, jlong size, jint pageSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedAbstractPagedMutable)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractPagedMutable")
