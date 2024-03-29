//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortedNumericSortField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/SortedNumericSelector.h"
#include "org/apache/lucene/search/SortedNumericSortField.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/SortedNumericSortField must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSortedNumericSortField () {
 @public
  OrgApacheLuceneSearchSortedNumericSelector_Type *selector_;
  OrgApacheLuceneSearchSortField_Type *type_SortedNumericSortField_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedNumericSortField, selector_, OrgApacheLuceneSearchSortedNumericSelector_Type *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedNumericSortField, type_SortedNumericSortField_, OrgApacheLuceneSearchSortField_Type *)

@interface OrgApacheLuceneSearchSortedNumericSortField_1 : OrgApacheLuceneSearchFieldComparator_IntComparator {
 @public
  OrgApacheLuceneSearchSortedNumericSortField *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                withJavaLangInteger:(JavaLangInteger *)missingValue;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSortField_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField_1 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue);

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_1 *new_OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_1 *create_OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue);

@interface OrgApacheLuceneSearchSortedNumericSortField_2 : OrgApacheLuceneSearchFieldComparator_FloatComparator {
 @public
  OrgApacheLuceneSearchSortedNumericSortField *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                  withJavaLangFloat:(JavaLangFloat *)missingValue;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSortField_2)

__attribute__((unused)) static void OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField_2 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue);

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_2 *new_OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_2 *create_OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue);

@interface OrgApacheLuceneSearchSortedNumericSortField_3 : OrgApacheLuceneSearchFieldComparator_LongComparator {
 @public
  OrgApacheLuceneSearchSortedNumericSortField *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                   withJavaLangLong:(JavaLangLong *)missingValue;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSortField_3)

__attribute__((unused)) static void OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField_3 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue);

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_3 *new_OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_3 *create_OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue);

@interface OrgApacheLuceneSearchSortedNumericSortField_4 : OrgApacheLuceneSearchFieldComparator_DoubleComparator {
 @public
  OrgApacheLuceneSearchSortedNumericSortField *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                 withJavaLangDouble:(JavaLangDouble *)missingValue;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSortField_4)

__attribute__((unused)) static void OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField_4 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue);

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_4 *new_OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortedNumericSortField_4 *create_OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue);

@implementation OrgApacheLuceneSearchSortedNumericSortField

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type {
  OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, type);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, field, type, reverse);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type
                     withBoolean:(jboolean)reverse
withOrgApacheLuceneSearchSortedNumericSelector_Type:(OrgApacheLuceneSearchSortedNumericSelector_Type *)selector {
  OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_(self, field, type, reverse, selector);
  return self;
}

- (OrgApacheLuceneSearchSortedNumericSelector_Type *)getSelector {
  return selector_;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((jint) [((OrgApacheLuceneSearchSortedNumericSelector_Type *) nil_chk(selector_)) hash]);
  result = prime * result + ((jint) [((OrgApacheLuceneSearchSortField_Type *) nil_chk(type_SortedNumericSortField_)) hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (JreObjectEqualsEquals(self, obj)) return true;
  if (![super isEqual:obj]) return false;
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(obj) java_getClass])) return false;
  OrgApacheLuceneSearchSortedNumericSortField *other = (OrgApacheLuceneSearchSortedNumericSortField *) cast_chk(obj, [OrgApacheLuceneSearchSortedNumericSortField class]);
  if (selector_ != other->selector_) return false;
  if (type_SortedNumericSortField_ != other->type_SortedNumericSortField_) return false;
  return true;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<sortednumeric: \""])) appendWithNSString:[self getField]])) appendWithNSString:@"\">"];
  if ([self getReverse]) [buffer appendWithChar:'!'];
  if (missingValue_ != nil) {
    [buffer appendWithNSString:@" missingValue="];
    [buffer appendWithId:missingValue_];
  }
  [buffer appendWithNSString:@" selector="];
  [buffer appendWithId:selector_];
  [buffer appendWithNSString:@" type="];
  [buffer appendWithId:type_SortedNumericSortField_];
  return [buffer description];
}

