//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValuesWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Iterable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/index/BinaryDocValuesWriter.h"
#include "org/apache/lucene/index/DocValuesWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/PagedBytes.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedLongValues.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/BinaryDocValuesWriter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexBinaryDocValuesWriter () {
 @public
  OrgApacheLuceneUtilPagedBytes *bytes_;
  OrgApacheLuceneStoreDataOutput *bytesOut_;
  OrgApacheLuceneUtilCounter *iwBytesUsed_;
  OrgApacheLuceneUtilPackedPackedLongValues_Builder *lengths_;
  OrgApacheLuceneUtilFixedBitSet *docsWithField_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  jint addedValues_;
  jlong bytesUsed_;
}

- (jlong)docsWithFieldBytesUsed;

- (void)updateBytesUsed;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, bytes_, OrgApacheLuceneUtilPagedBytes *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, bytesOut_, OrgApacheLuceneStoreDataOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, iwBytesUsed_, OrgApacheLuceneUtilCounter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, lengths_, OrgApacheLuceneUtilPackedPackedLongValues_Builder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, docsWithField_, OrgApacheLuceneUtilFixedBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)

/*!
 @brief Maximum length for a binary field.
 */
inline jint OrgApacheLuceneIndexBinaryDocValuesWriter_get_MAX_LENGTH(void);
static jint OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexBinaryDocValuesWriter, MAX_LENGTH, jint)

inline jint OrgApacheLuceneIndexBinaryDocValuesWriter_get_BLOCK_BITS(void);
#define OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS 15
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexBinaryDocValuesWriter, BLOCK_BITS, jint)

__attribute__((unused)) static jlong OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self);

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self);

@interface OrgApacheLuceneIndexBinaryDocValuesWriter_1 : NSObject < JavaLangIterable > {
 @public
  OrgApacheLuceneIndexBinaryDocValuesWriter *this$0_;
  jint val$maxDoc_;
  OrgApacheLuceneUtilPackedPackedLongValues *val$lengths_;
}

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)capture$0
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1;

- (id<JavaUtilIterator>)iterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesWriter_1)

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_1 *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1);

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_1 *new_OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_1 *create_OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1);

@interface OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator : NSObject < JavaUtilIterator > {
 @public
  OrgApacheLuceneIndexBinaryDocValuesWriter *this$0_;
  OrgApacheLuceneUtilBytesRefBuilder *value_;
  OrgApacheLuceneUtilPackedPackedLongValues_Iterator *lengthsIterator_;
  OrgApacheLuceneStoreDataInput *bytesIterator_;
  jint size_;
  jint maxDoc_;
  jint upto_;
}

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)maxDoc
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)lengths;

- (jboolean)hasNext;

- (OrgApacheLuceneUtilBytesRef *)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, value_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, lengthsIterator_, OrgApacheLuceneUtilPackedPackedLongValues_Iterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, bytesIterator_, OrgApacheLuceneStoreDataInput *)

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths);

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *new_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *create_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexBinaryDocValuesWriter)

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter

- (instancetype)initPackagePrivateWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                     withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)iwBytesUsed {
  OrgApacheLuceneIndexBinaryDocValuesWriter_initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(self, fieldInfo, iwBytesUsed);
  return self;
}

- (void)addValueWithInt:(jint)docID
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value {
  if (docID < addedValues_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"DocValuesField \"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\" appears more than once in this document (only one value is allowed per field)"));
  }
  if (value == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"field=\"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\": null value not allowed"));
  }
  if (value->length_ > OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$I", @"DocValuesField \"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\" is too large, must be <= ", OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH));
  }
  while (addedValues_ < docID) {
    addedValues_++;
    [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(lengths_)) addWithLong:0];
  }
  addedValues_++;
  [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(lengths_)) addWithLong:value->length_];
  @try {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(bytesOut_)) writeBytesWithByteArray:value->bytes_ withInt:value->offset_ withInt:value->length_];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
  }
  JreStrongAssign(&docsWithField_, OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(docsWithField_, docID));
  [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(docsWithField_)) setWithInt:docID];
  OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(self);
}

