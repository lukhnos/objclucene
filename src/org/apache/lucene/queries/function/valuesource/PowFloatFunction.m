//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/PowFloatFunction.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/DualFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/PowFloatFunction.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)a
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)b {
  OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, a, b);
  return self;
}

- (NSString *)name {
  return @"pow";
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)aVals
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)bVals {
  return (jfloat) JavaLangMath_powWithDouble_withDouble_([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(aVals)) floatValWithInt:doc], [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(bVals)) floatValWithInt:doc]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withOrgApacheLuceneQueriesFunctionValueSource:", "PowFloatFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:", "func", "F", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction = { 2, "PowFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, a, b);
}

OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_, a, b)
}

OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_, a, b)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourcePowFloatFunction)
