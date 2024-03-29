//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/config/NumericConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig))
#define OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_

@class JavaTextNumberFormat;
@class OrgApacheLuceneDocumentFieldType_NumericType;

/*!
 @brief This class holds the configuration used to parse numeric queries and create 
 <code>NumericRangeQuery</code>s.
 - seealso: NumericRangeQuery
 - seealso: NumberFormat
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig : NSObject

#pragma mark Public

/*!
 @brief Constructs a <code>NumericConfig</code> object.
 @param precisionStep the precision used to index the numeric values
 @param format the 
 <code>NumberFormat</code>  used to parse a <code>String</code>  to           <code>Number</code>
 @param type the numeric type used to index the numeric values
 - seealso: NumericConfig#setPrecisionStep(int)
 - seealso: NumericConfig#setNumberFormat(NumberFormat)
 - seealso: #setType(org.apache.lucene.document.FieldType.NumericType)
 */
- (instancetype __nonnull)initWithInt:(jint)precisionStep
             withJavaTextNumberFormat:(JavaTextNumberFormat *)format
withOrgApacheLuceneDocumentFieldType_NumericType:(OrgApacheLuceneDocumentFieldType_NumericType *)type;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Returns the <code>NumberFormat</code> used to parse a <code>String</code> to 
 <code>Number</code>
 @return the <code>NumberFormat</code> used to parse a <code>String</code> to
          <code>Number</code>
 */
- (JavaTextNumberFormat *)getNumberFormat;

/*!
 @brief Returns the precision used to index the numeric values
 @return the precision used to index the numeric values
 - seealso: NumericRangeQuery#getPrecisionStep()
 */
- (jint)getPrecisionStep;

/*!
 @brief Returns the numeric type used to index the numeric values
 @return the numeric type used to index the numeric values
 */
- (OrgApacheLuceneDocumentFieldType_NumericType *)getType;

/*!
 @brief Sets the <code>NumberFormat</code> used to parse a <code>String</code> to 
 <code>Number</code>
 @param format the 
 <code>NumberFormat</code>  used to parse a <code>String</code>  to           <code>Number</code>
  , cannot be  <code> null </code>
 */
- (void)setNumberFormatWithJavaTextNumberFormat:(JavaTextNumberFormat *)format;

/*!
 @brief Sets the precision used to index the numeric values
 @param precisionStep the precision used to index the numeric values
 - seealso: NumericRangeQuery#getPrecisionStep()
 */
- (void)setPrecisionStepWithInt:(jint)precisionStep;

/*!
 @brief Sets the numeric type used to index the numeric values
 @param type the numeric type used to index the numeric values
 */
- (void)setTypeWithOrgApacheLuceneDocumentFieldType_NumericType:(OrgApacheLuceneDocumentFieldType_NumericType *)type;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *self, jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *new_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *create_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig")
