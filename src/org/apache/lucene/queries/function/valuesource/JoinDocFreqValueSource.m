//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/JoinDocFreqValueSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/IntDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"
#include "org/apache/lucene/queries/function/valuesource/JoinDocFreqValueSource.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 : OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *this$0_;
  OrgApacheLuceneIndexBinaryDocValues *val$terms_;
  OrgApacheLuceneIndexTermsEnum *val$termsEnum_;
}

- (jint)intValWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource:(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *)outer$
                                                withOrgApacheLuceneIndexBinaryDocValues:(OrgApacheLuceneIndexBinaryDocValues *)capture$0
                                                      withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)capture$1
                                          withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1, val$terms_, OrgApacheLuceneIndexBinaryDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1, val$termsEnum_, OrgApacheLuceneIndexTermsEnum *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *outer$, OrgApacheLuceneIndexBinaryDocValues *capture$0, OrgApacheLuceneIndexTermsEnum *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *outer$, OrgApacheLuceneIndexBinaryDocValues *capture$0, OrgApacheLuceneIndexTermsEnum *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1)

NSString *OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_NAME_ = @"joindf";

@implementation OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)qfield {
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_initWithNSString_withNSString_(self, field, qfield);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$C$$$$", OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_NAME_, '(', field_, @":(", qfield_, @"))");
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneIndexBinaryDocValues *terms = OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader], field_);
  OrgApacheLuceneIndexIndexReader *top = [((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(readerContext))) reader];
  OrgApacheLuceneIndexTerms *t = OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(top, qfield_);
  OrgApacheLuceneIndexTermsEnum *termsEnum = t == nil ? JreLoadStatic(OrgApacheLuceneIndexTermsEnum, EMPTY_) : [t iterator];
  return [new_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(self, terms, termsEnum, self) autorelease];
}

- (jboolean)isEqual:(id)o {
  if ([nil_chk(o) getClass] != OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_class_()) return NO;
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *other = (OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource class]);
  if (![((NSString *) nil_chk(qfield_)) isEqual:other->qfield_]) return NO;
  return [super isEqual:other];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(qfield_)) hash]) + ((jint) [super hash]);
}

- (void)dealloc {
  RELEASE_(qfield_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "JoinDocFreqValueSource", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NAME_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_NAME_, NULL, .constantValue.asLong = 0 },
    { "qfield_", NULL, 0x14, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource = { 2, "JoinDocFreqValueSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_initWithNSString_withNSString_(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *self, NSString *field, NSString *qfield) {
  OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(self, field);
  JreStrongAssign(&self->qfield_, qfield);
}

OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_initWithNSString_withNSString_(NSString *field, NSString *qfield) {
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *self = [OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource alloc];
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_initWithNSString_withNSString_(self, field, qfield);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1

- (jint)intValWithInt:(jint)doc {
  @try {
    OrgApacheLuceneUtilBytesRef *term = [((OrgApacheLuceneIndexBinaryDocValues *) nil_chk(val$terms_)) getWithInt:doc];
    if ([((OrgApacheLuceneIndexTermsEnum *) nil_chk(val$termsEnum_)) seekExactWithOrgApacheLuceneUtilBytesRef:term]) {
      return [val$termsEnum_ docFreq];
    }
    else {
      return 0;
    }
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$$I", @"caught exception in function ", [this$0_ description__], @" : doc=", doc), e) autorelease];
  }
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource:(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *)outer$
                                                withOrgApacheLuceneIndexBinaryDocValues:(OrgApacheLuceneIndexBinaryDocValues *)capture$0
                                                      withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)capture$1
                                          withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$terms_);
  RELEASE_(val$termsEnum_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "intValWithInt:", "intVal", "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource:withOrgApacheLuceneIndexBinaryDocValues:withOrgApacheLuceneIndexTermsEnum:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.JoinDocFreqValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$terms_", NULL, 0x1012, "Lorg.apache.lucene.index.BinaryDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$termsEnum_", NULL, 0x1012, "Lorg.apache.lucene.index.TermsEnum;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "JoinDocFreqValueSource", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *outer$, OrgApacheLuceneIndexBinaryDocValues *capture$0, OrgApacheLuceneIndexTermsEnum *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$terms_, capture$0);
  JreStrongAssign(&self->val$termsEnum_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource *outer$, OrgApacheLuceneIndexBinaryDocValues *capture$0, OrgApacheLuceneIndexTermsEnum *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_withOrgApacheLuceneIndexBinaryDocValues_withOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceJoinDocFreqValueSource_$1)
