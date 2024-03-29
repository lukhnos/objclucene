//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NumericUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils")
#ifdef RESTRICT_OrgApacheLuceneUtilNumericUtils
#define INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilNumericUtils

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilNumericUtils_) && (INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils || defined(INCLUDE_OrgApacheLuceneUtilNumericUtils))
#define OrgApacheLuceneUtilNumericUtils_

@class JavaLangInteger;
@class JavaLangLong;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;
@class OrgApacheLuceneUtilNumericUtils_IntRangeBuilder;
@class OrgApacheLuceneUtilNumericUtils_LongRangeBuilder;

/*!
 @brief This is a helper class to generate prefix-encoded representations for numerical values
  and supplies converters to represent float/double values as sortable integers/longs.
 <p>To quickly execute range queries in Apache Lucene, a range is divided recursively
  into multiple intervals for searching: The center of the range is searched only with
  the lowest possible precision in the trie, while the boundaries are matched
  more exactly. This reduces the number of terms dramatically. 
 <p>This class generates terms to achieve this: First the numerical integer values need to
  be converted to bytes. For that integer values (32 bit or 64 bit) are made unsigned
  and the bits are converted to ASCII chars with each 7 bit. The resulting byte[] is
  sortable like the original integer value (even using UTF-8 sort order). Each value is also
  prefixed (in the first char) by the <code>shift</code> value (number of bits removed) used
  during encoding. 
 <p>To also index floating point numbers, this class supplies two methods to convert them
  to integer values by changing their bit layout: <code>doubleToSortableLong</code>,
  <code>floatToSortableInt</code>. You will have no precision loss by
  converting floating point numbers to integers and back (only that the integer form
  is not usable). Other data types like dates can easily converted to longs or ints (e.g.
  date to long: <code>java.util.Date.getTime</code>).
  
 <p>For easy usage, the trie algorithm is implemented for indexing inside 
 <code>NumericTokenStream</code> that can index <code>int</code>, <code>long</code>,
  <code>float</code>, and <code>double</code>. For querying, 
 <code>NumericRangeQuery</code> implements the query part
  for the same data types. 
 <p>This class can also be used, to generate lexicographically sortable (according to 
 <code>BytesRef.getUTF8SortedAsUTF16Comparator()</code>) representations of numeric data
  types for other usages (e.g. sorting).
 @since 2.9, API changed non backwards-compliant in 4.0
 */
@interface OrgApacheLuceneUtilNumericUtils : NSObject
@property (readonly, class) jint PRECISION_STEP_DEFAULT NS_SWIFT_NAME(PRECISION_STEP_DEFAULT);
@property (readonly, class) jint PRECISION_STEP_DEFAULT_32 NS_SWIFT_NAME(PRECISION_STEP_DEFAULT_32);
@property (readonly, class) jbyte SHIFT_START_LONG NS_SWIFT_NAME(SHIFT_START_LONG);
@property (readonly, class) jint BUF_SIZE_LONG NS_SWIFT_NAME(BUF_SIZE_LONG);
@property (readonly, class) jbyte SHIFT_START_INT NS_SWIFT_NAME(SHIFT_START_INT);
@property (readonly, class) jint BUF_SIZE_INT NS_SWIFT_NAME(BUF_SIZE_INT);

#pragma mark Public

/*!
 @brief Converts a <code>double</code> value to a sortable signed <code>long</code>.
 The value is converted by getting their IEEE 754 floating-point &quot;double format&quot;
  bit layout and then some bits are swapped, to be able to compare the result as long.
  By this the precision is not reduced, but the value can easily used as a long.
  The sort order (including <code>Double.NaN</code>) is defined by 
 <code>Double.compareTo</code>; <code>NaN</code> is greater than positive infinity.
 - seealso: #sortableLongToDouble
 */
+ (jlong)doubleToSortableLongWithDouble:(jdouble)val;

/*!
 @brief Filters the given <code>TermsEnum</code> by accepting only prefix coded 32 bit
  terms with a shift value of <tt>0</tt>.
 @param termsEnum the terms enum to filter
 @return a filtered <code>TermsEnum</code> that only returns prefix coded 32 bit
          terms with a shift value of <tt>0</tt>.
 */
+ (OrgApacheLuceneIndexTermsEnum *)filterPrefixCodedIntsWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

/*!
 @brief Filters the given <code>TermsEnum</code> by accepting only prefix coded 64 bit
  terms with a shift value of <tt>0</tt>.
 @param termsEnum the terms enum to filter
 @return a filtered <code>TermsEnum</code> that only returns prefix coded 64 bit
          terms with a shift value of <tt>0</tt>.
 */
+ (OrgApacheLuceneIndexTermsEnum *)filterPrefixCodedLongsWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

/*!
 @brief Converts a <code>float</code> value to a sortable signed <code>int</code>.
 The value is converted by getting their IEEE 754 floating-point &quot;float format&quot;
  bit layout and then some bits are swapped, to be able to compare the result as int.
  By this the precision is not reduced, but the value can easily used as an int.
  The sort order (including <code>Float.NaN</code>) is defined by 
 <code>Float.compareTo</code>; <code>NaN</code> is greater than positive infinity.
 - seealso: #sortableIntToFloat
 */
+ (jint)floatToSortableIntWithFloat:(jfloat)val;

/*!
 @brief Returns the maximum int value indexed into this
  numeric field or null if no terms exist.
 */
+ (JavaLangInteger *)getMaxIntWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

/*!
 @brief Returns the maximum long value indexed into this
  numeric field or null if no terms exist.
 */
+ (JavaLangLong *)getMaxLongWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

/*!
 @brief Returns the minimum int value indexed into this
  numeric field or null if no terms exist.
 */
+ (JavaLangInteger *)getMinIntWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

/*!
 @brief Returns the minimum long value indexed into this
  numeric field or null if no terms exist.
 */
+ (JavaLangLong *)getMinLongWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

/*!
 @brief Returns the shift value from a prefix encoded <code>int</code>.
 @throw NumberFormatExceptionif the supplied <code>BytesRef</code> is
  not correctly prefix encoded.
 */
+ (jint)getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)val;

/*!
 @brief Returns the shift value from a prefix encoded <code>long</code>.
 @throw NumberFormatExceptionif the supplied <code>BytesRef</code> is
  not correctly prefix encoded.
 */
+ (jint)getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)val;

/*!
 @brief Returns prefix coded bits after reducing the precision by <code>shift</code> bits.
 This is method is used by <code>NumericTokenStream</code>.
  After encoding, <code>bytes.offset</code> will always be 0.
 @param val the numeric value
 @param shift how many bits to strip from the right
 @param bytes will contain the encoded value
 */
+ (void)intToPrefixCodedWithInt:(jint)val
                        withInt:(jint)shift
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)bytes;

/*!
 @brief Returns prefix coded bits after reducing the precision by <code>shift</code> bits.
 This is method is used by <code>NumericTokenStream</code>.
  After encoding, <code>bytes.offset</code> will always be 0.
 @param val the numeric value
 @param shift how many bits to strip from the right
 @param bytes will contain the encoded value
 */
+ (void)intToPrefixCodedBytesWithInt:(jint)val
                             withInt:(jint)shift
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)bytes;

/*!
 @brief Returns prefix coded bits after reducing the precision by <code>shift</code> bits.
 This is method is used by <code>NumericTokenStream</code>.
  After encoding, <code>bytes.offset</code> will always be 0.
 @param val the numeric value
 @param shift how many bits to strip from the right
 @param bytes will contain the encoded value
 */
+ (void)longToPrefixCodedWithLong:(jlong)val
                          withInt:(jint)shift
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)bytes;

/*!
 @brief Returns prefix coded bits after reducing the precision by <code>shift</code> bits.
 This is method is used by <code>NumericTokenStream</code>.
  After encoding, <code>bytes.offset</code> will always be 0.
 @param val the numeric value
 @param shift how many bits to strip from the right
 @param bytes will contain the encoded value
 */
+ (void)longToPrefixCodedBytesWithLong:(jlong)val
                               withInt:(jint)shift
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)bytes;

/*!
 @brief Returns an int from prefixCoded bytes.
 Rightmost bits will be zero for lower precision codes.
  This method can be used to decode a term's value.
 @throw NumberFormatExceptionif the supplied <code>BytesRef</code> is
  not correctly prefix encoded.
 - seealso: #intToPrefixCodedBytes
 */
+ (jint)prefixCodedToIntWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)val;

/*!
 @brief Returns a long from prefixCoded bytes.
 Rightmost bits will be zero for lower precision codes.
  This method can be used to decode a term's value.
 @throw NumberFormatExceptionif the supplied <code>BytesRef</code> is
  not correctly prefix encoded.
 - seealso: #longToPrefixCodedBytes
 */