- (void)setMissingValueWithId:(id)missingValue {
  JreStrongAssign(&self->missingValue_, missingValue);
}

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos {
  switch ([type_SortedNumericSortField_ ordinal]) {
    case OrgApacheLuceneSearchSortField_Type_Enum_INT:
    return create_OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(self, numHits, [self getField], (JavaLangInteger *) cast_chk(missingValue_, [JavaLangInteger class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_FLOAT:
    return create_OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(self, numHits, [self getField], (JavaLangFloat *) cast_chk(missingValue_, [JavaLangFloat class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_LONG:
    return create_OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(self, numHits, [self getField], (JavaLangLong *) cast_chk(missingValue_, [JavaLangLong class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_DOUBLE:
    return create_OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(self, numHits, [self getField], (JavaLangDouble *) cast_chk(missingValue_, [JavaLangDouble class]));
    default:
    @throw create_JavaLangAssertionError_init();
  }
}

- (void)dealloc {
  RELEASE_(selector_);
  RELEASE_(type_SortedNumericSortField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSortedNumericSelector_Type;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFieldComparator;", 0x1, 8, 9, 10, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneSearchSortField_Type:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneSearchSortField_Type:withBoolean:);
  methods[2].selector = @selector(initWithNSString:withOrgApacheLuceneSearchSortField_Type:withBoolean:withOrgApacheLuceneSearchSortedNumericSelector_Type:);
  methods[3].selector = @selector(getSelector);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(setMissingValueWithId:);
  methods[8].selector = @selector(getComparatorWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "selector_", "LOrgApacheLuceneSearchSortedNumericSelector_Type;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "type_SortedNumericSortField_", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x12, 12, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneSearchSortField_Type;", "LNSString;LOrgApacheLuceneSearchSortField_Type;Z", "LNSString;LOrgApacheLuceneSearchSortField_Type;ZLOrgApacheLuceneSearchSortedNumericSelector_Type;", "hashCode", "equals", "LNSObject;", "toString", "setMissingValue", "getComparator", "II", "LJavaIoIOException;", "(II)Lorg/apache/lucene/search/FieldComparator<*>;", "type" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedNumericSortField = { "SortedNumericSortField", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 9, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSortedNumericSortField;
}

@end

void OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneSearchSortedNumericSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, field, type, false);
}

OrgApacheLuceneSearchSortedNumericSortField *new_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_, field, type)
}

OrgApacheLuceneSearchSortedNumericSortField *create_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_, field, type)
}

void OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(OrgApacheLuceneSearchSortedNumericSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_(self, field, type, reverse, JreLoadEnum(OrgApacheLuceneSearchSortedNumericSelector_Type, MIN));
}

OrgApacheLuceneSearchSortedNumericSortField *new_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_, field, type, reverse)
}

OrgApacheLuceneSearchSortedNumericSortField *create_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_, field, type, reverse)
}

void OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_(OrgApacheLuceneSearchSortedNumericSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, OrgApacheLuceneSearchSortedNumericSelector_Type *selector) {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, field, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM), reverse);
  if (selector == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  if (type == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  JreStrongAssign(&self->selector_, selector);
  JreStrongAssign(&self->type_SortedNumericSortField_, type);
}

OrgApacheLuceneSearchSortedNumericSortField *new_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, OrgApacheLuceneSearchSortedNumericSelector_Type *selector) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_, field, type, reverse, selector)
}

OrgApacheLuceneSearchSortedNumericSortField *create_OrgApacheLuceneSearchSortedNumericSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, OrgApacheLuceneSearchSortedNumericSelector_Type *selector) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchSortedNumericSelector_Type_, field, type, reverse, selector)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortedNumericSortField)

@implementation OrgApacheLuceneSearchSortedNumericSortField_1

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                withJavaLangInteger:(JavaLangInteger *)missingValue {
  OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(self, outer$, numHits, field, missingValue);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field {
  return OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_Type_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field), this$0_->selector_, this$0_->type_SortedNumericSortField_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortedNumericSortField:withInt:withNSString:withJavaLangInteger:);
  methods[1].selector = @selector(getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSortedNumericSortField;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSortedNumericSortField;ILNSString;LJavaLangInteger;", "getNumericDocValues", "LOrgApacheLuceneIndexLeafReaderContext;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSortedNumericSortField;", "getComparatorWithInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedNumericSortField_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchSortedNumericSortField_1;
}

@end

void OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField_1 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(self, numHits, field, missingValue);
}

