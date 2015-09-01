//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesFieldUpdates.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/BinaryDocValuesFieldUpdates.h"
#include "org/apache/lucene/index/DocValuesFieldUpdates.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/NumericDocValuesFieldUpdates.h"

@implementation OrgApacheLuceneIndexDocValuesFieldUpdates

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type {
  OrgApacheLuceneIndexDocValuesFieldUpdates_initWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, type);
  return self;
}

+ (jint)estimateCapacityWithInt:(jint)size {
  return OrgApacheLuceneIndexDocValuesFieldUpdates_estimateCapacityWithInt_(size);
}

- (void)addWithInt:(jint)doc
            withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator *)iterator {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)mergeWithOrgApacheLuceneIndexDocValuesFieldUpdates:(OrgApacheLuceneIndexDocValuesFieldUpdates *)other {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "DocValuesFieldUpdates", NULL, 0x4, NULL, NULL },
    { "estimateCapacityWithInt:", "estimateCapacity", "I", 0xc, NULL, NULL },
    { "addWithInt:withId:", "add", "V", 0x401, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.index.DocValuesFieldUpdates$Iterator;", 0x401, NULL, NULL },
    { "mergeWithOrgApacheLuceneIndexDocValuesFieldUpdates:", "merge", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PAGE_SIZE", "PAGE_SIZE", 0x1c, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexDocValuesFieldUpdates_PAGE_SIZE },
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "type_", NULL, 0x10, "Lorg.apache.lucene.index.DocValuesType;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.DocValuesFieldUpdates$Iterator;", "Lorg.apache.lucene.index.DocValuesFieldUpdates$Container;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocValuesFieldUpdates = { 2, "DocValuesFieldUpdates", "org.apache.lucene.index", NULL, 0x400, 5, methods, 3, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexDocValuesFieldUpdates;
}

@end

void OrgApacheLuceneIndexDocValuesFieldUpdates_initWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexDocValuesFieldUpdates *self, NSString *field, OrgApacheLuceneIndexDocValuesTypeEnum *type) {
  NSObject_init(self);
  JreStrongAssign(&self->field_, field);
  if (type == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"DocValuesType cannot be null") autorelease];
  }
  JreStrongAssign(&self->type_, type);
}

jint OrgApacheLuceneIndexDocValuesFieldUpdates_estimateCapacityWithInt_(jint size) {
  OrgApacheLuceneIndexDocValuesFieldUpdates_initialize();
  return JreFpToInt(JavaLangMath_ceilWithDouble_((jdouble) size / OrgApacheLuceneIndexDocValuesFieldUpdates_PAGE_SIZE)) * OrgApacheLuceneIndexDocValuesFieldUpdates_PAGE_SIZE;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocValuesFieldUpdates)

@implementation OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator

- (jint)nextDoc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)reset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (instancetype)init {
  OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "nextDoc", NULL, "I", 0x400, NULL, NULL },
    { "doc", NULL, "I", 0x400, NULL, NULL },
    { "value", NULL, "Ljava.lang.Object;", 0x400, NULL, NULL },
    { "reset", NULL, "V", 0x400, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator = { 2, "Iterator", "org.apache.lucene.index", "DocValuesFieldUpdates", 0x408, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator;
}

@end

void OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_init(OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator)

@implementation OrgApacheLuceneIndexDocValuesFieldUpdates_Container

- (jboolean)any {
  for (OrgApacheLuceneIndexNumericDocValuesFieldUpdates * __strong updates in nil_chk([((id<JavaUtilMap>) nil_chk(numericDVUpdates_)) values])) {
    if ([((OrgApacheLuceneIndexNumericDocValuesFieldUpdates *) nil_chk(updates)) any]) {
      return YES;
    }
  }
  for (OrgApacheLuceneIndexBinaryDocValuesFieldUpdates * __strong updates in nil_chk([((id<JavaUtilMap>) nil_chk(binaryDVUpdates_)) values])) {
    if ([((OrgApacheLuceneIndexBinaryDocValuesFieldUpdates *) nil_chk(updates)) any]) {
      return YES;
    }
  }
  return NO;
}

- (jint)size {
  return [((id<JavaUtilMap>) nil_chk(numericDVUpdates_)) size] + [((id<JavaUtilMap>) nil_chk(binaryDVUpdates_)) size];
}

- (OrgApacheLuceneIndexDocValuesFieldUpdates *)getUpdatesWithNSString:(NSString *)field
                            withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type {
  switch ([type ordinal]) {
    case OrgApacheLuceneIndexDocValuesType_NUMERIC:
    return [((id<JavaUtilMap>) nil_chk(numericDVUpdates_)) getWithId:field];
    case OrgApacheLuceneIndexDocValuesType_BINARY:
    return [((id<JavaUtilMap>) nil_chk(binaryDVUpdates_)) getWithId:field];
    default:
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"unsupported type: ", type)) autorelease];
  }
}

