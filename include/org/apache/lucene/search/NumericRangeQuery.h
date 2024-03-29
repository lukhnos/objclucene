//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/NumericRangeQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchNumericRangeQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchNumericRangeQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchNumericRangeQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeQuery || defined(INCLUDE_OrgApacheLuceneSearchNumericRangeQuery))
#define OrgApacheLuceneSearchNumericRangeQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class JavaLangDouble;
@class JavaLangFloat;
@class JavaLangInteger;
@class JavaLangLong;
@class OrgApacheLuceneDocumentFieldType_NumericType;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilAttributeSource;

/*!
 @brief <p>A <code>Query</code> that matches numeric values within a
  specified range.
 To use this, you must first index the
  numeric values using <code>IntField</code>, <code>FloatField</code>
 , <code>LongField</code> or <code>DoubleField</code> (expert: <code>NumericTokenStream</code>
 ).  If your terms are instead textual,
  you should use <code>TermRangeQuery</code>.</p>
  
 <p>You create a new NumericRangeQuery with the static
  factory methods, eg: 
 <pre class="prettyprint">
  Query q = NumericRangeQuery.newFloatRange("weight", 0.03f, 0.10f, true, true); 
 
@endcode
  matches all documents whose float valued "weight" field
  ranges from 0.03 to 0.10, inclusive. 
 <p>The performance of NumericRangeQuery is much better
  than the corresponding <code>TermRangeQuery</code> because the
  number of terms that must be searched is usually far
  fewer, thanks to trie indexing, described below.</p>
  
 <p>You can optionally specify a <a href="#precisionStepDesc">
 <code>precisionStep</code></a>
  when creating this query.  This is necessary if you've
  changed this configuration from its default (4) during
  indexing.  Lower values consume more disk space but speed
  up searching.  Suitable values are between <b>1</b> and 
 <b>8</b>. A good starting point to test is <b>4</b>,
  which is the default value for all <code>Numeric*</code>
  classes.  See <a href="#precisionStepDesc">below</a> for
  details. 
 <p>This query defaults to MultiTermQuery.CONSTANT_SCORE_REWRITE
 .
  With precision steps of &le;4, this query can be run with
  one of the BooleanQuery rewrite methods without changing
  BooleanQuery's default max clause count. 
 <br><h3>How it works</h3>
  
 <p>See the publication about <a target="_blank" href="http://www.panfmp.org">panFMP</a>,
  where this algorithm was described (referred to as <code>TrieRangeQuery</code>):
  
 <blockquote><strong>Schindler, U, Diepenbroek, M</strong>, 2008. 
 <em>Generic XML-based Framework for Metadata Portals.</em>
  Computers &amp; Geosciences 34 (12), 1947-1955. 
 <a href="http://dx.doi.org/10.1016/j.cageo.2008.02.023" target="_blank">
 doi:10.1016/j.cageo.2008.02.023</a></blockquote>
  
 <p><em>A quote from this paper:</em> Because Apache Lucene is a full-text
  search engine and not a conventional database, it cannot handle numerical ranges
  (e.g., field value is inside user defined bounds, even dates are numerical values).
  We have developed an extension to Apache Lucene that stores
  the numerical values in a special string-encoded format with variable precision
  (all numerical values like doubles, longs, floats, and ints are converted to
  lexicographic sortable string representations and stored with different precisions
  (for a more detailed description of how the values are stored,
  see <code>NumericUtils</code>). A range is then divided recursively into multiple intervals for searching:
  The center of the range is searched only with the lowest possible precision in the <em>trie</em>,
  while the boundaries are matched more exactly. This reduces the number of terms dramatically.</p>
  
 <p>For the variant that stores long values in 8 different precisions (each reduced by 8 bits) that
  uses a lowest precision of 1 byte, the index contains only a maximum of 256 distinct values in the
  lowest precision. Overall, a range could consist of a theoretical maximum of 
 <code>7*255*2 + 255 = 3825</code> distinct terms (when there is a term for every distinct value of an
  8-byte-number in the index and the range covers almost all of them; a maximum of 255 distinct values is used
  because it would always be possible to reduce the full 256 values to one term with degraded precision).
  In practice, we have seen up to 300 terms in most cases (index with 500,000 metadata records
  and a uniform value distribution).</p>
  
 <h3><a name="precisionStepDesc">Precision Step</a></h3>
  <p>You can choose any <code>precisionStep</code> when encoding values.
  Lower step values mean more precisions and so more terms in index (and index gets larger). The number
  of indexed terms per value is (those are generated by <code>NumericTokenStream</code>):
  <p style="font-family:serif">
  &nbsp;&nbsp;indexedTermsPerValue = <b>ceil</b><big>(</big>bitsPerValue / precisionStep<big>)</big>
  </p>
  As the lower precision terms are shared by many values, the additional terms only
  slightly grow the term dictionary (approx. 7% for <code>precisionStep=4</code>), but have a larger
  impact on the postings (the postings file will have  more entries, as every document is linked to 
 <code>indexedTermsPerValue</code> terms instead of one). The formula to estimate the growth
  of the term dictionary in comparison to one term per value: 
 <p>
  <!-- the formula in the alt attribute was transformed from latex to PNG with http://1.618034.com/latex.php (with 110 dpi): -->
  &nbsp;&nbsp;<img src="doc-files/nrq-formula-1.png" alt="\mathrm{termDictOverhead} = \sum\limits_{i=0}^{\mathrm{indexedTermsPerValue}-1} \frac{1}{2^{\mathrm{precisionStep}\cdot i}}">
  </p>
  <p>On the other hand, if the <code>precisionStep</code> is smaller, the maximum number of terms to match reduces,
  which optimizes query speed. The formula to calculate the maximum number of terms that will be visited while
  executing the query is: 
 <p>
  <!-- the formula in the alt attribute was transformed from latex to PNG with http://1.618034.com/latex.php (with 110 dpi): -->
  &nbsp;&nbsp;<img src="doc-files/nrq-formula-2.png" alt="\mathrm{maxQueryTerms} = \left[ \left( \mathrm{indexedTermsPerValue} - 1 \right) \cdot \left(2^\mathrm{precisionStep} - 1 \right) \cdot 2 \right] + \left( 2^\mathrm{precisionStep} - 1 \right)">
  </p>
  <p>For longs stored using a precision step of 4, <code>maxQueryTerms = 15*15*2 + 15 = 465</code>, and for a precision
  step of 2, <code>maxQueryTerms = 31*3*2 + 3 = 189</code>. But the faster search speed is reduced by more seeking
  in the term enum of the index. Because of this, the ideal <code>precisionStep</code> value can only
  be found out by testing. <b>Important:</b> You can index with a lower precision step value and test search speed
  using a multiple of the original step value.</p>
  
 <p>Good values for <code>precisionStep</code> are depending on usage and data type: 
 <ul>
   <li>The default for all data types is <b>4</b>, which is used, when no <code>precisionStep</code> is given.
   <li>Ideal value in most cases for <em>64 bit</em> data types <em>(long, double)</em> is <b>6</b> or <b>8</b>.
   <li>Ideal value in most cases for <em>32 bit</em> data types <em>(int, float)</em> is <b>4</b>.
   <li>For low cardinality fields larger precision steps are good. If the cardinality is &lt; 100, it is
   fair to use <code>Integer.MAX_VALUE</code> (see below).
   <li>Steps <b>&ge;64</b> for <em>long/double</em> and <b>&ge;32</b> for <em>int/float</em> produces one token
   per value in the index and querying is as slow as a conventional <code>TermRangeQuery</code>. But it can be used
   to produce fields, that are solely used for sorting (in this case simply use <code>Integer.MAX_VALUE</code> as
   <code>precisionStep</code>). Using <code>IntField</code>,
   <code>LongField</code>, <code>FloatField</code> or <code>DoubleField</code> for sorting
   is ideal, because building the field cache is much faster than with text-only numbers.
   These fields have one term per value and therefore also work with term enumeration for building distinct lists
   (e.g. facets / preselected values to search for).
   Sorting is also possible with range query optimized fields using one of the above <code>precisionSteps</code>.
  </ul>
  
 <p>Comparisons of the different types of RangeQueries on an index with about 500,000 docs showed
  that <code>TermRangeQuery</code> in boolean rewrite mode (with raised <code>BooleanQuery</code> clause count)
  took about 30-40 secs to complete, <code>TermRangeQuery</code> in constant score filter rewrite mode took 5 secs
  and executing this class took &lt;100ms to complete (on an Opteron64 machine, Java 1.5, 8 bit
  precision step). This query type was developed for a geographic portal, where the performance for
  e.g. bounding boxes or exact date/time stamps is important.</p>
 @since 2.9
 */