+ (jlong)prefixCodedToLongWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)val;

/*!
 @brief Converts IEEE 754 representation of a double to sortable order (or back to the original)
 */
+ (jlong)sortableDoubleBitsWithLong:(jlong)bits;

/*!
 @brief Converts IEEE 754 representation of a float to sortable order (or back to the original)
 */
+ (jint)sortableFloatBitsWithInt:(jint)bits;

/*!
 @brief Converts a sortable <code>int</code> back to a <code>float</code>.
 - seealso: #floatToSortableInt
 */
+ (jfloat)sortableIntToFloatWithInt:(jint)val;

/*!
 @brief Converts a sortable <code>long</code> back to a <code>double</code>.
 - seealso: #doubleToSortableLong
 */
+ (jdouble)sortableLongToDoubleWithLong:(jlong)val;

/*!
 @brief Splits an int range recursively.
 You may implement a builder that adds clauses to a 
 <code>org.apache.lucene.search.BooleanQuery</code> for each call to its 
 <code>IntRangeBuilder.addRange(BytesRef,BytesRef)</code>
  method. 
 <p>This method is used by <code>NumericRangeQuery</code>.
 */
+ (void)splitIntRangeWithOrgApacheLuceneUtilNumericUtils_IntRangeBuilder:(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder *)builder
                                                                 withInt:(jint)precisionStep
                                                                 withInt:(jint)minBound
                                                                 withInt:(jint)maxBound;

/*!
 @brief Splits a long range recursively.
 You may implement a builder that adds clauses to a 
 <code>org.apache.lucene.search.BooleanQuery</code> for each call to its 
 <code>LongRangeBuilder.addRange(BytesRef,BytesRef)</code>
  method. 
 <p>This method is used by <code>NumericRangeQuery</code>.
 */
+ (void)splitLongRangeWithOrgApacheLuceneUtilNumericUtils_LongRangeBuilder:(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder *)builder
                                                                   withInt:(jint)precisionStep
                                                                  withLong:(jlong)minBound
                                                                  withLong:(jlong)maxBound;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNumericUtils)

/*!
 @brief The default precision step used by <code>LongField</code>,
  <code>DoubleField</code>, <code>NumericTokenStream</code>, <code>NumericRangeQuery</code>
 .
 */
inline jint OrgApacheLuceneUtilNumericUtils_get_PRECISION_STEP_DEFAULT(void);
#define OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, PRECISION_STEP_DEFAULT, jint)

/*!
 @brief The default precision step used by <code>IntField</code> and 
 <code>FloatField</code>.
 */
inline jint OrgApacheLuceneUtilNumericUtils_get_PRECISION_STEP_DEFAULT_32(void);
#define OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, PRECISION_STEP_DEFAULT_32, jint)

/*!
 @brief Longs are stored at lower precision by shifting off lower bits.The shift count is
  stored as <code>SHIFT_START_LONG+shift</code> in the first byte
 */
inline jbyte OrgApacheLuceneUtilNumericUtils_get_SHIFT_START_LONG(void);
#define OrgApacheLuceneUtilNumericUtils_SHIFT_START_LONG 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, SHIFT_START_LONG, jbyte)

/*!
 @brief The maximum term length (used for <code>byte[]</code> buffer size)
  for encoding <code>long</code> values.
 - seealso: #longToPrefixCodedBytes
 */
inline jint OrgApacheLuceneUtilNumericUtils_get_BUF_SIZE_LONG(void);
#define OrgApacheLuceneUtilNumericUtils_BUF_SIZE_LONG 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, BUF_SIZE_LONG, jint)

/*!
 @brief Integers are stored at lower precision by shifting off lower bits.The shift count is
  stored as <code>SHIFT_START_INT+shift</code> in the first byte
 */
inline jbyte OrgApacheLuceneUtilNumericUtils_get_SHIFT_START_INT(void);
#define OrgApacheLuceneUtilNumericUtils_SHIFT_START_INT 96
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, SHIFT_START_INT, jbyte)

/*!
 @brief The maximum term length (used for <code>byte[]</code> buffer size)
  for encoding <code>int</code> values.
 - seealso: #intToPrefixCodedBytes
 */