- (OrgApacheLuceneIndexDocValuesFieldUpdates *)newUpdatesWithNSString:(NSString *)field
                            withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type
                                                              withInt:(jint)maxDoc {
  {
    OrgApacheLuceneIndexNumericDocValuesFieldUpdates *numericUpdates;
    OrgApacheLuceneIndexBinaryDocValuesFieldUpdates *binaryUpdates;
    switch ([type ordinal]) {
      case OrgApacheLuceneIndexDocValuesType_NUMERIC:
      JreAssert(([((id<JavaUtilMap>) nil_chk(numericDVUpdates_)) getWithId:field] == nil), (@"org/apache/lucene/index/DocValuesFieldUpdates.java:114 condition failed: assert numericDVUpdates.get(field) == null;"));
      numericUpdates = [new_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_initWithNSString_withInt_(field, maxDoc) autorelease];
      [numericDVUpdates_ putWithId:field withId:numericUpdates];
      return numericUpdates;
      case OrgApacheLuceneIndexDocValuesType_BINARY:
      JreAssert(([((id<JavaUtilMap>) nil_chk(binaryDVUpdates_)) getWithId:field] == nil), (@"org/apache/lucene/index/DocValuesFieldUpdates.java:119 condition failed: assert binaryDVUpdates.get(field) == null;"));
      binaryUpdates = [new_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_initWithNSString_withInt_(field, maxDoc) autorelease];
      [binaryDVUpdates_ putWithId:field withId:binaryUpdates];
      return binaryUpdates;
      default:
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"unsupported type: ", type)) autorelease];
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@$@", @"numericDVUpdates=", numericDVUpdates_, @" binaryDVUpdates=", binaryDVUpdates_);
}

- (instancetype)init {
  OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(numericDVUpdates_);
  RELEASE_(binaryDVUpdates_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "any", NULL, "Z", 0x0, NULL, NULL },
    { "size", NULL, "I", 0x0, NULL, NULL },
    { "getUpdatesWithNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "getUpdates", "Lorg.apache.lucene.index.DocValuesFieldUpdates;", 0x0, NULL, NULL },
    { "newUpdatesWithNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:withInt:", "newUpdates", "Lorg.apache.lucene.index.DocValuesFieldUpdates;", 0x0, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "numericDVUpdates_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/NumericDocValuesFieldUpdates;>;", .constantValue.asLong = 0 },
    { "binaryDVUpdates_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/BinaryDocValuesFieldUpdates;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocValuesFieldUpdates_Container = { 2, "Container", "org.apache.lucene.index", "DocValuesFieldUpdates", 0x8, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocValuesFieldUpdates_Container;
}

@end

void OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init(OrgApacheLuceneIndexDocValuesFieldUpdates_Container *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->numericDVUpdates_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->binaryDVUpdates_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneIndexDocValuesFieldUpdates_Container *new_OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init() {
  OrgApacheLuceneIndexDocValuesFieldUpdates_Container *self = [OrgApacheLuceneIndexDocValuesFieldUpdates_Container alloc];
  OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocValuesFieldUpdates_Container)
