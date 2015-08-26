//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/AbstractPagedMutable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedAbstractPagedMutable_RESTRICT
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedAbstractPagedMutable_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedAbstractPagedMutable_) && (OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE_ALL || OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE)
#define _OrgApacheLuceneUtilPackedAbstractPagedMutable_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneUtilPackedPackedInts_Mutable;
@protocol JavaUtilCollection;

#define OrgApacheLuceneUtilPackedAbstractPagedMutable_MIN_BLOCK_SIZE 64
#define OrgApacheLuceneUtilPackedAbstractPagedMutable_MAX_BLOCK_SIZE 1073741824

@interface OrgApacheLuceneUtilPackedAbstractPagedMutable : OrgApacheLuceneUtilLongValues < OrgApacheLuceneUtilAccountable > {
 @public
  jlong size_;
  jint pageShift_;
  jint pageMask_;
  IOSObjectArray *subMutables_;
  jint bitsPerValue_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

- (id<JavaUtilCollection>)getChildResources;

- (id)grow;

- (id)growWithLong:(jlong)minSize;

- (jlong)ramBytesUsed;

- (id)resizeWithLong:(jlong)newSize;

- (void)setWithLong:(jlong)index
           withLong:(jlong)value;

- (jlong)size;

- (NSString *)description;

#pragma mark Protected

- (jlong)baseRamBytesUsed;

- (void)fillPages;

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue OBJC_METHOD_FAMILY_NONE;

- (id)newUnfilledCopyWithLong:(jlong)newSize OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)bitsPerValue
                   withLong:(jlong)size
                    withInt:(jint)pageSize;

- (jint)indexInPageWithLong:(jlong)index;

- (jint)lastPageSizeWithLong:(jlong)size;

- (jint)pageIndexWithLong:(jlong)index;

- (jint)pageSize;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedAbstractPagedMutable)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedAbstractPagedMutable, subMutables_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPackedAbstractPagedMutable, MIN_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPackedAbstractPagedMutable, MAX_BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jint bitsPerValue, jlong size, jint pageSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedAbstractPagedMutable)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedAbstractPagedMutable_INCLUDE_ALL")
