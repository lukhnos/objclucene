//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DefFunction.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/valuesource/DefFunction.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/DefFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 : OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values {
 @public
  jint upto_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *)outer$
                       withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getWithInt:(jint)doc;

- (jbyte)byteValWithInt:(jint)doc;

- (jshort)shortValWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (jdouble)doubleValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (jboolean)boolValWithInt:(jint)doc;

- (jboolean)bytesValWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)target;

- (id)objectValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionFunctionValues *OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *self, jint doc);

@implementation OrgApacheLuceneQueriesFunctionValuesourceDefFunction

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sources {
  OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(self, sources);
  return self;
}

- (NSString *)name {
  return @"def";
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)fcontext
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_valsArrWithJavaUtilList_withJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(sources_, fcontext, readerContext));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 2, 3, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;)V", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDefFunction = { "DefFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDefFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *self, id<JavaUtilList> sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initWithJavaUtilList_(self, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction, initWithJavaUtilList_, sources)
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction, initWithJavaUtilList_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDefFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *)outer$
                       withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, valsArr);
  return self;
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc);
}

- (jbyte)byteValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) byteValWithInt:doc];
}

- (jshort)shortValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) shortValWithInt:doc];
}

- (jfloat)floatValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) floatValWithInt:doc];
}

- (jint)intValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) intValWithInt:doc];
}

- (jlong)longValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) longValWithInt:doc];
}

- (jdouble)doubleValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) doubleValWithInt:doc];
}

- (NSString *)strValWithInt:(jint)doc {
  return JreRetainedLocalValue([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) strValWithInt:doc]);
}

- (jboolean)boolValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) boolValWithInt:doc];
}

- (jboolean)bytesValWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)target {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) bytesValWithInt:doc withOrgApacheLuceneUtilBytesRefBuilder:target];
}

- (id)objectValWithInt:(jint)doc {
  return JreRetainedLocalValue([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(self, doc))) objectValWithInt:doc]);
}

- (jboolean)existsWithInt:(jint)doc {
  {
    IOSObjectArray *a__ = valsArr_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      if ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) existsWithInt:doc]) {
        return true;
      }
    }
  }
  return false;
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return JreRetainedLocalValue([super getValueFiller]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "B", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "S", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 7, 2, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 13, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:);
  methods[1].selector = @selector(getWithInt:);
  methods[2].selector = @selector(byteValWithInt:);
  methods[3].selector = @selector(shortValWithInt:);
  methods[4].selector = @selector(floatValWithInt:);
  methods[5].selector = @selector(intValWithInt:);
  methods[6].selector = @selector(longValWithInt:);
  methods[7].selector = @selector(doubleValWithInt:);
  methods[8].selector = @selector(strValWithInt:);
  methods[9].selector = @selector(boolValWithInt:);
  methods[10].selector = @selector(bytesValWithInt:withOrgApacheLuceneUtilBytesRefBuilder:);
  methods[11].selector = @selector(objectValWithInt:);
  methods[12].selector = @selector(existsWithInt:);
  methods[13].selector = @selector(getValueFiller);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "upto_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceDefFunction;[LOrgApacheLuceneQueriesFunctionFunctionValues;", "get", "I", "byteVal", "shortVal", "floatVal", "intVal", "longVal", "doubleVal", "strVal", "boolVal", "bytesVal", "ILOrgApacheLuceneUtilBytesRefBuilder;", "objectVal", "exists", "LOrgApacheLuceneQueriesFunctionValuesourceDefFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 14, 1, 15, -1, 16, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, valsArr);
  self->upto_ = ((IOSObjectArray *) nil_chk(self->valsArr_))->size_ - 1;
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, valsArr)
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *valsArr) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, valsArr)
}

OrgApacheLuceneQueriesFunctionFunctionValues *OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1_getWithInt_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_1 *self, jint doc) {
  for (jint i = 0; i < self->upto_; i++) {
    OrgApacheLuceneQueriesFunctionFunctionValues *vals = IOSObjectArray_Get(nil_chk(self->valsArr_), i);
    if ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) existsWithInt:doc]) {
      return vals;
    }
  }
  return IOSObjectArray_Get(nil_chk(self->valsArr_), self->upto_);
}
