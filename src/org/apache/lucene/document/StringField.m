//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/StringField.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/StringField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/document/StringField must not be compiled with ARC (-fobjc-arc)"
#endif

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentStringField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED;
OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStringField_TYPE_STORED;

@implementation OrgApacheLuceneDocumentStringField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED {
  return OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED;
}

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED {
  return OrgApacheLuceneDocumentStringField_TYPE_STORED;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withOrgApacheLuceneDocumentField_Store:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneDocumentField_Store:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_NOT_STORED", "LOrgApacheLuceneDocumentFieldType;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "TYPE_STORED", "LOrgApacheLuceneDocumentFieldType;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LOrgApacheLuceneDocumentField_Store;", "LNSString;LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneDocumentField_Store;", &OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED, &OrgApacheLuceneDocumentStringField_TYPE_STORED };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentStringField = { "StringField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentStringField;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentStringField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStringField_TYPE_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setTokenizedWithBoolean:false];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED freeze];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setTokenizedWithBoolean:false];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentStringField)
  }
}

@end

void OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentStringField *self, NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(self, name, value, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentStringField_TYPE_STORED : OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED);
}

OrgApacheLuceneDocumentStringField *new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentStringField *create_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

void OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentStringField *self, NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(self, name, value, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentStringField_TYPE_STORED : OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED);
}

OrgApacheLuceneDocumentStringField *new_OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentStringField *create_OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentStringField)
