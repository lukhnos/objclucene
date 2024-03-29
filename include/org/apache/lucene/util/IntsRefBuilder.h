//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntsRefBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRefBuilder")
#ifdef RESTRICT_OrgApacheLuceneUtilIntsRefBuilder
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRefBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRefBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilIntsRefBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilIntsRefBuilder_) && (INCLUDE_ALL_OrgApacheLuceneUtilIntsRefBuilder || defined(INCLUDE_OrgApacheLuceneUtilIntsRefBuilder))
#define OrgApacheLuceneUtilIntsRefBuilder_

@class IOSIntArray;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilIntsRef;

/*!
 @brief A builder for <code>IntsRef</code> instances.
 */
@interface OrgApacheLuceneUtilIntsRefBuilder : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)init;

/*!
 @brief Append the provided int to this buffer.
 */
- (void)appendWithInt:(jint)i;

/*!
 @brief Empty this builder.
 */
- (void)clear;

/*!
 @brief Copies the given array into this instance.
 */
- (void)copyIntsWithIntArray:(IOSIntArray *)otherInts
                     withInt:(jint)otherOffset
                     withInt:(jint)otherLength OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Copies the given array into this instance.
 */
- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)ints OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Copy the given UTF-8 bytes into this builder.Works as if the bytes were
  first converted from UTF-8 to UTF-32 and then copied into this builder.
 */
- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Return a <code>IntsRef</code> that points to the internal content of this
  builder.Any update to the content of this builder might invalidate
  the provided <code>ref</code> and vice-versa.
 */
- (OrgApacheLuceneUtilIntsRef *)get;

/*!
 @brief Used to grow the reference array.
 In general this should not be used as it does not take the offset into account.
 */
- (void)growWithInt:(jint)newLength;

- (NSUInteger)hash;

/*!
 @brief Return the int at the given offset.
 */
- (jint)intAtWithInt:(jint)offset;

/*!
 @brief Return a reference to the ints of this builder.
 */
- (IOSIntArray *)ints;

/*!
 @brief Return the number of ints in this buffer.
 */
- (jint)length;

/*!
 @brief Set an int.
 */
- (void)setIntAtWithInt:(jint)offset
                withInt:(jint)b;

/*!
 @brief Set the length.
 */
- (void)setLengthWithInt:(jint)length;

/*!
 @brief Build a new <code>CharsRef</code> that has the same content as this builder.
 */
- (OrgApacheLuceneUtilIntsRef *)toIntsRef;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntsRefBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRefBuilder_init(OrgApacheLuceneUtilIntsRefBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRefBuilder *new_OrgApacheLuceneUtilIntsRefBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRefBuilder *create_OrgApacheLuceneUtilIntsRefBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntsRefBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRefBuilder")
