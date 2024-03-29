//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/DirectWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/EOFException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/packed/BulkOperation.h"
#include "org/apache/lucene/util/packed/DirectWriter.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/DirectWriter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilPackedDirectWriter ()

- (void)flush;

/*!
 @brief Round a number of bits per value to the next amount of bits per value that
  is supported by this writer.
 @param bitsRequired the amount of bits required
 @return the next number of bits per value that is gte the provided value
          and supported by this writer
 */
+ (jint)roundBitsWithInt:(jint)bitsRequired;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilPackedDirectWriter_flush(OrgApacheLuceneUtilPackedDirectWriter *self);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedDirectWriter_roundBitsWithInt_(jint bitsRequired);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedDirectWriter)

IOSIntArray *OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE;

@implementation OrgApacheLuceneUtilPackedDirectWriter

+ (IOSIntArray *)SUPPORTED_BITS_PER_VALUE {
  return OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE;
}

- (instancetype)initWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output
                                               withLong:(jlong)numValues
                                                withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self, output, numValues, bitsPerValue);
  return self;
}

- (void)addWithLong:(jlong)l {
  JreAssert(bitsPerValue_ == 64 || (l >= 0 && l <= OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(bitsPerValue_)), JavaLangInteger_valueOfWithInt_(bitsPerValue_));
  JreAssert(!finished_, @"org/apache/lucene/util/packed/DirectWriter.java:72 condition failed: assert !finished;");
  if (count_ >= numValues_) {
    @throw create_JavaIoEOFException_initWithNSString_(@"Writing past end of stream");
  }
  *IOSLongArray_GetRef(nil_chk(nextValues_), off_++) = l;
  if (off_ == nextValues_->size_) {
    OrgApacheLuceneUtilPackedDirectWriter_flush(self);
  }
  count_++;
}

- (void)flush {
  OrgApacheLuceneUtilPackedDirectWriter_flush(self);
}

- (void)finish {
  if (count_ != numValues_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$J$J", @"Wrong number of values added, expected: ", numValues_, @", got: ", count_));
  }
  JreAssert(!finished_, @"org/apache/lucene/util/packed/DirectWriter.java:96 condition failed: assert !finished;");
  OrgApacheLuceneUtilPackedDirectWriter_flush(self);
  for (jint i = 0; i < 3; i++) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(output_)) writeByteWithByte:(jbyte) 0];
  }
  finished_ = true;
}

+ (OrgApacheLuceneUtilPackedDirectWriter *)getInstanceWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output
                                                                                 withLong:(jlong)numValues
                                                                                  withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(output, numValues, bitsPerValue);
}

+ (jint)roundBitsWithInt:(jint)bitsRequired {
  return OrgApacheLuceneUtilPackedDirectWriter_roundBitsWithInt_(bitsRequired);
}

+ (jint)bitsRequiredWithLong:(jlong)maxValue {
  return OrgApacheLuceneUtilPackedDirectWriter_bitsRequiredWithLong_(maxValue);
}

+ (jint)unsignedBitsRequiredWithLong:(jlong)maxValue {
  return OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(maxValue);
}

