//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntsRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRef")
#ifdef RESTRICT_OrgApacheLuceneUtilIntsRef
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRef 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRef 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilIntsRef

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilIntsRef_) && (INCLUDE_ALL_OrgApacheLuceneUtilIntsRef || defined(INCLUDE_OrgApacheLuceneUtilIntsRef))
#define OrgApacheLuceneUtilIntsRef_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class IOSIntArray;

/*!
 @brief Represents int[], as a slice (offset + length) into an
   existing int[].The <code>ints</code> member should never be null; use
   <code>EMPTY_INTS</code> if necessary.
 */
@interface OrgApacheLuceneUtilIntsRef : NSObject < JavaLangComparable, NSCopying > {
 @public
  /*!
   @brief The contents of the IntsRef.Should never be <code>null</code>.
   */
  IOSIntArray *ints_;
  /*!
   @brief Offset of first valid integer.
   */
  jint offset_;
  /*!
   @brief Length of used ints.
   */
  jint length_;
}
@property (readonly, class, strong) IOSIntArray *EMPTY_INTS NS_SWIFT_NAME(EMPTY_INTS);

#pragma mark Public

/*!
 @brief Create a IntsRef with <code>EMPTY_INTS</code>
 */
- (instancetype __nonnull)init;

/*!
 @brief Create a IntsRef pointing to a new array of size <code>capacity</code>.
 Offset and length will both be zero.
 */
- (instancetype __nonnull)initWithInt:(jint)capacity;

/*!
 @brief This instance will directly reference ints w/o making a copy.
 ints should not be null.
 */
- (instancetype __nonnull)initWithIntArray:(IOSIntArray *)ints
                                   withInt:(jint)offset
                                   withInt:(jint)length;

/*!
 @brief Returns a shallow clone of this instance (the underlying ints are 
 <b>not</b> copied and will be shared by both the returned object and this
  object.
 - seealso: #deepCopyOf
 */
- (OrgApacheLuceneUtilIntsRef *)java_clone;

/*!
 @brief Signed int order comparison
 */
- (jint)compareToWithId:(OrgApacheLuceneUtilIntsRef *)other;

/*!
 @brief Creates a new IntsRef that points to a copy of the ints from  
 <code>other</code>
 <p>
  The returned IntsRef will have a length of other.length
  and an offset of zero.
 */
+ (OrgApacheLuceneUtilIntsRef *)deepCopyOfWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (jboolean)intsEqualsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other;

/*!
 @brief Performs internal consistency checks.
 Always returns true (or throws IllegalStateException)
 */
- (jboolean)isValid;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilIntsRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntsRef, ints_, IOSIntArray *)

/*!
 @brief An empty integer array for convenience
 */
inline IOSIntArray *OrgApacheLuceneUtilIntsRef_get_EMPTY_INTS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilIntsRef_EMPTY_INTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilIntsRef, EMPTY_INTS, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_init(OrgApacheLuceneUtilIntsRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_initWithInt_(OrgApacheLuceneUtilIntsRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilIntsRef *self, IOSIntArray *ints, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilIntsRef *other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntsRef)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRef")
