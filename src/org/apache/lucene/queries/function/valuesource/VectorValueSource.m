//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/VectorValueSource.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/MultiValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/VectorValueSource.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/VectorValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 : OrgApacheLuceneQueriesFunctionFunctionValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$x_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$y_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1;

- (void)byteValWithInt:(jint)doc
         withByteArray:(IOSByteArray *)vals;

- (void)shortValWithInt:(jint)doc
         withShortArray:(IOSShortArray *)vals;

- (void)intValWithInt:(jint)doc
         withIntArray:(IOSIntArray *)vals;

- (void)longValWithInt:(jint)doc
         withLongArray:(IOSLongArray *)vals;

- (void)floatValWithInt:(jint)doc
         withFloatArray:(IOSFloatArray *)vals;

- (void)doubleValWithInt:(jint)doc
         withDoubleArray:(IOSDoubleArray *)vals;

- (void)strValWithInt:(jint)doc
    withNSStringArray:(IOSObjectArray *)vals;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1);

@interface OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 : OrgApacheLuceneQueriesFunctionFunctionValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *this$0_;
  IOSObjectArray *val$valsArr_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *)outer$
                             withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)capture$0;

- (void)byteValWithInt:(jint)doc
         withByteArray:(IOSByteArray *)vals;

- (void)shortValWithInt:(jint)doc
         withShortArray:(IOSShortArray *)vals;

- (void)floatValWithInt:(jint)doc
         withFloatArray:(IOSFloatArray *)vals;

- (void)intValWithInt:(jint)doc
         withIntArray:(IOSIntArray *)vals;

- (void)longValWithInt:(jint)doc
         withLongArray:(IOSLongArray *)vals;

- (void)doubleValWithInt:(jint)doc
         withDoubleArray:(IOSDoubleArray *)vals;

- (void)strValWithInt:(jint)doc
    withNSStringArray:(IOSObjectArray *)vals;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *self, OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0);

@implementation OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sources {
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(self, sources);
  return self;
}

- (id<JavaUtilList>)getSources {
  return sources_;
}

- (jint)dimension {
  return [((id<JavaUtilList>) nil_chk(sources_)) size];
}

- (NSString *)name {
  return @"vector";
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  jint size = [((id<JavaUtilList>) nil_chk(sources_)) size];
  if (size == 2) {
    OrgApacheLuceneQueriesFunctionFunctionValues *x = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk([sources_ getWithInt:0])) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
    OrgApacheLuceneQueriesFunctionFunctionValues *y = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk([sources_ getWithInt:1])) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
    return create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, x, y);
  }
  IOSObjectArray *valsArr = [IOSObjectArray arrayWithLength:size type:OrgApacheLuceneQueriesFunctionFunctionValues_class_()];
  for (jint i = 0; i < size; i++) {
    IOSObjectArray_Set(valsArr, i, [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk([sources_ getWithInt:i])) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext]);
  }
  return create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, valsArr);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  for (OrgApacheLuceneQueriesFunctionValueSource * __strong source in nil_chk(sources_)) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSString *)description__ {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:[self name]])) appendWithChar:'('];
  jboolean firstTime = true;
  for (OrgApacheLuceneQueriesFunctionValueSource * __strong source in nil_chk(sources_)) {
    if (firstTime) {
      firstTime = false;
    }
    else {
      [sb appendWithChar:','];
    }
    [sb appendWithId:source];
  }
  [sb appendWithNSString:@")"];
  return [sb description];
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource class]])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *that = (OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource class]);
  return [((id<JavaUtilList>) nil_chk(sources_)) isEqual:((OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *) nil_chk(that))->sources_];
}

- (NSUInteger)hash {
  return ((jint) [((id<JavaUtilList>) nil_chk(sources_)) hash]);
}

- (void)dealloc {
  RELEASE_(sources_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 5, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:);
  methods[1].selector = @selector(getSources);
  methods[2].selector = @selector(dimension);
  methods[3].selector = @selector(name);
  methods[4].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[5].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[6].selector = @selector(description__);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", "LJavaUtilList;", .constantValue.asLong = 0, 0x14, -1, -1, 12, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;)V", "()Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "description", "equals", "LNSObject;", "hashCode", "Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource = { "VectorValueSource", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x1, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *self, id<JavaUtilList> sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(self);
  JreStrongAssign(&self->sources_, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource, initWithJavaUtilList_, sources)
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource, initWithJavaUtilList_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1 {
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)byteValWithInt:(jint)doc
         withByteArray:(IOSByteArray *)vals {
  *IOSByteArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) byteValWithInt:doc];
  *IOSByteArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) byteValWithInt:doc];
}

- (void)shortValWithInt:(jint)doc
         withShortArray:(IOSShortArray *)vals {
  *IOSShortArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) shortValWithInt:doc];
  *IOSShortArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) shortValWithInt:doc];
}

- (void)intValWithInt:(jint)doc
         withIntArray:(IOSIntArray *)vals {
  *IOSIntArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) intValWithInt:doc];
  *IOSIntArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) intValWithInt:doc];
}

- (void)longValWithInt:(jint)doc
         withLongArray:(IOSLongArray *)vals {
  *IOSLongArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) longValWithInt:doc];
  *IOSLongArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) longValWithInt:doc];
}