- (void)dealloc {
  RELEASE_(output_);
  RELEASE_(nextBlocks_);
  RELEASE_(nextValues_);
  RELEASE_(encoder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedDirectWriter;", 0x9, 4, 0, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 7, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 8, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexOutput:withLong:withInt:);
  methods[1].selector = @selector(addWithLong:);
  methods[2].selector = @selector(flush);
  methods[3].selector = @selector(finish);
  methods[4].selector = @selector(getInstanceWithOrgApacheLuceneStoreIndexOutput:withLong:withInt:);
  methods[5].selector = @selector(roundBitsWithInt:);
  methods[6].selector = @selector(bitsRequiredWithLong:);
  methods[7].selector = @selector(unsignedBitsRequiredWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bitsPerValue_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "numValues_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "output_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "count_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "finished_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "off_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "nextBlocks_", "[B", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "nextValues_", "[J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "encoder_", "LOrgApacheLuceneUtilPackedBulkOperation;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iterations_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "SUPPORTED_BITS_PER_VALUE", "[I", .constantValue.asLong = 0, 0x18, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexOutput;JI", "add", "J", "LJavaIoIOException;", "getInstance", "roundBits", "I", "bitsRequired", "unsignedBitsRequired", &OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectWriter = { "DirectWriter", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x11, 8, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedDirectWriter;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedDirectWriter class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE, [IOSIntArray newArrayWithInts:(jint[]){ 1, 2, 4, 8, 12, 16, 20, 24, 28, 32, 40, 48, 56, 64 } count:14]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedDirectWriter)
  }
}

@end

void OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(OrgApacheLuceneUtilPackedDirectWriter *self, OrgApacheLuceneStoreIndexOutput *output, jlong numValues, jint bitsPerValue) {
  NSObject_init(self);
  JreStrongAssign(&self->output_, output);
  self->numValues_ = numValues;
  self->bitsPerValue_ = bitsPerValue;
  JreStrongAssign(&self->encoder_, OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_(JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED), bitsPerValue));
  self->iterations_ = [((OrgApacheLuceneUtilPackedBulkOperation *) nil_chk(self->encoder_)) computeIterationsWithInt:(jint) JavaLangMath_minWithLong_withLong_(numValues, JavaLangInteger_MAX_VALUE) withInt:OrgApacheLuceneUtilPackedPackedInts_DEFAULT_BUFFER_SIZE];
  JreStrongAssignAndConsume(&self->nextBlocks_, [IOSByteArray newArrayWithLength:self->iterations_ * [self->encoder_ byteBlockCount]]);
  JreStrongAssignAndConsume(&self->nextValues_, [IOSLongArray newArrayWithLength:self->iterations_ * [self->encoder_ byteValueCount]]);
}

OrgApacheLuceneUtilPackedDirectWriter *new_OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(OrgApacheLuceneStoreIndexOutput *output, jlong numValues, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirectWriter, initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_, output, numValues, bitsPerValue)
}

OrgApacheLuceneUtilPackedDirectWriter *create_OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(OrgApacheLuceneStoreIndexOutput *output, jlong numValues, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirectWriter, initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_, output, numValues, bitsPerValue)
}

void OrgApacheLuceneUtilPackedDirectWriter_flush(OrgApacheLuceneUtilPackedDirectWriter *self) {
  [((OrgApacheLuceneUtilPackedBulkOperation *) nil_chk(self->encoder_)) encodeWithLongArray:self->nextValues_ withInt:0 withByteArray:self->nextBlocks_ withInt:0 withInt:self->iterations_];
  jint blockCount = (jint) [((OrgApacheLuceneUtilPackedPackedInts_Format *) nil_chk(JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED))) byteCountWithInt:OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT withInt:self->off_ withInt:self->bitsPerValue_];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->output_)) writeBytesWithByteArray:self->nextBlocks_ withInt:blockCount];
  JavaUtilArrays_fillWithLongArray_withLong_(self->nextValues_, 0LL);
  self->off_ = 0;
}

OrgApacheLuceneUtilPackedDirectWriter *OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(OrgApacheLuceneStoreIndexOutput *output, jlong numValues, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedDirectWriter_initialize();
  if (JavaUtilArrays_binarySearchWithIntArray_withInt_(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE, bitsPerValue) < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$", @"Unsupported bitsPerValue ", bitsPerValue, @". Did you use bitsRequired?"));
  }
  return create_OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(output, numValues, bitsPerValue);
}

jint OrgApacheLuceneUtilPackedDirectWriter_roundBitsWithInt_(jint bitsRequired) {
  OrgApacheLuceneUtilPackedDirectWriter_initialize();
  jint index = JavaUtilArrays_binarySearchWithIntArray_withInt_(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE, bitsRequired);
  if (index < 0) {
    return IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE), -index - 1);
  }
  else {
    return bitsRequired;
  }
}

jint OrgApacheLuceneUtilPackedDirectWriter_bitsRequiredWithLong_(jlong maxValue) {
  OrgApacheLuceneUtilPackedDirectWriter_initialize();
  return OrgApacheLuceneUtilPackedDirectWriter_roundBitsWithInt_(OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(maxValue));
}

jint OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(jlong maxValue) {
  OrgApacheLuceneUtilPackedDirectWriter_initialize();
  return OrgApacheLuceneUtilPackedDirectWriter_roundBitsWithInt_(OrgApacheLuceneUtilPackedPackedInts_unsignedBitsRequiredWithLong_(maxValue));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectWriter)
