//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationDocValuesField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/text/CollationKey.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/collation/CollationDocValuesField.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/SortedDocValuesField.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneCollationCollationDocValuesField () {
 @public
  NSString *name_CollationDocValuesField_;
  JavaTextCollator *collator_;
  OrgApacheLuceneUtilBytesRef *bytes_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationDocValuesField, name_CollationDocValuesField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationDocValuesField, collator_, JavaTextCollator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationDocValuesField, bytes_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneCollationCollationDocValuesField

- (instancetype)initWithNSString:(NSString *)name
            withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(self, name, collator);
  return self;
}

- (NSString *)name {
  return name_CollationDocValuesField_;
}

- (void)setStringValueWithNSString:(NSString *)value {
  JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_))->bytes_, [((JavaTextCollationKey *) nil_chk([((JavaTextCollator *) nil_chk(collator_)) getCollationKeyWithNSString:value])) toByteArray]);
  bytes_->offset_ = 0;
  bytes_->length_ = ((IOSByteArray *) nil_chk(bytes_->bytes_))->size_;
}

- (void)dealloc {
  RELEASE_(name_CollationDocValuesField_);
  RELEASE_(collator_);
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaTextCollator:", "CollationDocValuesField", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setStringValueWithNSString:", "setStringValue", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_CollationDocValuesField_", "name", 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "collator_", NULL, 0x12, "Ljava.text.Collator;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytes_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCollationCollationDocValuesField = { 2, "CollationDocValuesField", "org.apache.lucene.collation", NULL, 0x11, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCollationCollationDocValuesField;
}

@end

void OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(OrgApacheLuceneCollationCollationDocValuesField *self, NSString *name, JavaTextCollator *collator) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, JreLoadStatic(OrgApacheLuceneDocumentSortedDocValuesField, TYPE));
  JreStrongAssignAndConsume(&self->bytes_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssign(&self->name_CollationDocValuesField_, name);
  JreStrongAssign(&self->collator_, (JavaTextCollator *) cast_chk([((JavaTextCollator *) nil_chk(collator)) clone], [JavaTextCollator class]));
  JreStrongAssign(&self->fieldsData_, self->bytes_);
}

OrgApacheLuceneCollationCollationDocValuesField *new_OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(NSString *name, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCollationCollationDocValuesField, initWithNSString_withJavaTextCollator_, name, collator)
}

OrgApacheLuceneCollationCollationDocValuesField *create_OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(NSString *name, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCollationCollationDocValuesField, initWithNSString_withJavaTextCollator_, name, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCollationCollationDocValuesField)
