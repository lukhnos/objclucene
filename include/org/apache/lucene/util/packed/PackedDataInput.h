//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PackedDataInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedDataInput")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPackedDataInput
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedDataInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedDataInput 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPackedDataInput

#if !defined (OrgApacheLuceneUtilPackedPackedDataInput_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedDataInput || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedDataInput))
#define OrgApacheLuceneUtilPackedPackedDataInput_

@class OrgApacheLuceneStoreDataInput;

/*!
 @brief A <code>DataInput</code> wrapper to read unaligned, variable-length packed
 integers.
 This API is much slower than the <code>PackedInts</code> fixed-length
 API but can be convenient to save space.
 - seealso: PackedDataOutput
 */
@interface OrgApacheLuceneUtilPackedPackedDataInput : NSObject {
 @public
  OrgApacheLuceneStoreDataInput *in_;
  jlong current_;
  jint remainingBits_;
}

#pragma mark Public

/*!
 @brief Create a new instance that wraps <code>in</code>.
 */
- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

/*!
 @brief Read the next long using exactly <code>bitsPerValue</code> bits.
 */
- (jlong)readLongWithInt:(jint)bitsPerValue;

/*!
 @brief If there are pending bits (at most 7), they will be ignored and the next
 value will be read starting at the next byte.
 */
- (void)skipToNextByte;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedDataInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedDataInput, in_, OrgApacheLuceneStoreDataInput *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedDataInput_initWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneUtilPackedPackedDataInput *self, OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedDataInput *new_OrgApacheLuceneUtilPackedPackedDataInput_initWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedDataInput *create_OrgApacheLuceneUtilPackedPackedDataInput_initWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedDataInput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedDataInput")
