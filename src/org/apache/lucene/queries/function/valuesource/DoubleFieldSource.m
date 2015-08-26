//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DoubleFieldSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/DoubleDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/DoubleFieldSource.h"
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueDouble.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 : OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues {
 @public
  OrgApacheLuceneIndexNumericDocValues *val$arr_;
  id<OrgApacheLuceneUtilBits> val$valid_;
}

- (jdouble)doubleValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$0
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$1
               withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1, val$arr_, OrgApacheLuceneIndexNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1, val$valid_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *self, OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1)

@interface OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 : OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *this$0_;
  OrgApacheLuceneUtilMutableMutableValueDouble *mval_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)getValue;

- (void)fillValueWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1:(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1, mval_, OrgApacheLuceneUtilMutableMutableValueDouble *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *outer$);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_initWithNSString_(self, field);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$$C", @"double(", field_, ')');
}

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse {
  return [new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(field_, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, DOUBLE), reverse) autorelease];
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneIndexNumericDocValues *arr = OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader], field_);
  id<OrgApacheLuceneUtilBits> valid = OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_([readerContext reader], field_);
  return [new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(arr, valid, self) autorelease];
}

- (jboolean)isEqual:(id)o {
  if ([nil_chk(o) getClass] != OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_class_()) return NO;
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource *other = (OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource class]);
  return [super isEqual:other];
}

- (NSUInteger)hash {
  jint h = ((jint) [JavaLangDouble_class_() hash]);
  h += ((jint) [super hash]);
  return h;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "DoubleFieldSource", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSortFieldWithBoolean:", "getSortField", "Lorg.apache.lucene.search.SortField;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource = { 2, "DoubleFieldSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource *self, NSString *field) {
  OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(self, field);
}

OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_initWithNSString_(NSString *field) {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource *self = [OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_initWithNSString_(self, field);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1

- (jdouble)doubleValWithInt:(jint)doc {
  return JavaLangDouble_longBitsToDoubleWithLong_([((OrgApacheLuceneIndexNumericDocValues *) nil_chk(val$arr_)) getWithInt:doc]);
}

- (jboolean)existsWithInt:(jint)doc {
  return [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(val$arr_)) getWithInt:doc] != 0 || [((id<OrgApacheLuceneUtilBits>) nil_chk(val$valid_)) getWithInt:doc];
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return [new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(self) autorelease];
}

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$0
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$1
               withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(self, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$arr_);
  RELEASE_(val$valid_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "doubleValWithInt:", "doubleVal", "D", 0x1, NULL, NULL },
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "getValueFiller", NULL, "Lorg.apache.lucene.queries.function.FunctionValues$ValueFiller;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$arr_", NULL, 0x1012, "Lorg.apache.lucene.index.NumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$valid_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "DoubleFieldSource", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *self, OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->val$arr_, capture$0);
  JreStrongAssign(&self->val$valid_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(self, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1

- (OrgApacheLuceneUtilMutableMutableValue *)getValue {
  return mval_;
}

- (void)fillValueWithInt:(jint)doc {
  ((OrgApacheLuceneUtilMutableMutableValueDouble *) nil_chk(mval_))->value_ = [this$0_ doubleValWithInt:doc];
  mval_->exists_ = (mval_->value_ != 0 || [((id<OrgApacheLuceneUtilBits>) nil_chk(this$0_->val$valid_)) getWithInt:doc]);
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1:(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *)outer$ {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(mval_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "fillValueWithInt:", "fillValue", "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.DoubleFieldSource$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "mval_", NULL, 0x12, "Lorg.apache.lucene.util.mutable.MutableValueDouble;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1", "getValueFiller" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "DoubleFieldSource$", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_init(self);
  JreStrongAssignAndConsume(&self->mval_, new_OrgApacheLuceneUtilMutableMutableValueDouble_init());
}

OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1 *outer$) {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDoubleFieldSource_$1_$1)