OrgApacheLuceneSearchSortedNumericSortField_1 *new_OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField_1, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_, outer$, numHits, field, missingValue)
}

OrgApacheLuceneSearchSortedNumericSortField_1 *create_OrgApacheLuceneSearchSortedNumericSortField_1_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangInteger *missingValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField_1, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangInteger_, outer$, numHits, field, missingValue)
}

@implementation OrgApacheLuceneSearchSortedNumericSortField_2

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                  withJavaLangFloat:(JavaLangFloat *)missingValue {
  OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(self, outer$, numHits, field, missingValue);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field {
  return OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_Type_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field), this$0_->selector_, this$0_->type_SortedNumericSortField_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortedNumericSortField:withInt:withNSString:withJavaLangFloat:);
  methods[1].selector = @selector(getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSortedNumericSortField;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSortedNumericSortField;ILNSString;LJavaLangFloat;", "getNumericDocValues", "LOrgApacheLuceneIndexLeafReaderContext;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSortedNumericSortField;", "getComparatorWithInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedNumericSortField_2 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchSortedNumericSortField_2;
}

@end

void OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField_2 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(self, numHits, field, missingValue);
}

OrgApacheLuceneSearchSortedNumericSortField_2 *new_OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField_2, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_, outer$, numHits, field, missingValue)
}

OrgApacheLuceneSearchSortedNumericSortField_2 *create_OrgApacheLuceneSearchSortedNumericSortField_2_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangFloat *missingValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField_2, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangFloat_, outer$, numHits, field, missingValue)
}

@implementation OrgApacheLuceneSearchSortedNumericSortField_3

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                   withJavaLangLong:(JavaLangLong *)missingValue {
  OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(self, outer$, numHits, field, missingValue);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field {
  return OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_Type_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field), this$0_->selector_, this$0_->type_SortedNumericSortField_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortedNumericSortField:withInt:withNSString:withJavaLangLong:);
  methods[1].selector = @selector(getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSortedNumericSortField;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSortedNumericSortField;ILNSString;LJavaLangLong;", "getNumericDocValues", "LOrgApacheLuceneIndexLeafReaderContext;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSortedNumericSortField;", "getComparatorWithInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedNumericSortField_3 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchSortedNumericSortField_3;
}

@end

void OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField_3 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(self, numHits, field, missingValue);
}

OrgApacheLuceneSearchSortedNumericSortField_3 *new_OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField_3, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_, outer$, numHits, field, missingValue)
}

OrgApacheLuceneSearchSortedNumericSortField_3 *create_OrgApacheLuceneSearchSortedNumericSortField_3_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangLong *missingValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField_3, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangLong_, outer$, numHits, field, missingValue)
}

@implementation OrgApacheLuceneSearchSortedNumericSortField_4

- (instancetype)initWithOrgApacheLuceneSearchSortedNumericSortField:(OrgApacheLuceneSearchSortedNumericSortField *)outer$
                                                            withInt:(jint)numHits
                                                       withNSString:(NSString *)field
                                                 withJavaLangDouble:(JavaLangDouble *)missingValue {
  OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(self, outer$, numHits, field, missingValue);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field {
  return OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_Type_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field), this$0_->selector_, this$0_->type_SortedNumericSortField_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortedNumericSortField:withInt:withNSString:withJavaLangDouble:);
  methods[1].selector = @selector(getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSortedNumericSortField;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSortedNumericSortField;ILNSString;LJavaLangDouble;", "getNumericDocValues", "LOrgApacheLuceneIndexLeafReaderContext;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSortedNumericSortField;", "getComparatorWithInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedNumericSortField_4 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchSortedNumericSortField_4;
}

@end

void OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField_4 *self, OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(self, numHits, field, missingValue);
}

OrgApacheLuceneSearchSortedNumericSortField_4 *new_OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedNumericSortField_4, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_, outer$, numHits, field, missingValue)
}

OrgApacheLuceneSearchSortedNumericSortField_4 *create_OrgApacheLuceneSearchSortedNumericSortField_4_initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchSortedNumericSortField *outer$, jint numHits, NSString *field, JavaLangDouble *missingValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedNumericSortField_4, initWithOrgApacheLuceneSearchSortedNumericSortField_withInt_withNSString_withJavaLangDouble_, outer$, numHits, field, missingValue)
}