@interface OrgApacheLuceneSearchNumericRangeQuery : OrgApacheLuceneSearchMultiTermQuery {
 @public
  jint precisionStep_;
  OrgApacheLuceneDocumentFieldType_NumericType *dataType_;
  NSNumber *min_;
  NSNumber *max_;
  jboolean minInclusive_;
  jboolean maxInclusive_;
}
@property (readonly, class) jlong LONG_NEGATIVE_INFINITY NS_SWIFT_NAME(LONG_NEGATIVE_INFINITY);
@property (readonly, class) jlong LONG_POSITIVE_INFINITY NS_SWIFT_NAME(LONG_POSITIVE_INFINITY);
@property (readonly, class) jint INT_NEGATIVE_INFINITY NS_SWIFT_NAME(INT_NEGATIVE_INFINITY);
@property (readonly, class) jint INT_POSITIVE_INFINITY NS_SWIFT_NAME(INT_POSITIVE_INFINITY);

#pragma mark Public

- (jboolean)isEqual:(id)o;

/*!
 @brief Returns the upper value of this range query
 */
- (NSNumber *)getMax;

/*!
 @brief Returns the lower value of this range query
 */
- (NSNumber *)getMin;

/*!
 @brief Returns the precision step.
 */
- (jint)getPrecisionStep;

