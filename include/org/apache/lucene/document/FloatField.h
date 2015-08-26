//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/FloatField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneDocumentFloatField_INCLUDE_ALL")
#if OrgApacheLuceneDocumentFloatField_RESTRICT
#define OrgApacheLuceneDocumentFloatField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneDocumentFloatField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneDocumentFloatField_RESTRICT

#if !defined (_OrgApacheLuceneDocumentFloatField_) && (OrgApacheLuceneDocumentFloatField_INCLUDE_ALL || OrgApacheLuceneDocumentFloatField_INCLUDE)
#define _OrgApacheLuceneDocumentFloatField_

#define OrgApacheLuceneDocumentField_RESTRICT 1
#define OrgApacheLuceneDocumentField_INCLUDE 1
#include "org/apache/lucene/document/Field.h"

@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_StoreEnum;

@interface OrgApacheLuceneDocumentFloatField : OrgApacheLuceneDocumentField

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type;

- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value
withOrgApacheLuceneDocumentField_StoreEnum:(OrgApacheLuceneDocumentField_StoreEnum *)stored;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentFloatField)

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneDocumentFloatField, TYPE_NOT_STORED_, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentFloatField_TYPE_STORED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneDocumentFloatField, TYPE_STORED_, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_StoreEnum_(OrgApacheLuceneDocumentFloatField *self, NSString *name, jfloat value, OrgApacheLuceneDocumentField_StoreEnum *stored);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFloatField *new_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_StoreEnum_(NSString *name, jfloat value, OrgApacheLuceneDocumentField_StoreEnum *stored) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentFloatField *self, NSString *name, jfloat value, OrgApacheLuceneDocumentFieldType *type);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFloatField *new_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(NSString *name, jfloat value, OrgApacheLuceneDocumentFieldType *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentFloatField)

#endif

#pragma pop_macro("OrgApacheLuceneDocumentFloatField_INCLUDE_ALL")
