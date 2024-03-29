//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SumFloatFunction.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/SumFloatFunction.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/SumFloatFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources {
  OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
  return self;
}

- (NSString *)name {
  return @"sum";
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  jfloat val = 0.0f;
  {
    IOSObjectArray *a__ = valsArr;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      JrePlusAssignFloatF(&val, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) floatValWithInt:doc]);
    }
  }
  return val;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSourceArray:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "[LOrgApacheLuceneQueriesFunctionValueSource;", "func", "I[LOrgApacheLuceneQueriesFunctionFunctionValues;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction = { "SumFloatFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *self, IOSObjectArray *sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSourceArray_, sources)
}

OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSourceArray_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction)
