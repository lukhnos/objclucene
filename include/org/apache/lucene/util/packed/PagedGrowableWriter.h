//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PagedGrowableWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPagedGrowableWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPagedGrowableWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPagedGrowableWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPagedGrowableWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPagedGrowableWriter

#if !defined (OrgApacheLuceneUtilPackedPagedGrowableWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPagedGrowableWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedPagedGrowableWriter))
#define OrgApacheLuceneUtilPackedPagedGrowableWriter_

#define RESTRICT_OrgApacheLuceneUtilPackedAbstractPagedMutable 1
#define INCLUDE_OrgApacheLuceneUtilPackedAbstractPagedMutable 1
#include "org/apache/lucene/util/packed/AbstractPagedMutable.h"

@class OrgApacheLuceneUtilPackedPackedInts_Mutable;

/*!
 @brief A <code>PagedGrowableWriter</code>.
 This class slices data into fixed-size blocks
 which have independent numbers of bits per value and grow on-demand.
 <p>You should use this class instead of the <code>PackedLongValues</code> related ones only when
 you need random write-access. Otherwise this class will likely be slower and
 less memory-efficient.
 */
@interface OrgApacheLuceneUtilPackedPagedGrowableWriter : OrgApacheLuceneUtilPackedAbstractPagedMutable {
 @public
  jfloat acceptableOverheadRatio_;
}

#pragma mark Public

/*!
 @brief Create a new <code>PagedGrowableWriter</code> instance.
 @param size the number of values to store.
 @param pageSize the number of values per page
 @param startBitsPerValue the initial number of bits per value
 @param acceptableOverheadRatio an acceptable overhead ratio
 */
- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)startBitsPerValue
                   withFloat:(jfloat)acceptableOverheadRatio;

#pragma mark Protected

- (jlong)baseRamBytesUsed;

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneUtilPackedPagedGrowableWriter *)newUnfilledCopyWithLong:(jlong)newSize OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)startBitsPerValue
                   withFloat:(jfloat)acceptableOverheadRatio
                 withBoolean:(jboolean)fillPages;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPagedGrowableWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPagedGrowableWriter *create_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPagedGrowableWriter *create_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPagedGrowableWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPagedGrowableWriter")
