//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RamUsageEstimator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilRamUsageEstimator")
#ifdef RESTRICT_OrgApacheLuceneUtilRamUsageEstimator
#define INCLUDE_ALL_OrgApacheLuceneUtilRamUsageEstimator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilRamUsageEstimator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilRamUsageEstimator

#if !defined (OrgApacheLuceneUtilRamUsageEstimator_) && (INCLUDE_ALL_OrgApacheLuceneUtilRamUsageEstimator || defined(INCLUDE_OrgApacheLuceneUtilRamUsageEstimator))
#define OrgApacheLuceneUtilRamUsageEstimator_

@class IOSBooleanArray;
@class IOSByteArray;
@class IOSCharArray;
@class IOSClass;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class IOSShortArray;
@class JavaLangLong;
@class JavaLangReflectField;
@class JavaTextDecimalFormat;

/*!
 @brief Estimates the size (memory representation) of Java objects.
 <p>
 This class uses assumptions that were discovered for the Hotspot
 virtual machine. If you use a non-OpenJDK/Oracle-based JVM,
 the measurements may be slightly wrong.
 - seealso: #shallowSizeOf(Object)
 - seealso: #shallowSizeOfInstance(Class)
 */
@interface OrgApacheLuceneUtilRamUsageEstimator : NSObject

+ (jlong)ONE_KB;

+ (jlong)ONE_MB;

+ (jlong)ONE_GB;

+ (jint)NUM_BYTES_BOOLEAN;

+ (jint)NUM_BYTES_BYTE;

+ (jint)NUM_BYTES_CHAR;

+ (jint)NUM_BYTES_SHORT;

+ (jint)NUM_BYTES_INT;

+ (jint)NUM_BYTES_FLOAT;

+ (jint)NUM_BYTES_LONG;

+ (jint)NUM_BYTES_DOUBLE;

+ (jboolean)COMPRESSED_REFS_ENABLED;

+ (jint)NUM_BYTES_OBJECT_REF;

+ (jint)NUM_BYTES_OBJECT_HEADER;

+ (jint)NUM_BYTES_ARRAY_HEADER;

+ (jint)NUM_BYTES_OBJECT_ALIGNMENT;

+ (jlong)LONG_CACHE_MIN_VALUE;

+ (jlong)LONG_CACHE_MAX_VALUE;

+ (jint)LONG_SIZE;

+ (jboolean)JVM_IS_HOTSPOT_64BIT;

+ (NSString *)MANAGEMENT_FACTORY_CLASS;

+ (NSString *)HOTSPOT_BEAN_CLASS;

#pragma mark Public

/*!
 @brief Aligns an object size to be the next multiple of <code>NUM_BYTES_OBJECT_ALIGNMENT</code>.
 */
+ (jlong)alignObjectSizeWithLong:(jlong)size;

/*!
 @brief Returns <code>size</code> in human-readable units (GB, MB, KB or bytes).
 */
+ (NSString *)humanReadableUnitsWithLong:(jlong)bytes;

/*!
 @brief Returns <code>size</code> in human-readable units (GB, MB, KB or bytes).
 */
+ (NSString *)humanReadableUnitsWithLong:(jlong)bytes
               withJavaTextDecimalFormat:(JavaTextDecimalFormat *)df;

/*!
 @brief Estimates a "shallow" memory usage of the given object.
 For arrays, this will be the
 memory taken by array storage (no subreferences will be followed). For objects, this
 will be the memory taken by the fields.
 JVM object alignments are also applied.
 */
+ (jlong)shallowSizeOfWithId:(id)obj;

/*!
 @brief Returns the shallow size in bytes of the Object[] object.
 */
+ (jlong)shallowSizeOfWithNSObjectArray:(IOSObjectArray *)arr;

/*!
 @brief Returns the shallow instance size in bytes an instance of the given class would occupy.
 This works with all conventional classes and primitive types, but not with arrays
 (the size then depends on the number of elements and varies from object to object).
 - seealso: #shallowSizeOf(Object)
 @throws IllegalArgumentException if <code>clazz</code> is an array class.
 */
+ (jlong)shallowSizeOfInstanceWithIOSClass:(IOSClass *)clazz;

/*!
 @brief Return the size of the provided array of <code>Accountable</code>s by summing
 up the shallow size of the array and the
 <code>memory usage</code> reported by each
 <code>Accountable</code>.
 */
+ (jlong)sizeOfWithOrgApacheLuceneUtilAccountableArray:(IOSObjectArray *)accountables;

/*!
 @brief Returns the size in bytes of the boolean[] object.
 */
+ (jlong)sizeOfWithBooleanArray:(IOSBooleanArray *)arr;

/*!
 @brief Returns the size in bytes of the byte[] object.
 */
+ (jlong)sizeOfWithByteArray:(IOSByteArray *)arr;

/*!
 @brief Returns the size in bytes of the char[] object.
 */
+ (jlong)sizeOfWithCharArray:(IOSCharArray *)arr;

/*!
 @brief Returns the size in bytes of the double[] object.
 */
