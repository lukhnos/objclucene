//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NumericDocValuesWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Iterable.h"
#include "java/lang/Long.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/index/DocValuesWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/NumericDocValuesWriter.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedLongValues.h"

@interface OrgApacheLuceneIndexNumericDocValuesWriter () {
 @public
  OrgApacheLuceneUtilPackedPackedLongValues_Builder *pending_;
  OrgApacheLuceneUtilCounter *iwBytesUsed_;
  jlong bytesUsed_;
  OrgApacheLuceneUtilFixedBitSet *docsWithField_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
}

- (jlong)docsWithFieldBytesUsed;

- (void)updateBytesUsed;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter, pending_, OrgApacheLuceneUtilPackedPackedLongValues_Builder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter, iwBytesUsed_, OrgApacheLuceneUtilCounter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter, docsWithField_, OrgApacheLuceneUtilFixedBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)

inline jlong OrgApacheLuceneIndexNumericDocValuesWriter_get_MISSING();
#define OrgApacheLuceneIndexNumericDocValuesWriter_MISSING 0LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexNumericDocValuesWriter, MISSING, jlong)

__attribute__((unused)) static jlong OrgApacheLuceneIndexNumericDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexNumericDocValuesWriter *self);

__attribute__((unused)) static void OrgApacheLuceneIndexNumericDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexNumericDocValuesWriter *self);

@interface OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator : NSObject < JavaUtilIterator > {
 @public
  OrgApacheLuceneUtilPackedPackedLongValues_Iterator *iter_;
  OrgApacheLuceneUtilFixedBitSet *docsWithField_;
  jint size_;
  jint maxDoc_;
  jint upto_;
}

- (instancetype)initWithInt:(jint)maxDoc
withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)values
withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)docsWithFields;

- (jboolean)hasNext;

- (NSNumber *)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator, iter_, OrgApacheLuceneUtilPackedPackedLongValues_Iterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator, docsWithField_, OrgApacheLuceneUtilFixedBitSet *)

__attribute__((unused)) static void OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *self, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields);

__attribute__((unused)) static OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *new_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *create_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator)

@interface OrgApacheLuceneIndexNumericDocValuesWriter_$1 : NSObject < JavaLangIterable > {
 @public
  OrgApacheLuceneIndexNumericDocValuesWriter *this$0_;
  jint val$maxDoc_;
  OrgApacheLuceneUtilPackedPackedLongValues *val$values_;
}

- (id<JavaUtilIterator>)iterator;

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValuesWriter:(OrgApacheLuceneIndexNumericDocValuesWriter *)outer$
                                                           withInt:(jint)capture$0
                     withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNumericDocValuesWriter_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter_$1, this$0_, OrgApacheLuceneIndexNumericDocValuesWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNumericDocValuesWriter_$1, val$values_, OrgApacheLuceneUtilPackedPackedLongValues *)

__attribute__((unused)) static void OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter_$1 *self, OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1);

__attribute__((unused)) static OrgApacheLuceneIndexNumericDocValuesWriter_$1 *new_OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexNumericDocValuesWriter_$1 *create_OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNumericDocValuesWriter_$1)

@implementation OrgApacheLuceneIndexNumericDocValuesWriter

- (instancetype)initWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                       withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)iwBytesUsed {
  OrgApacheLuceneIndexNumericDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(self, fieldInfo, iwBytesUsed);
  return self;
}

- (void)addValueWithInt:(jint)docID
               withLong:(jlong)value {
  if (docID < [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(pending_)) size]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"DocValuesField \"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\" appears more than once in this document (only one value is allowed per field)"));
  }
  for (jint i = (jint) [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(pending_)) size]; i < docID; ++i) {
    [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(pending_)) addWithLong:OrgApacheLuceneIndexNumericDocValuesWriter_MISSING];
  }
  [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(pending_)) addWithLong:value];
  JreStrongAssign(&docsWithField_, OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(docsWithField_, docID));
  [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(docsWithField_)) setWithInt:docID];
  OrgApacheLuceneIndexNumericDocValuesWriter_updateBytesUsed(self);
}

