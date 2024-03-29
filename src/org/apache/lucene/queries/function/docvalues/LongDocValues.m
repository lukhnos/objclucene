//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/docvalues/LongDocValues.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/ValueSourceScorer.h"
#include "org/apache/lucene/queries/function/docvalues/LongDocValues.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueLong.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/docvalues/LongDocValues must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 : OrgApacheLuceneQueriesFunctionValueSourceScorer {
 @public
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *this$0_;
  jlong val$ll_;
  jlong val$uu_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *)outer$
                                                                    withLong:(jlong)capture$0
                                                                    withLong:(jlong)capture$1
                                         withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                            withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values;

- (jboolean)matchesValueWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *self, OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *new_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values);

@interface OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 : OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller {
 @public
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *this$0_;
  OrgApacheLuceneUtilMutableMutableValueLong *mval_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *)outer$;

- (OrgApacheLuceneUtilMutableMutableValue *)getValue;

- (void)fillValueWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2, mval_, OrgApacheLuceneUtilMutableMutableValueLong *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *self, OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *new_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$);

@implementation OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
  return self;
}

- (jbyte)byteValWithInt:(jint)doc {
  return (jbyte) [self longValWithInt:doc];
}

- (jshort)shortValWithInt:(jint)doc {
  return (jshort) [self longValWithInt:doc];
}

- (jfloat)floatValWithInt:(jint)doc {
  return (jfloat) [self longValWithInt:doc];
}

- (jint)intValWithInt:(jint)doc {
  return (jint) [self longValWithInt:doc];
}

- (jlong)longValWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jdouble)doubleValWithInt:(jint)doc {
  return (jdouble) [self longValWithInt:doc];
}

- (jboolean)boolValWithInt:(jint)doc {
  return [self longValWithInt:doc] != 0;
}

- (NSString *)strValWithInt:(jint)doc {
  return JavaLangLong_toStringWithLong_([self longValWithInt:doc]);
}

- (id)objectValWithInt:(jint)doc {
  return [self existsWithInt:doc] ? JavaLangLong_valueOfWithLong_([self longValWithInt:doc]) : nil;
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(vs_)) description__], '=', [self strValWithInt:doc]);
}

- (jlong)externalToLongWithNSString:(NSString *)extVal {
  return JavaLangLong_parseLongWithNSString_(extVal);
}

- (OrgApacheLuceneQueriesFunctionValueSourceScorer *)getRangeScorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                          withNSString:(NSString *)lowerVal
                                                                                          withNSString:(NSString *)upperVal
                                                                                           withBoolean:(jboolean)includeLower
                                                                                           withBoolean:(jboolean)includeUpper {
  jlong lower;
  jlong upper;
  if (lowerVal == nil) {
    lower = JavaLangLong_MIN_VALUE;
  }
  else {
    lower = [self externalToLongWithNSString:lowerVal];
    if (!includeLower && lower < JavaLangLong_MAX_VALUE) lower++;
  }
  if (upperVal == nil) {
    upper = JavaLangLong_MAX_VALUE;
  }
  else {
    upper = [self externalToLongWithNSString:upperVal];
    if (!includeUpper && upper > JavaLangLong_MIN_VALUE) upper--;
  }
  jlong ll = lower;
  jlong uu = upper;
  return create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, ll, uu, reader, self);
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(self);
}

- (void)dealloc {
  RELEASE_(vs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "B", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "S", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 6, 2, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 7, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x4, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionValueSourceScorer;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(byteValWithInt:);
  methods[2].selector = @selector(shortValWithInt:);
  methods[3].selector = @selector(floatValWithInt:);
  methods[4].selector = @selector(intValWithInt:);
  methods[5].selector = @selector(longValWithInt:);
  methods[6].selector = @selector(doubleValWithInt:);
  methods[7].selector = @selector(boolValWithInt:);
  methods[8].selector = @selector(strValWithInt:);
  methods[9].selector = @selector(objectValWithInt:);
  methods[10].selector = @selector(toStringWithInt:);
  methods[11].selector = @selector(externalToLongWithNSString:);
  methods[12].selector = @selector(getRangeScorerWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:withBoolean:withBoolean:);
  methods[13].selector = @selector(getValueFiller);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "vs_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;", "byteVal", "I", "shortVal", "floatVal", "intVal", "longVal", "doubleVal", "boolVal", "strVal", "objectVal", "toString", "externalToLong", "LNSString;", "getRangeScorer", "LOrgApacheLuceneIndexIndexReader;LNSString;LNSString;ZZ" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues = { "LongDocValues", "org.apache.lucene.queries.function.docvalues", ptrTable, methods, fields, 7, 0x401, 14, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;
}

@end

void OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *self, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  OrgApacheLuceneQueriesFunctionFunctionValues_init(self);
  JreStrongAssign(&self->vs_, vs);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues)

@implementation OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *)outer$
                                                                    withLong:(jlong)capture$0
                                                                    withLong:(jlong)capture$1
                                         withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                            withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values {
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, outer$, capture$0, capture$1, reader, values);
  return self;
}

- (jboolean)matchesValueWithInt:(jint)doc {
  jlong val = [this$0_ longValWithInt:doc];
  return val >= val$ll_ && val <= val$uu_;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:withLong:withLong:withOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneQueriesFunctionFunctionValues:);
  methods[1].selector = @selector(matchesValueWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$ll_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$uu_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;JJLOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneQueriesFunctionFunctionValues;", "matchesValue", "I", "LOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;", "getRangeScorerWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:withBoolean:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 = { "", "org.apache.lucene.queries.function.docvalues", ptrTable, methods, fields, 7, 0x8010, 2, 3, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1;
}

@end

void OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *self, OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$ll_ = capture$0;
  self->val$uu_ = capture$1;
  OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, reader, values);
}

OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *new_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1, initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_, outer$, capture$0, capture$1, reader, values)
}

OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1 *create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$, jlong capture$0, jlong capture$1, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_1, initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_withLong_withLong_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_, outer$, capture$0, capture$1, reader, values)
}

@implementation OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *)outer$ {
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(self, outer$);
  return self;
}

- (OrgApacheLuceneUtilMutableMutableValue *)getValue {
  return JreRetainedLocalValue(mval_);
}

- (void)fillValueWithInt:(jint)doc {
  ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(mval_))->value_ = [this$0_ longValWithInt:doc];
  mval_->exists_ = [this$0_ existsWithInt:doc];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(mval_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilMutableMutableValue;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues:);
  methods[1].selector = @selector(getValue);
  methods[2].selector = @selector(fillValueWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "mval_", "LOrgApacheLuceneUtilMutableMutableValueLong;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues;", "fillValue", "I", "getValueFiller" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 = { "", "org.apache.lucene.queries.function.docvalues", ptrTable, methods, fields, 7, 0x8010, 3, 2, 0, -1, 3, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2;
}

@end

void OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *self, OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_init(self);
  JreStrongAssignAndConsume(&self->mval_, new_OrgApacheLuceneUtilMutableMutableValueLong_init());
}

OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *new_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2, initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_, outer$)
}

OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2 *create_OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2_initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_2, initWithOrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_, outer$)
}
