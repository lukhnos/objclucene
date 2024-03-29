//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/MonotonicBlockPackedReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/LongValues.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/AbstractBlockPackedWriter.h"
#include "org/apache/lucene/util/packed/MonotonicBlockPackedReader.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/MonotonicBlockPackedReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader ()

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 : OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct;

- (jlong)decodeDeltaWithLong:(jlong)delta;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1)

__attribute__((unused)) static void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

+ (jlong)expectedWithLong:(jlong)origin
                withFloat:(jfloat)average
                  withInt:(jint)index {
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(origin, average, index);
}

+ (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)ofWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                                                                      withInt:(jint)packedIntsVersion
                                                                                      withInt:(jint)blockSize
                                                                                     withLong:(jlong)valueCount
                                                                                  withBoolean:(jboolean)direct {
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
}

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, inArg, packedIntsVersion, blockSize, valueCount, direct);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  JreAssert(index >= 0 && index < valueCount_, @"org/apache/lucene/util/packed/MonotonicBlockPackedReader.java:105 condition failed: assert index >= 0 && index < valueCount;");
  jint block = (jint) (JreURShift64(index, blockShift_));
  jint idx = (jint) (index & blockMask_);
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(IOSLongArray_Get(nil_chk(minValues_), block), IOSFloatArray_Get(nil_chk(averages_), block), idx) + [self decodeDeltaWithLong:[((OrgApacheLuceneUtilPackedPackedInts_Reader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), block))) getWithInt:idx]];
}

- (jlong)decodeDeltaWithLong:(jlong)delta {
  return delta;
}

- (jlong)size {
  return valueCount_;
}

- (jlong)ramBytesUsed {
  jlong sizeInBytes = 0;
  sizeInBytes += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(minValues_);
  sizeInBytes += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(averages_);
  {
    IOSObjectArray *a__ = subReaders_;
    OrgApacheLuceneUtilPackedPackedInts_Reader * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilPackedPackedInts_Reader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilPackedPackedInts_Reader *reader = *b__++;
      sizeInBytes += [((OrgApacheLuceneUtilPackedPackedInts_Reader *) nil_chk(reader)) ramBytesUsed];
    }
  }
  return sizeInBytes;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  jlong avgBPV = ((IOSObjectArray *) nil_chk(subReaders_))->size_ == 0 ? 0 : JreLongDiv(sumBPV_, subReaders_->size_);
  return JreStrcat("$$I$J$JC", [[self java_getClass] getSimpleName], @"(blocksize=", (JreLShift32(1, blockShift_)), @",size=", valueCount_, @",avgBPV=", avgBPV, ')');
}

- (void)dealloc {
  RELEASE_(minValues_);
  RELEASE_(averages_);
  RELEASE_(subReaders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedMonotonicBlockPackedReader;", 0x9, 2, 3, 4, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 3, 4, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x4, 7, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 8, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(expectedWithLong:withFloat:withInt:);
  methods[1].selector = @selector(ofWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:);
  methods[2].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:);
  methods[3].selector = @selector(getWithLong:);
  methods[4].selector = @selector(decodeDeltaWithLong:);
  methods[5].selector = @selector(size);
  methods[6].selector = @selector(ramBytesUsed);
  methods[7].selector = @selector(getChildResources);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "blockShift_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "blockMask_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "valueCount_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "minValues_", "[J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "averages_", "[F", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "subReaders_", "[LOrgApacheLuceneUtilPackedPackedInts_Reader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "sumBPV_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "expected", "JFI", "of", "LOrgApacheLuceneStoreIndexInput;IIJZ", "LJavaIoIOException;", "get", "J", "decodeDelta", "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedMonotonicBlockPackedReader = { "MonotonicBlockPackedReader", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x1, 9, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader;
}

@end

jlong OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(jlong origin, jfloat average, jint index) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initialize();
  return origin + JreFpToLong((average * (jlong) index));
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initialize();
  if (packedIntsVersion < OrgApacheLuceneUtilPackedPackedInts_VERSION_MONOTONIC_WITHOUT_ZIGZAG) {
    return create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
  }
  return create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
}

void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  OrgApacheLuceneUtilLongValues_init(self);
  self->valueCount_ = valueCount;
  self->blockShift_ = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(blockSize, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_BLOCK_SIZE, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MAX_BLOCK_SIZE);
  self->blockMask_ = blockSize - 1;
  jint numBlocks = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(valueCount, blockSize);
  JreStrongAssignAndConsume(&self->minValues_, [IOSLongArray newArrayWithLength:numBlocks]);
  JreStrongAssignAndConsume(&self->averages_, [IOSFloatArray newArrayWithLength:numBlocks]);
  JreStrongAssignAndConsume(&self->subReaders_, [IOSObjectArray newArrayWithLength:numBlocks type:OrgApacheLuceneUtilPackedPackedInts_Reader_class_()]);
  jlong sumBPV = 0;
  for (jint i = 0; i < numBlocks; ++i) {
    if (packedIntsVersion < OrgApacheLuceneUtilPackedPackedInts_VERSION_MONOTONIC_WITHOUT_ZIGZAG) {
      *IOSLongArray_GetRef(self->minValues_, i) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readVLong];
    }
    else {
      *IOSLongArray_GetRef(self->minValues_, i) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readZLong];
    }
    *IOSFloatArray_GetRef(self->averages_, i) = JavaLangFloat_intBitsToFloatWithInt_([inArg readInt]);
    jint bitsPerValue = [inArg readVInt];
    sumBPV += bitsPerValue;
    if (bitsPerValue > 64) {
      @throw create_JavaIoIOException_initWithNSString_(@"Corrupted");
    }
    if (bitsPerValue == 0) {
      IOSObjectArray_SetAndConsume(self->subReaders_, i, new_OrgApacheLuceneUtilPackedPackedInts_NullReader_initWithInt_(blockSize));
    }
    else {
      jint size = (jint) JavaLangMath_minWithLong_withLong_(blockSize, valueCount - (jlong) i * blockSize);
      if (direct) {
        jlong pointer = [inArg getFilePointer];
        IOSObjectArray_Set(self->subReaders_, i, OrgApacheLuceneUtilPackedPackedInts_getDirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_(inArg, JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED), packedIntsVersion, size, bitsPerValue));
        [inArg seekWithLong:pointer + [((OrgApacheLuceneUtilPackedPackedInts_Format *) nil_chk(JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED))) byteCountWithInt:packedIntsVersion withInt:size withInt:bitsPerValue]];
      }
      else {
        IOSObjectArray_Set(self->subReaders_, i, OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_(inArg, JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED), packedIntsVersion, size, bitsPerValue));
      }
    }
  }
  self->sumBPV_ = sumBPV;
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, inArg, packedIntsVersion, blockSize, valueCount, direct);
  return self;
}

- (jlong)decodeDeltaWithLong:(jlong)delta {
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(delta);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:);
  methods[1].selector = @selector(decodeDeltaWithLong:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexInput;IIJZ", "decodeDelta", "J", "LOrgApacheLuceneUtilPackedMonotonicBlockPackedReader;", "ofWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 = { "", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1;
}

@end

void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, inArg, packedIntsVersion, blockSize, valueCount, direct);
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1 *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_1, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}