- (NSUInteger)hash;

/*!
 @brief Returns <code>true</code> if the upper endpoint is inclusive
 */
- (jboolean)includesMax;

/*!
 @brief Returns <code>true</code> if the lower endpoint is inclusive
 */
- (jboolean)includesMin;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>double</code>
  range using the default <code>precisionStep</code> <code>NumericUtils.PRECISION_STEP_DEFAULT</code> (16).
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>.
  <code>Double.NaN</code> will never match a half-open range, to hit <code>NaN</code> use a query
  with <code>min == max == Double.NaN</code>.  By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newDoubleRangeWithNSString:(NSString *)field
                                                    withJavaLangDouble:(JavaLangDouble *)min
                                                    withJavaLangDouble:(JavaLangDouble *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>double</code>
  range using the given <a href="#precisionStepDesc"><code>precisionStep</code></a>.
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>.
  <code>Double.NaN</code> will never match a half-open range, to hit <code>NaN</code> use a query
  with <code>min == max == Double.NaN</code>.  By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newDoubleRangeWithNSString:(NSString *)field
                                                               withInt:(jint)precisionStep
                                                    withJavaLangDouble:(JavaLangDouble *)min
                                                    withJavaLangDouble:(JavaLangDouble *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>float</code>
  range using the default <code>precisionStep</code> <code>NumericUtils.PRECISION_STEP_DEFAULT_32</code> (8).
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>.
  <code>Float.NaN</code> will never match a half-open range, to hit <code>NaN</code> use a query
  with <code>min == max == Float.NaN</code>.  By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newFloatRangeWithNSString:(NSString *)field
                                                    withJavaLangFloat:(JavaLangFloat *)min
                                                    withJavaLangFloat:(JavaLangFloat *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>float</code>
  range using the given <a href="#precisionStepDesc"><code>precisionStep</code></a>.
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>.
  <code>Float.NaN</code> will never match a half-open range, to hit <code>NaN</code> use a query
  with <code>min == max == Float.NaN</code>.  By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newFloatRangeWithNSString:(NSString *)field
                                                              withInt:(jint)precisionStep
                                                    withJavaLangFloat:(JavaLangFloat *)min
                                                    withJavaLangFloat:(JavaLangFloat *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>int</code>
  range using the given <a href="#precisionStepDesc"><code>precisionStep</code></a>.
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>. By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newIntRangeWithNSString:(NSString *)field
                                                            withInt:(jint)precisionStep
                                                withJavaLangInteger:(JavaLangInteger *)min
                                                withJavaLangInteger:(JavaLangInteger *)max
                                                        withBoolean:(jboolean)minInclusive
                                                        withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>int</code>
  range using the default <code>precisionStep</code> <code>NumericUtils.PRECISION_STEP_DEFAULT_32</code> (8).
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>. By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newIntRangeWithNSString:(NSString *)field
                                                withJavaLangInteger:(JavaLangInteger *)min
                                                withJavaLangInteger:(JavaLangInteger *)max
                                                        withBoolean:(jboolean)minInclusive
                                                        withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>long</code>
  range using the given <a href="#precisionStepDesc"><code>precisionStep</code></a>.
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>. By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newLongRangeWithNSString:(NSString *)field
                                                             withInt:(jint)precisionStep
                                                    withJavaLangLong:(JavaLangLong *)min
                                                    withJavaLangLong:(JavaLangLong *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Factory that creates a <code>NumericRangeQuery</code>, that queries a <code>long</code>
  range using the default <code>precisionStep</code> <code>NumericUtils.PRECISION_STEP_DEFAULT</code> (16).
 You can have half-open ranges (which are in fact &lt;/&le; or &gt;/&ge; queries)
  by setting the min or max value to <code>null</code>. By setting inclusive to false, it will
  match all documents excluding the bounds, with inclusive on, the boundaries are hits, too.
 */
+ (OrgApacheLuceneSearchNumericRangeQuery *)newLongRangeWithNSString:(NSString *)field
                                                    withJavaLangLong:(JavaLangLong *)min
                                                    withJavaLangLong:(JavaLangLong *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchNumericRangeQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchNumericRangeQuery, dataType_, OrgApacheLuceneDocumentFieldType_NumericType *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchNumericRangeQuery, min_, NSNumber *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchNumericRangeQuery, max_, NSNumber *)

inline jlong OrgApacheLuceneSearchNumericRangeQuery_get_LONG_NEGATIVE_INFINITY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneSearchNumericRangeQuery_LONG_NEGATIVE_INFINITY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchNumericRangeQuery, LONG_NEGATIVE_INFINITY, jlong)

inline jlong OrgApacheLuceneSearchNumericRangeQuery_get_LONG_POSITIVE_INFINITY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneSearchNumericRangeQuery_LONG_POSITIVE_INFINITY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchNumericRangeQuery, LONG_POSITIVE_INFINITY, jlong)

inline jint OrgApacheLuceneSearchNumericRangeQuery_get_INT_NEGATIVE_INFINITY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneSearchNumericRangeQuery_INT_NEGATIVE_INFINITY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchNumericRangeQuery, INT_NEGATIVE_INFINITY, jint)

inline jint OrgApacheLuceneSearchNumericRangeQuery_get_INT_POSITIVE_INFINITY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneSearchNumericRangeQuery_INT_POSITIVE_INFINITY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchNumericRangeQuery, INT_POSITIVE_INFINITY, jint)

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeQuery *OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchNumericRangeQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeQuery")
