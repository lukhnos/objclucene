//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ProductFloatFunction.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/ProductFloatFunction.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources {
  OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
  return self;
}

- (NSString *)name {
  return @"product";
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  jfloat val = 1.0f;
  {
    IOSObjectArray *a__ = valsArr;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      JreTimesAssignFloatF(&val, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) floatValWithInt:doc]);
    }
  }
  return val;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSourceArray:", "ProductFloatFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "func", "F", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction = { 2, "ProductFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction *self, IOSObjectArray *sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) {
  OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction *self = [OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction alloc];
  OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceProductFloatFunction)