- (jlong)docsWithFieldBytesUsed {
  return OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
}

- (void)updateBytesUsed {
  OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(self);
}

- (void)finishWithInt:(jint)maxDoc {
}

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
            withOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)dvConsumer {
  jint maxDoc = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) maxDoc];
  [((OrgApacheLuceneUtilPagedBytes *) nil_chk(bytes_)) freezeWithBoolean:false];
  OrgApacheLuceneUtilPackedPackedLongValues *lengths = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->lengths_)) build];
  [((OrgApacheLuceneCodecsDocValuesConsumer *) nil_chk(dvConsumer)) addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo_ withJavaLangIterable:create_OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, maxDoc, lengths)];
}

- (void)dealloc {
  RELEASE_(bytes_);
  RELEASE_(bytesOut_);
  RELEASE_(iwBytesUsed_);
  RELEASE_(lengths_);
  RELEASE_(docsWithField_);
  RELEASE_(fieldInfo_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneUtilCounter:);
  methods[1].selector = @selector(addValueWithInt:withOrgApacheLuceneUtilBytesRef:);
  methods[2].selector = @selector(docsWithFieldBytesUsed);
  methods[3].selector = @selector(updateBytesUsed);
  methods[4].selector = @selector(finishWithInt:);
  methods[5].selector = @selector(flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_LENGTH", "I", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "BLOCK_BITS", "I", .constantValue.asInt = OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS, 0x1a, -1, -1, -1, -1 },
    { "bytes_", "LOrgApacheLuceneUtilPagedBytes;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "bytesOut_", "LOrgApacheLuceneStoreDataOutput;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iwBytesUsed_", "LOrgApacheLuceneUtilCounter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "lengths_", "LOrgApacheLuceneUtilPackedPackedLongValues_Builder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "docsWithField_", "LOrgApacheLuceneUtilFixedBitSet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fieldInfo_", "LOrgApacheLuceneIndexFieldInfo;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "addedValues_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bytesUsed_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneUtilCounter;", "addValue", "ILOrgApacheLuceneUtilBytesRef;", "finish", "I", "flush", "LOrgApacheLuceneIndexSegmentWriteState;LOrgApacheLuceneCodecsDocValuesConsumer;", "LJavaIoIOException;", &OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH, "LOrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter = { "BinaryDocValuesWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 6, 10, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexBinaryDocValuesWriter class]) {
    OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH = JreLoadStatic(OrgApacheLuceneUtilArrayUtil, MAX_ARRAY_LENGTH);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexBinaryDocValuesWriter)
  }
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexBinaryDocValuesWriter *self, OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  OrgApacheLuceneIndexDocValuesWriter_initPackagePrivate(self);
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssignAndConsume(&self->bytes_, new_OrgApacheLuceneUtilPagedBytes_initWithInt_(OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS));
  JreStrongAssign(&self->bytesOut_, [self->bytes_ getDataOutput]);
  JreStrongAssign(&self->lengths_, OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithFloat_(OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  JreStrongAssign(&self->iwBytesUsed_, iwBytesUsed);
  JreStrongAssignAndConsume(&self->docsWithField_, new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(64));
  self->bytesUsed_ = OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
  [((OrgApacheLuceneUtilCounter *) nil_chk(iwBytesUsed)) addAndGetWithLong:self->bytesUsed_];
}

OrgApacheLuceneIndexBinaryDocValuesWriter *new_OrgApacheLuceneIndexBinaryDocValuesWriter_initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter, initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_, fieldInfo, iwBytesUsed)
}

OrgApacheLuceneIndexBinaryDocValuesWriter *create_OrgApacheLuceneIndexBinaryDocValuesWriter_initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter, initPackagePrivateWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_, fieldInfo, iwBytesUsed)
}

jlong OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self) {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(self->docsWithField_)) getBits]) + 64;
}

void OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self) {
  jlong newBytesUsed = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->lengths_)) ramBytesUsed] + [((OrgApacheLuceneUtilPagedBytes *) nil_chk(self->bytes_)) ramBytesUsed] + OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
  [((OrgApacheLuceneUtilCounter *) nil_chk(self->iwBytesUsed_)) addAndGetWithLong:newBytesUsed - self->bytesUsed_];
  self->bytesUsed_ = newBytesUsed;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValuesWriter)

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter_1

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)capture$0
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1 {
  OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, capture$0, capture$1);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return create_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(this$0_, val$maxDoc_, val$lengths_);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$lengths_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexBinaryDocValuesWriter:withInt:withOrgApacheLuceneUtilPackedPackedLongValues:);
  methods[1].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneIndexBinaryDocValuesWriter;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$maxDoc_", "I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$lengths_", "LOrgApacheLuceneUtilPackedPackedLongValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexBinaryDocValuesWriter;ILOrgApacheLuceneUtilPackedPackedLongValues;", "()Ljava/util/Iterator<Lorg/apache/lucene/util/BytesRef;>;", "LOrgApacheLuceneIndexBinaryDocValuesWriter;", "flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:", "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter_1 = { "", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x8010, 2, 3, 2, -1, 3, 4, -1 };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter_1;
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_1 *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$maxDoc_ = capture$0;
  JreStrongAssign(&self->val$lengths_, capture$1);
  NSObject_init(self);
}

OrgApacheLuceneIndexBinaryDocValuesWriter_1 *new_OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter_1, initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, capture$0, capture$1)
}

OrgApacheLuceneIndexBinaryDocValuesWriter_1 *create_OrgApacheLuceneIndexBinaryDocValuesWriter_1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter_1, initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, capture$0, capture$1)
}

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)maxDoc
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)lengths {
  OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, maxDoc, lengths);
  return self;
}

- (jboolean)hasNext {
  return upto_ < maxDoc_;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  if (![self hasNext]) {
    @throw create_JavaUtilNoSuchElementException_init();
  }
  OrgApacheLuceneUtilBytesRef *v;
  if (upto_ < size_) {
    jint length = (jint) [((OrgApacheLuceneUtilPackedPackedLongValues_Iterator *) nil_chk(lengthsIterator_)) next];
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) growWithInt:length];
    [value_ setLengthWithInt:length];
    @try {
      [((OrgApacheLuceneStoreDataInput *) nil_chk(bytesIterator_)) readBytesWithByteArray:[value_ bytes] withInt:0 withInt:[value_ length]];
    }
    @catch (JavaIoIOException *ioe) {
      @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
    }
    if ([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(this$0_->docsWithField_)) getWithInt:upto_]) {
      v = [value_ get];
    }
    else {
      v = nil;
    }
  }
  else {
    v = nil;
  }
  upto_++;
  return v;
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(value_);
  RELEASE_(lengthsIterator_);
  RELEASE_(bytesIterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexBinaryDocValuesWriter:withInt:withOrgApacheLuceneUtilPackedPackedLongValues:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneIndexBinaryDocValuesWriter;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "value_", "LOrgApacheLuceneUtilBytesRefBuilder;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lengthsIterator_", "LOrgApacheLuceneUtilPackedPackedLongValues_Iterator;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "bytesIterator_", "LOrgApacheLuceneStoreDataInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "size_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "maxDoc_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexBinaryDocValuesWriter;ILOrgApacheLuceneUtilPackedPackedLongValues;", "LOrgApacheLuceneIndexBinaryDocValuesWriter;", "Ljava/lang/Object;Ljava/util/Iterator<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator = { "BytesIterator", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x2, 4, 7, 1, -1, -1, 2, -1 };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator;
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->value_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssign(&self->bytesIterator_, [((OrgApacheLuceneUtilPagedBytes *) nil_chk(outer$->bytes_)) getDataInput]);
  self->size_ = (jint) [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(outer$->lengths_)) size];
  self->maxDoc_ = maxDoc;
  JreStrongAssign(&self->lengthsIterator_, [((OrgApacheLuceneUtilPackedPackedLongValues *) nil_chk(lengths)) iterator]);
}

OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *new_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, maxDoc, lengths)
}

OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *create_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_, outer$, maxDoc, lengths)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)