- (void)floatValWithInt:(jint)doc
         withFloatArray:(IOSFloatArray *)vals {
  *IOSFloatArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) floatValWithInt:doc];
  *IOSFloatArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) floatValWithInt:doc];
}

- (void)doubleValWithInt:(jint)doc
         withDoubleArray:(IOSDoubleArray *)vals {
  *IOSDoubleArray_GetRef(nil_chk(vals), 0) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) doubleValWithInt:doc];
  *IOSDoubleArray_GetRef(vals, 1) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) doubleValWithInt:doc];
}

- (void)strValWithInt:(jint)doc
    withNSStringArray:(IOSObjectArray *)vals {
  IOSObjectArray_Set(nil_chk(vals), 0, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) strValWithInt:doc]);
  IOSObjectArray_Set(vals, 1, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) strValWithInt:doc]);
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$C$C", [this$0_ name], '(', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$x_)) toStringWithInt:doc], ',', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$y_)) toStringWithInt:doc], ')');
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$x_);
  RELEASE_(val$y_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:);
  methods[1].selector = @selector(byteValWithInt:withByteArray:);
  methods[2].selector = @selector(shortValWithInt:withShortArray:);
  methods[3].selector = @selector(intValWithInt:withIntArray:);
  methods[4].selector = @selector(longValWithInt:withLongArray:);
  methods[5].selector = @selector(floatValWithInt:withFloatArray:);
  methods[6].selector = @selector(doubleValWithInt:withDoubleArray:);
  methods[7].selector = @selector(strValWithInt:withNSStringArray:);
  methods[8].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$x_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$y_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionFunctionValues;", "byteVal", "I[B", "shortVal", "I[S", "intVal", "I[I", "longVal", "I[J", "floatVal", "I[F", "doubleVal", "I[D", "strVal", "I[LNSString;", "toString", "I", "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 9, 3, 17, -1, 18, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$x_, capture$0);
  JreStrongAssign(&self->val$y_, capture$1);
  OrgApacheLuceneQueriesFunctionFunctionValues_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_, outer$, capture$0, capture$1)
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_, outer$, capture$0, capture$1)
}

@implementation OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *)outer$
                             withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)capture$0 {
  OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, capture$0);
  return self;
}

- (void)byteValWithInt:(jint)doc
         withByteArray:(IOSByteArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSByteArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) byteValWithInt:doc];
  }
}

- (void)shortValWithInt:(jint)doc
         withShortArray:(IOSShortArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSShortArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) shortValWithInt:doc];
  }
}

- (void)floatValWithInt:(jint)doc
         withFloatArray:(IOSFloatArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSFloatArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) floatValWithInt:doc];
  }
}

- (void)intValWithInt:(jint)doc
         withIntArray:(IOSIntArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSIntArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) intValWithInt:doc];
  }
}

- (void)longValWithInt:(jint)doc
         withLongArray:(IOSLongArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSLongArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) longValWithInt:doc];
  }
}

- (void)doubleValWithInt:(jint)doc
         withDoubleArray:(IOSDoubleArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    *IOSDoubleArray_GetRef(nil_chk(vals), i) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) doubleValWithInt:doc];
  }
}

- (void)strValWithInt:(jint)doc
    withNSStringArray:(IOSObjectArray *)vals {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(val$valsArr_))->size_; i++) {
    IOSObjectArray_Set(nil_chk(vals), i, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(IOSObjectArray_Get(val$valsArr_, i))) strValWithInt:doc]);
  }
}

- (NSString *)toStringWithInt:(jint)doc {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:[this$0_ name]])) appendWithChar:'('];
  jboolean firstTime = true;
  {
    IOSObjectArray *a__ = val$valsArr_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      if (firstTime) {
        firstTime = false;
      }
      else {
        [sb appendWithChar:','];
      }
      [sb appendWithNSString:[((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) toStringWithInt:doc]];
    }
  }
  [sb appendWithChar:')'];
  return JreRetainedLocalValue([sb description]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$valsArr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:);
  methods[1].selector = @selector(byteValWithInt:withByteArray:);
  methods[2].selector = @selector(shortValWithInt:withShortArray:);
  methods[3].selector = @selector(floatValWithInt:withFloatArray:);
  methods[4].selector = @selector(intValWithInt:withIntArray:);
  methods[5].selector = @selector(longValWithInt:withLongArray:);
  methods[6].selector = @selector(doubleValWithInt:withDoubleArray:);
  methods[7].selector = @selector(strValWithInt:withNSStringArray:);
  methods[8].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$valsArr_", "[LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;[LOrgApacheLuceneQueriesFunctionFunctionValues;", "byteVal", "I[B", "shortVal", "I[S", "floatVal", "I[F", "intVal", "I[I", "longVal", "I[J", "doubleVal", "I[D", "strVal", "I[LNSString;", "toString", "I", "LOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 9, 2, 17, -1, 18, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *self, OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$valsArr_, capture$0);
  OrgApacheLuceneQueriesFunctionFunctionValues_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2, initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, capture$0)
}

OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2 *create_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2_initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_2, initWithOrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, capture$0)
}
