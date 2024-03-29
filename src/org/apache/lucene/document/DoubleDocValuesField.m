//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DoubleDocValuesField.java
//

#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/document/DoubleDocValuesField.h"
#include "org/apache/lucene/document/NumericDocValuesField.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/document/DoubleDocValuesField must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneDocumentDoubleDocValuesField

- (instancetype)initWithNSString:(NSString *)name
                      withDouble:(jdouble)value {
  OrgApacheLuceneDocumentDoubleDocValuesField_initWithNSString_withDouble_(self, name, value);
  return self;
}

- (void)setDoubleValueWithDouble:(jdouble)value {
  [super setLongValueWithLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(value)];
}

- (void)setLongValueWithLong:(jlong)value {
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"cannot change value type from Double to Long");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withDouble:);
  methods[1].selector = @selector(setDoubleValueWithDouble:);
  methods[2].selector = @selector(setLongValueWithLong:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;D", "setDoubleValue", "D", "setLongValue", "J" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDoubleDocValuesField = { "DoubleDocValuesField", "org.apache.lucene.document", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentDoubleDocValuesField;
}

@end

void OrgApacheLuceneDocumentDoubleDocValuesField_initWithNSString_withDouble_(OrgApacheLuceneDocumentDoubleDocValuesField *self, NSString *name, jdouble value) {
  OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(self, name, JavaLangDouble_doubleToRawLongBitsWithDouble_(value));
}

OrgApacheLuceneDocumentDoubleDocValuesField *new_OrgApacheLuceneDocumentDoubleDocValuesField_initWithNSString_withDouble_(NSString *name, jdouble value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDoubleDocValuesField, initWithNSString_withDouble_, name, value)
}

OrgApacheLuceneDocumentDoubleDocValuesField *create_OrgApacheLuceneDocumentDoubleDocValuesField_initWithNSString_withDouble_(NSString *name, jdouble value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDoubleDocValuesField, initWithNSString_withDouble_, name, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDoubleDocValuesField)