- (jlong)docsWithFieldBytesUsed {
  return OrgApacheLuceneIndexNumericDocValuesWriter_docsWithFieldBytesUsed(self);
}

- (void)updateBytesUsed {
  OrgApacheLuceneIndexNumericDocValuesWriter_updateBytesUsed(self);
}

- (void)finishWithInt:(jint)maxDoc {
}

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
            withOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)dvConsumer {
  jint maxDoc = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) maxDoc];
  OrgApacheLuceneUtilPackedPackedLongValues *values = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(pending_)) build];
  [((OrgApacheLuceneCodecsDocValuesConsumer *) nil_chk(dvConsumer)) addNumericFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo_ withJavaLangIterable:create_OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, maxDoc, values)];
}

- (void)dealloc {
  RELEASE_(pending_);
  RELEASE_(iwBytesUsed_);
  RELEASE_(docsWithField_);
  RELEASE_(fieldInfo_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneUtilCounter:", "NumericDocValuesWriter", NULL, 0x1, NULL, NULL },
    { "addValueWithInt:withLong:", "addValue", "V", 0x1, NULL, NULL },
    { "docsWithFieldBytesUsed", NULL, "J", 0x2, NULL, NULL },
    { "updateBytesUsed", NULL, "V", 0x2, NULL, NULL },
    { "finishWithInt:", "finish", "V", 0x1, NULL, NULL },
    { "flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:", "flush", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MISSING", "MISSING", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneIndexNumericDocValuesWriter_MISSING },
    { "pending_", NULL, 0x2, "Lorg.apache.lucene.util.packed.PackedLongValues$Builder;", NULL, NULL, .constantValue.asLong = 0 },
    { "iwBytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docsWithField_", NULL, 0x2, "Lorg.apache.lucene.util.FixedBitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfo_", NULL, 0x12, "Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.NumericDocValuesWriter$NumericIterator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNumericDocValuesWriter = { 2, "NumericDocValuesWriter", "org.apache.lucene.index", NULL, 0x0, 6, methods, 6, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexNumericDocValuesWriter;
}

@end

void OrgApacheLuceneIndexNumericDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexNumericDocValuesWriter *self, OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  OrgApacheLuceneIndexDocValuesWriter_init(self);
  JreStrongAssign(&self->pending_, OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithFloat_(OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  JreStrongAssignAndConsume(&self->docsWithField_, new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(64));
  self->bytesUsed_ = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->pending_)) ramBytesUsed] + OrgApacheLuceneIndexNumericDocValuesWriter_docsWithFieldBytesUsed(self);
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssign(&self->iwBytesUsed_, iwBytesUsed);
  [((OrgApacheLuceneUtilCounter *) nil_chk(iwBytesUsed)) addAndGetWithLong:self->bytesUsed_];
}

OrgApacheLuceneIndexNumericDocValuesWriter *new_OrgApacheLuceneIndexNumericDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter, initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_, fieldInfo, iwBytesUsed)
}

OrgApacheLuceneIndexNumericDocValuesWriter *create_OrgApacheLuceneIndexNumericDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter, initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_, fieldInfo, iwBytesUsed)
}

jlong OrgApacheLuceneIndexNumericDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexNumericDocValuesWriter *self) {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(self->docsWithField_)) getBits]) + 64;
}

void OrgApacheLuceneIndexNumericDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexNumericDocValuesWriter *self) {
  jlong newBytesUsed = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->pending_)) ramBytesUsed] + OrgApacheLuceneIndexNumericDocValuesWriter_docsWithFieldBytesUsed(self);
  [((OrgApacheLuceneUtilCounter *) nil_chk(self->iwBytesUsed_)) addAndGetWithLong:newBytesUsed - self->bytesUsed_];
  self->bytesUsed_ = newBytesUsed;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNumericDocValuesWriter)

@implementation OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator

- (instancetype)initWithInt:(jint)maxDoc
withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)values
withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)docsWithFields {
  OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(self, maxDoc, values, docsWithFields);
  return self;
}

