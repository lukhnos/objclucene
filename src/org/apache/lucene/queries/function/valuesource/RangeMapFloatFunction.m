//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/RangeMapFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/ConstValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/RangeMapFloatFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/RangeMapFloatFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$vals_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$targets_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$defaults_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *)outer$
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$2
                                         withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jfloat)floatValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)min
                                                        withFloat:(jfloat)max
                                                        withFloat:(jfloat)target
                                                withJavaLangFloat:(JavaLangFloat *)def {
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(self, source, min, max, target, def);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)min
                                                        withFloat:(jfloat)max
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)target
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)def {
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, source, min, max, target, def);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$$CFCFC$C", @"map(", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], ',', min_, ',', max_, ',', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(target_)) description__], ')');
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  OrgApacheLuceneQueriesFunctionFunctionValues *targets = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(target_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  OrgApacheLuceneQueriesFunctionFunctionValues *defaults = (self->defaultVal_ == nil) ? nil : [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(defaultVal_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, vals, targets, defaults, self);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]);
  h ^= (JreLShift32(h, 10)) | (JreURShift32(h, 23));
  h += JavaLangFloat_floatToIntBitsWithFloat_(min_);
  h ^= (JreLShift32(h, 14)) | (JreURShift32(h, 19));
  h += JavaLangFloat_floatToIntBitsWithFloat_(max_);
  h += ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(target_)) hash]);
  if (defaultVal_ != nil) h += ((jint) [defaultVal_ hash]);
  return h;
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_class_(), [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction class]);
  return self->min_ == other->min_ && self->max_ == other->max_ && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->target_)) isEqual:other->target_] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_] && (JreObjectEqualsEquals(self->defaultVal_, other->defaultVal_) || (self->defaultVal_ != nil && [self->defaultVal_ isEqual:other->defaultVal_]));
}

- (void)dealloc {
  RELEASE_(source_);
  RELEASE_(target_);
  RELEASE_(defaultVal_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 5, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:withFloat:withFloat:withFloat:withJavaLangFloat:);
  methods[1].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:withFloat:withFloat:withOrgApacheLuceneQueriesFunctionValueSource:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[2].selector = @selector(description__);
  methods[3].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "min_", "F", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "max_", "F", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "target_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "defaultVal_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;FFFLJavaLangFloat;", "LOrgApacheLuceneQueriesFunctionValueSource;FFLOrgApacheLuceneQueriesFunctionValueSource;LOrgApacheLuceneQueriesFunctionValueSource;", "description", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction = { "RangeMapFloatFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x1, 7, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def) {
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, source, min, max, create_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_initWithFloat_(target), def == nil ? nil : create_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_initWithFloat_([def floatValue]));
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_, source, min, max, target, def)
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_, source, min, max, target, def)
}

void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
  self->min_ = min;
  self->max_ = max;
  JreStrongAssign(&self->target_, target);
  JreStrongAssign(&self->defaultVal_, def);
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_, source, min, max, target, def)
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_, source, min, max, target, def)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *)outer$
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                      withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$2
                                         withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, capture$2, vs);
  return self;
}

- (jfloat)floatValWithInt:(jint)doc {
  jfloat val = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) floatValWithInt:doc];
  return (val >= this$0_->min_ && val <= this$0_->max_) ? [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$targets_)) floatValWithInt:doc] : (this$0_->defaultVal_ == nil ? val : [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$defaults_)) floatValWithInt:doc]);
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$$$F$F$$C", @"map(", [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) toStringWithInt:doc], @",min=", this$0_->min_, @",max=", this$0_->max_, @",target=", [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$targets_)) toStringWithInt:doc], ')');
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$vals_);
  RELEASE_(val$targets_);
  RELEASE_(val$defaults_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(floatValWithInt:);
  methods[2].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$vals_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$targets_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$defaults_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionValueSource;", "floatVal", "I", "toString", "LOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 3, 4, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$vals_, capture$0);
  JreStrongAssign(&self->val$targets_, capture$1);
  JreStrongAssign(&self->val$defaults_, capture$2);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, capture$2, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionFunctionValues *capture$2, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, capture$2, vs)
}