inline jint OrgApacheLuceneUtilNumericUtils_get_BUF_SIZE_INT(void);
#define OrgApacheLuceneUtilNumericUtils_BUF_SIZE_INT 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilNumericUtils, BUF_SIZE_INT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_longToPrefixCodedWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(jlong val, jint shift, OrgApacheLuceneUtilBytesRefBuilder *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_intToPrefixCodedWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(jint val, jint shift, OrgApacheLuceneUtilBytesRefBuilder *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_longToPrefixCodedBytesWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(jlong val, jint shift, OrgApacheLuceneUtilBytesRefBuilder *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_intToPrefixCodedBytesWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(jint val, jint shift, OrgApacheLuceneUtilBytesRefBuilder *bytes);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *val);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *val);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilNumericUtils_prefixCodedToLongWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *val);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilNumericUtils_prefixCodedToIntWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *val);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilNumericUtils_doubleToSortableLongWithDouble_(jdouble val);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilNumericUtils_sortableLongToDoubleWithLong_(jlong val);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilNumericUtils_floatToSortableIntWithFloat_(jfloat val);

FOUNDATION_EXPORT jfloat OrgApacheLuceneUtilNumericUtils_sortableIntToFloatWithInt_(jint val);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilNumericUtils_sortableDoubleBitsWithLong_(jlong bits);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilNumericUtils_sortableFloatBitsWithInt_(jint bits);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_splitLongRangeWithOrgApacheLuceneUtilNumericUtils_LongRangeBuilder_withInt_withLong_withLong_(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder *builder, jint precisionStep, jlong minBound, jlong maxBound);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_splitIntRangeWithOrgApacheLuceneUtilNumericUtils_IntRangeBuilder_withInt_withInt_withInt_(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder *builder, jint precisionStep, jint minBound, jint maxBound);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneUtilNumericUtils_filterPrefixCodedLongsWithOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneIndexTermsEnum *termsEnum);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneUtilNumericUtils_filterPrefixCodedIntsWithOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneIndexTermsEnum *termsEnum);

FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneUtilNumericUtils_getMinIntWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *terms);

FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneUtilNumericUtils_getMaxIntWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *terms);

FOUNDATION_EXPORT JavaLangLong *OrgApacheLuceneUtilNumericUtils_getMinLongWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *terms);

FOUNDATION_EXPORT JavaLangLong *OrgApacheLuceneUtilNumericUtils_getMaxLongWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNumericUtils)

#endif

#if !defined (OrgApacheLuceneUtilNumericUtils_LongRangeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils || defined(INCLUDE_OrgApacheLuceneUtilNumericUtils_LongRangeBuilder))
#define OrgApacheLuceneUtilNumericUtils_LongRangeBuilder_

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Callback for <code>splitLongRange</code>.
 You need to overwrite only one of the methods.
 @since 2.9, API changed non backwards-compliant in 4.0
 */
@interface OrgApacheLuceneUtilNumericUtils_LongRangeBuilder : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Overwrite this method, if you like to receive the already prefix encoded range bounds.
 You can directly build classical (inclusive) range queries from them.
 */
- (void)addRangeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minPrefixCoded
                withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxPrefixCoded;

/*!
 @brief Overwrite this method, if you like to receive the raw long range bounds.
 You can use this for e.g. debugging purposes (print out range bounds).
 */
- (void)addRangeWithLong:(jlong)min
                withLong:(jlong)max
                 withInt:(jint)shift;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_LongRangeBuilder_init(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder)

#endif

#if !defined (OrgApacheLuceneUtilNumericUtils_IntRangeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils || defined(INCLUDE_OrgApacheLuceneUtilNumericUtils_IntRangeBuilder))
#define OrgApacheLuceneUtilNumericUtils_IntRangeBuilder_

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Callback for <code>splitIntRange</code>.
 You need to overwrite only one of the methods.
 @since 2.9, API changed non backwards-compliant in 4.0
 */
@interface OrgApacheLuceneUtilNumericUtils_IntRangeBuilder : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Overwrite this method, if you like to receive the already prefix encoded range bounds.
 You can directly build classical range (inclusive) queries from them.
 */
- (void)addRangeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minPrefixCoded
                withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxPrefixCoded;

/*!
 @brief Overwrite this method, if you like to receive the raw int range bounds.
 You can use this for e.g. debugging purposes (print out range bounds).
 */
- (void)addRangeWithInt:(jint)min
                withInt:(jint)max
                withInt:(jint)shift;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilNumericUtils_IntRangeBuilder_init(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilNumericUtils")
