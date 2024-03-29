//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/StoredField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentStoredField")
#ifdef RESTRICT_OrgApacheLuceneDocumentStoredField
#define INCLUDE_ALL_OrgApacheLuceneDocumentStoredField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentStoredField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentStoredField

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneDocumentStoredField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentStoredField || defined(INCLUDE_OrgApacheLuceneDocumentStoredField))
#define OrgApacheLuceneDocumentStoredField_

#define RESTRICT_OrgApacheLuceneDocumentField 1
#define INCLUDE_OrgApacheLuceneDocumentField 1
#include "org/apache/lucene/document/Field.h"

@class IOSByteArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_Index;
@class OrgApacheLuceneDocumentField_Store;
@class OrgApacheLuceneDocumentField_TermVector;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief A field whose value is stored so that <code>IndexSearcher.doc</code>
  and <code>IndexReader.document</code> will
   return the field and its value.
 */
@interface OrgApacheLuceneDocumentStoredField : OrgApacheLuceneDocumentField
@property (readonly, class, strong) OrgApacheLuceneDocumentFieldType *TYPE NS_SWIFT_NAME(TYPE);

#pragma mark Public

/*!
 @brief Create a stored-only field with the given binary value.
 <p>NOTE: the provided byte[] is not copied so be sure
  not to change it until you're done with this field.
 @param name field name
 @param value byte array pointing to binary content (not copied)
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                             withByteArray:(IOSByteArray *)value;

/*!
 @brief Create a stored-only field with the given binary value.
 <p>NOTE: the provided byte[] is not copied so be sure
  not to change it until you're done with this field.
 @param name field name
 @param value byte array pointing to binary content (not copied)
 @param offset starting position of the byte array
 @param length valid length of the byte array
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                             withByteArray:(IOSByteArray *)value
                                   withInt:(jint)offset
                                   withInt:(jint)length;

/*!
 @brief Create a stored-only field with the given binary value.
 <p>NOTE: the provided BytesRef is not copied so be sure
  not to change it until you're done with this field.
 @param name field name
 @param value BytesRef pointing to binary content (not copied)
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value;

/*!
 @brief Create a stored-only field with the given double value.
 @param name field name
 @param value double value
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                withDouble:(jdouble)value;

/*!
 @brief Create a stored-only field with the given float value.
 @param name field name
 @param value float value
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                 withFloat:(jfloat)value;

/*!
 @brief Create a stored-only field with the given integer value.
 @param name field name
 @param value integer value
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)value;

/*!
 @brief Create a stored-only field with the given long value.
 @param name field name
 @param value long value
 @throw IllegalArgumentExceptionif the field name is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                  withLong:(jlong)value;

/*!
 @brief Create a stored-only field with the given string value.
 @param name field name
 @param value string value
 @throw IllegalArgumentExceptionif the field name or value is null.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
                                   withInt:(jint)arg2
                                   withInt:(jint)arg3
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentStoredField)

/*!
 @brief Type for a stored-only field.
 */
inline OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStoredField_get_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStoredField_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentStoredField, TYPE, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(OrgApacheLuceneDocumentStoredField *self, NSString *name, IOSByteArray *value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(OrgApacheLuceneDocumentStoredField *self, NSString *name, IOSByteArray *value, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneDocumentStoredField *self, NSString *name, OrgApacheLuceneUtilBytesRef *value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *name, OrgApacheLuceneUtilBytesRef *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *name, OrgApacheLuceneUtilBytesRef *value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(OrgApacheLuceneDocumentStoredField *self, NSString *name, NSString *value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(NSString *name, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(NSString *name, NSString *value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jint value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(NSString *name, jint value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(NSString *name, jint value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jfloat value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(NSString *name, jfloat value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(NSString *name, jfloat value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jlong value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(NSString *name, jlong value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(NSString *name, jlong value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jdouble value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(NSString *name, jdouble value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(NSString *name, jdouble value);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentStoredField)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentStoredField")