- (jboolean)hasNext {
  return upto_ < maxDoc_;
}

- (NSNumber *)next {
  if (![self hasNext]) {
    @throw create_JavaUtilNoSuchElementException_init();
  }
  JavaLangLong *value;
  if (upto_ < size_) {
    jlong v = [((OrgApacheLuceneUtilPackedPackedLongValues_Iterator *) nil_chk(iter_)) next];
    if ([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(docsWithField_)) getWithInt:upto_]) {
      value = JavaLangLong_valueOfWithLong_(v);
    }
    else {
      value = nil;
    }
  }
  else {
    value = nil;
  }
  upto_++;
  return value;
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)dealloc {
  RELEASE_(iter_);
  RELEASE_(docsWithField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneUtilPackedPackedLongValues:withOrgApacheLuceneUtilFixedBitSet:", "NumericIterator", NULL, 0x0, NULL, NULL },
    { "hasNext", NULL, "Z", 0x1, NULL, NULL },
    { "next", NULL, "Ljava.lang.Number;", 0x1, NULL, NULL },
    { "remove", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iter_", NULL, 0x10, "Lorg.apache.lucene.util.packed.PackedLongValues$Iterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "docsWithField_", NULL, 0x10, "Lorg.apache.lucene.util.FixedBitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "size_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "upto_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator = { 2, "NumericIterator", "org.apache.lucene.index", "NumericDocValuesWriter", 0xa, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/util/Iterator<Ljava/lang/Number;>;" };
  return &_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator;
}

@end

void OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *self, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields) {
  NSObject_init(self);
  self->maxDoc_ = maxDoc;
  JreStrongAssign(&self->iter_, [((OrgApacheLuceneUtilPackedPackedLongValues *) nil_chk(values)) iterator]);
  self->size_ = (jint) [values size];
  JreStrongAssign(&self->docsWithField_, docsWithFields);
}

OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *new_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator, initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_, maxDoc, values, docsWithFields)
}

OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator *create_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *values, OrgApacheLuceneUtilFixedBitSet *docsWithFields) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator, initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_, maxDoc, values, docsWithFields)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator)

@implementation OrgApacheLuceneIndexNumericDocValuesWriter_$1

- (id<JavaUtilIterator>)iterator {
  return create_OrgApacheLuceneIndexNumericDocValuesWriter_NumericIterator_initWithInt_withOrgApacheLuceneUtilPackedPackedLongValues_withOrgApacheLuceneUtilFixedBitSet_(val$maxDoc_, val$values_, this$0_->docsWithField_);
}

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValuesWriter:(OrgApacheLuceneIndexNumericDocValuesWriter *)outer$
                                                           withInt:(jint)capture$0
                     withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1 {
  OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, capture$0, capture$1);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$values_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, "()Ljava/util/Iterator<Ljava/lang/Number;>;" },
    { "initWithOrgApacheLuceneIndexNumericDocValuesWriter:withInt:withOrgApacheLuceneUtilPackedPackedLongValues:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.NumericDocValuesWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$maxDoc_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$values_", NULL, 0x1012, "Lorg.apache.lucene.util.packed.PackedLongValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneIndexNumericDocValuesWriter", "flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNumericDocValuesWriter_$1 = { 2, "", "org.apache.lucene.index", "NumericDocValuesWriter", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/lang/Iterable<Ljava/lang/Number;>;" };
  return &_OrgApacheLuceneIndexNumericDocValuesWriter_$1;
}

@end

void OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter_$1 *self, OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$maxDoc_ = capture$0;
  JreStrongAssign(&self->val$values_, capture$1);
  NSObject_init(self);
}

OrgApacheLuceneIndexNumericDocValuesWriter_$1 *new_OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter_$1, initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, capture$0, capture$1)
}

OrgApacheLuceneIndexNumericDocValuesWriter_$1 *create_OrgApacheLuceneIndexNumericDocValuesWriter_$1_initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexNumericDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNumericDocValuesWriter_$1, initWithOrgApacheLuceneIndexNumericDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNumericDocValuesWriter_$1)
