//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/SortedDocValuesField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE_ALL")
#if OrgApacheLuceneDocumentSortedDocValuesField_RESTRICT
#define OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneDocumentSortedDocValuesField_RESTRICT

#if !defined (_OrgApacheLuceneDocumentSortedDocValuesField_) && (OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE_ALL || OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE)
#define _OrgApacheLuceneDocumentSortedDocValuesField_

#define OrgApacheLuceneDocumentField_RESTRICT 1
#define OrgApacheLuceneDocumentField_INCLUDE 1
#include "org/apache/lucene/document/Field.h"

@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneDocumentSortedDocValuesField : OrgApacheLuceneDocumentField

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentSortedDocValuesField)

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentSortedDocValuesField_TYPE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneDocumentSortedDocValuesField, TYPE_, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentSortedDocValuesField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneDocumentSortedDocValuesField *self, NSString *name, OrgApacheLuceneUtilBytesRef *bytes);

FOUNDATION_EXPORT OrgApacheLuceneDocumentSortedDocValuesField *new_OrgApacheLuceneDocumentSortedDocValuesField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *name, OrgApacheLuceneUtilBytesRef *bytes) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentSortedDocValuesField)

#endif

#pragma pop_macro("OrgApacheLuceneDocumentSortedDocValuesField_INCLUDE_ALL")
