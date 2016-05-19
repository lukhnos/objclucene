//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/FieldType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFieldType")
#ifdef RESTRICT_OrgApacheLuceneDocumentFieldType
#define INCLUDE_ALL_OrgApacheLuceneDocumentFieldType 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentFieldType 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentFieldType

#if !defined (OrgApacheLuceneDocumentFieldType_) && (INCLUDE_ALL_OrgApacheLuceneDocumentFieldType || defined(INCLUDE_OrgApacheLuceneDocumentFieldType))
#define OrgApacheLuceneDocumentFieldType_

#define RESTRICT_OrgApacheLuceneIndexIndexableFieldType 1
#define INCLUDE_OrgApacheLuceneIndexIndexableFieldType 1
#include "org/apache/lucene/index/IndexableFieldType.h"

@class OrgApacheLuceneDocumentFieldType_NumericType;
@class OrgApacheLuceneIndexDocValuesType;
@class OrgApacheLuceneIndexIndexOptions;

/*!
 @brief Describes the properties of a field.
 */
@interface OrgApacheLuceneDocumentFieldType : NSObject < OrgApacheLuceneIndexIndexableFieldType >

#pragma mark Public

/*!
 @brief Create a new FieldType with default properties.
 */
- (instancetype)init;

/*!
 @brief Create a new mutable FieldType with all of the properties from <code>ref</code>
 */
- (instancetype)initWithOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)ref;

/*!
 @brief 
 <p>
 The default is <code>null</code> (no docValues)
 - seealso: #setDocValuesType(DocValuesType)
 */
- (OrgApacheLuceneIndexDocValuesType *)docValuesType;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Prevents future changes.
 Note, it is recommended that this is called once
 the FieldTypes's properties have been set, to prevent unintentional state
 changes.
 */
- (void)freeze;

- (NSUInteger)hash;

/*!
 @brief 
 <p>
 The default is <code>IndexOptions.DOCS_AND_FREQS_AND_POSITIONS</code>.
 - seealso: #setIndexOptions(IndexOptions)
 */
- (OrgApacheLuceneIndexIndexOptions *)indexOptions;

/*!
 @brief Precision step for numeric field.
 <p>
 This has no effect if <code>numericType()</code> returns null.
 <p>
 The default is <code>NumericUtils.PRECISION_STEP_DEFAULT</code>
 - seealso: #setNumericPrecisionStep(int)
 */
- (jint)numericPrecisionStep;

/*!
 @brief NumericType: if non-null then the field's value will be indexed
 numerically so that <code>NumericRangeQuery</code> can be used at 
 search time.
 <p>
 The default is <code>null</code> (no numeric type) 
 - seealso: #setNumericType(NumericType)
 */
- (OrgApacheLuceneDocumentFieldType_NumericType *)numericType;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setOmitNorms(boolean)
 */
- (jboolean)omitNorms;

/*!
 @brief Sets the field's DocValuesType
 @param type DocValues type, or null if no DocValues should be stored.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #docValuesType()
 */
- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesType:(OrgApacheLuceneIndexDocValuesType *)type;

/*!
 @brief Sets the indexing options for the field:
 @param value indexing options
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #indexOptions()
 */
- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:(OrgApacheLuceneIndexIndexOptions *)value;

/*!
 @brief Sets the numeric precision step for the field.
 @param precisionStep numeric precision step for the field
 @throws IllegalArgumentException if precisionStep is less than 1.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #numericPrecisionStep()
 */
- (void)setNumericPrecisionStepWithInt:(jint)precisionStep;

/*!
 @brief Specifies the field's numeric type.
 @param type numeric type, or null if the field has no numeric type.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #numericType()
 */
- (void)setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:(OrgApacheLuceneDocumentFieldType_NumericType *)type;

/*!
 @brief Set to <code>true</code> to omit normalization values for the field.
 @param value true if this field should omit norms.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #omitNorms()
 */
- (void)setOmitNormsWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> to store this field.
 @param value true if this field should be stored.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #stored()
 */
- (void)setStoredWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> to also store token character offsets into the term
 vector for this field.
 @param value true if this field should store term vector offsets.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #storeTermVectorOffsets()
 */
- (void)setStoreTermVectorOffsetsWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> to also store token payloads into the term
 vector for this field.
 @param value true if this field should store term vector payloads.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #storeTermVectorPayloads()
 */
- (void)setStoreTermVectorPayloadsWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> to also store token positions into the term
 vector for this field.
 @param value true if this field should store term vector positions.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #storeTermVectorPositions()
 */
- (void)setStoreTermVectorPositionsWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> if this field's indexed form should be also stored 
 into term vectors.
 @param value true if this field should store term vectors.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #storeTermVectors()
 */
- (void)setStoreTermVectorsWithBoolean:(jboolean)value;

/*!
 @brief Set to <code>true</code> to tokenize this field's contents via the 
 configured <code>Analyzer</code>.
 @param value true if this field should be tokenized.
 @throws IllegalStateException if this FieldType is frozen against
 future modifications.
 - seealso: #tokenized()
 */
- (void)setTokenizedWithBoolean:(jboolean)value;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setStored(boolean)
 */
- (jboolean)stored;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setStoreTermVectorOffsets(boolean)
 */
- (jboolean)storeTermVectorOffsets;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setStoreTermVectorPayloads(boolean)
 */
- (jboolean)storeTermVectorPayloads;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setStoreTermVectorPositions(boolean)
 */
- (jboolean)storeTermVectorPositions;

/*!
 @brief 
 <p>
 The default is <code>false</code>.
 - seealso: #setStoreTermVectors(boolean)
 */
- (jboolean)storeTermVectors;

/*!
 @brief 
 <p>
 The default is <code>true</code>.
 - seealso: #setTokenized(boolean)
 */
- (jboolean)tokenized;

/*!
 @brief Prints a Field for human consumption.
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Throws an exception if this FieldType is frozen.
 Subclasses should
 call this within setters for additional state.
 */
- (void)checkIfFrozen;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentFieldType)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentFieldType *self, OrgApacheLuceneDocumentFieldType *ref);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *new_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentFieldType *ref) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *create_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentFieldType *ref);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentFieldType_init(OrgApacheLuceneDocumentFieldType *self);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *new_OrgApacheLuceneDocumentFieldType_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *create_OrgApacheLuceneDocumentFieldType_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentFieldType)

#endif

#if !defined (OrgApacheLuceneDocumentFieldType_NumericType_) && (INCLUDE_ALL_OrgApacheLuceneDocumentFieldType || defined(INCLUDE_OrgApacheLuceneDocumentFieldType_NumericType))
#define OrgApacheLuceneDocumentFieldType_NumericType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneDocumentFieldType_NumericType_Enum) {
  OrgApacheLuceneDocumentFieldType_NumericType_Enum_INT = 0,
  OrgApacheLuceneDocumentFieldType_NumericType_Enum_LONG = 1,
  OrgApacheLuceneDocumentFieldType_NumericType_Enum_FLOAT = 2,
  OrgApacheLuceneDocumentFieldType_NumericType_Enum_DOUBLE = 3,
};

/*!
 @brief Data type of the numeric value
 @since 3.2
 */
@interface OrgApacheLuceneDocumentFieldType_NumericType : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneDocumentFieldType_NumericType *)INT;

+ (OrgApacheLuceneDocumentFieldType_NumericType *)LONG;

+ (OrgApacheLuceneDocumentFieldType_NumericType *)FLOAT;

+ (OrgApacheLuceneDocumentFieldType_NumericType *)DOUBLE;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneDocumentFieldType_NumericType *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneDocumentFieldType_NumericType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentFieldType_NumericType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_values_[];

/*!
 @brief 32-bit integer numeric type
 */
inline OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_get_INT();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentFieldType_NumericType, INT)

/*!
 @brief 64-bit long numeric type
 */
inline OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_get_LONG();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentFieldType_NumericType, LONG)

/*!
 @brief 32-bit float numeric type
 */
inline OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_get_FLOAT();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentFieldType_NumericType, FLOAT)

/*!
 @brief 64-bit double numeric type
 */
inline OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_get_DOUBLE();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentFieldType_NumericType, DOUBLE)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneDocumentFieldType_NumericType_values();

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType_NumericType *OrgApacheLuceneDocumentFieldType_NumericType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentFieldType_NumericType)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFieldType")