+ (jlong)sizeOfWithDoubleArray:(IOSDoubleArray *)arr;

/*!
 @brief Returns the size in bytes of the float[] object.
 */
+ (jlong)sizeOfWithFloatArray:(IOSFloatArray *)arr;

/*!
 @brief Returns the size in bytes of the int[] object.
 */
+ (jlong)sizeOfWithIntArray:(IOSIntArray *)arr;

/*!
 @brief Return the size of the provided <code>Long</code> object, returning 0 if it is
 cached by the JVM and its shallow size otherwise.
 */
+ (jlong)sizeOfWithJavaLangLong:(JavaLangLong *)value;

/*!
 @brief Returns the size in bytes of the long[] object.
 */
+ (jlong)sizeOfWithLongArray:(IOSLongArray *)arr;

/*!
 @brief Returns the size in bytes of the short[] object.
 */
+ (jlong)sizeOfWithShortArray:(IOSShortArray *)arr;

#pragma mark Package-Private

/*!
 @brief This method returns the maximum representation size of an object.
 <code>sizeSoFar</code>
 is the object's size measured so far. <code>f</code> is the field being probed.
 <p>The returned offset will be the maximum of whatever was measured so far and 
 <code>f</code> field's offset and representation size (unaligned).
 */
+ (jlong)adjustForFieldWithLong:(jlong)sizeSoFar
       withJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilRamUsageEstimator)

/*!
 @brief One kilobyte bytes.
 */
inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_KB();
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_KB 1024LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_KB, jlong)

/*!
 @brief One megabyte bytes.
 */
inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_MB();
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_MB 1048576LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_MB, jlong)

/*!
 @brief One gigabyte bytes.
 */
inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_GB();
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_GB 1073741824LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_GB, jlong)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_BOOLEAN();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BOOLEAN 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_BOOLEAN, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_BYTE();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BYTE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_BYTE, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_CHAR();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_CHAR, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_SHORT();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_SHORT, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_INT();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_INT, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_FLOAT();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_FLOAT, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_LONG();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_LONG, jint)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_DOUBLE();
#define OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_DOUBLE, jint)

/*!
 @brief True, iff compressed references (oops) are enabled by this JVM
 */
inline jboolean OrgApacheLuceneUtilRamUsageEstimator_get_COMPRESSED_REFS_ENABLED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, COMPRESSED_REFS_ENABLED, jboolean)

/*!
 @brief Number of bytes this JVM uses to represent an object reference.
 */
inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_OBJECT_REF();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF, jint)

/*!
 @brief Number of bytes to represent an object header (no fields, no alignments).
 */
inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_OBJECT_HEADER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER, jint)

/*!
 @brief Number of bytes to represent an array header (no content, but with alignments).
 */
inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_ARRAY_HEADER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER, jint)

/*!
 @brief A constant specifying the object alignment boundary inside the JVM.
 Objects will
 always take a full multiple of this constant, possibly wasting some space. 
 */
inline jint OrgApacheLuceneUtilRamUsageEstimator_get_NUM_BYTES_OBJECT_ALIGNMENT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_ALIGNMENT, jint)

/*!
 @brief JVMs typically cache small longs.
 This tries to find out what the range is.
 */
inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_LONG_CACHE_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, LONG_CACHE_MIN_VALUE, jlong)

/*!
 @brief JVMs typically cache small longs.
 This tries to find out what the range is.
 */
inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_LONG_CACHE_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, LONG_CACHE_MAX_VALUE, jlong)

inline jint OrgApacheLuceneUtilRamUsageEstimator_get_LONG_SIZE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, LONG_SIZE, jint)

/*!
 @brief For testing only
 */
inline jboolean OrgApacheLuceneUtilRamUsageEstimator_get_JVM_IS_HOTSPOT_64BIT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilRamUsageEstimator, JVM_IS_HOTSPOT_64BIT, jboolean)

inline NSString *OrgApacheLuceneUtilRamUsageEstimator_get_MANAGEMENT_FACTORY_CLASS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilRamUsageEstimator, MANAGEMENT_FACTORY_CLASS, NSString *)

inline NSString *OrgApacheLuceneUtilRamUsageEstimator_get_HOTSPOT_BEAN_CLASS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilRamUsageEstimator, HOTSPOT_BEAN_CLASS, NSString *)

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(jlong size);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithJavaLangLong_(JavaLangLong *value);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(IOSByteArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithBooleanArray_(IOSBooleanArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithCharArray_(IOSCharArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(IOSShortArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(IOSIntArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(IOSFloatArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(IOSLongArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithDoubleArray_(IOSDoubleArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(IOSObjectArray *arr);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(id obj);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(IOSClass *clazz);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_adjustForFieldWithLong_withJavaLangReflectField_(jlong sizeSoFar, JavaLangReflectField *f);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_(jlong bytes);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(jlong bytes, JavaTextDecimalFormat *df);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(IOSObjectArray *accountables);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRamUsageEstimator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilRamUsageEstimator")
