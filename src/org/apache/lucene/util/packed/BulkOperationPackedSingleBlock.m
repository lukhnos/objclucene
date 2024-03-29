//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/util/packed/BulkOperation.h"
#include "org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPackedSingleBlock must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock () {
 @public
  jint bitsPerValue_;
  jint valueCount_;
  jlong mask_;
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)blocks
                       withInt:(jint)blocksOffset;

- (jint)decodeWithLong:(jlong)block
         withLongArray:(IOSLongArray *)values
               withInt:(jint)valuesOffset;

- (jint)decodeWithLong:(jlong)block
          withIntArray:(IOSIntArray *)values
               withInt:(jint)valuesOffset;

- (jlong)encodeWithLongArray:(IOSLongArray *)values
                     withInt:(jint)valuesOffset;

- (jlong)encodeWithIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset;

@end

inline jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_get_BLOCK_COUNT(void);
#define OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, BLOCK_COUNT, jint)

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(IOSByteArray *blocks, jint blocksOffset);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSLongArray *values, jint valuesOffset);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSIntArray *values, jint valuesOffset);

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSLongArray *values, jint valuesOffset);

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSIntArray *values, jint valuesOffset);

@implementation OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock

- (instancetype)initPackagePrivateWithInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initPackagePrivateWithInt_(self, bitsPerValue);
  return self;
}

- (jint)longBlockCount {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT;
}

- (jint)byteBlockCount {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT * 8;
}

- (jint)longValueCount {
  return valueCount_;
}

- (jint)byteValueCount {
  return valueCount_;
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)blocks
                       withInt:(jint)blocksOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
}

- (jint)decodeWithLong:(jlong)block
         withLongArray:(IOSLongArray *)values
               withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
}

- (jint)decodeWithLong:(jlong)block
          withIntArray:(IOSIntArray *)values
               withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
}

- (jlong)encodeWithLongArray:(IOSLongArray *)values
                     withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
}

- (jlong)encodeWithIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
    blocksOffset += 8;
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  if (bitsPerValue_ > 32) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$I$", @"Cannot decode ", bitsPerValue_, @"-bits values into an int[]"));
  }
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  if (bitsPerValue_ > 32) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$I$", @"Cannot decode ", bitsPerValue_, @"-bits values into an int[]"));
  }
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
    blocksOffset += 8;
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    *IOSLongArray_GetRef(nil_chk(blocks), blocksOffset++) = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
  }
}

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withLongArray:(IOSLongArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    *IOSLongArray_GetRef(nil_chk(blocks), blocksOffset++) = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
  }
}

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
    blocksOffset = [self writeLongWithLong:block withByteArray:blocks withInt:blocksOffset];
  }
}

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withByteArray:(IOSByteArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
    blocksOffset = [self writeLongWithLong:block withByteArray:blocks withInt:blocksOffset];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 3, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x2, 6, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 15, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:);
  methods[1].selector = @selector(longBlockCount);
  methods[2].selector = @selector(byteBlockCount);
  methods[3].selector = @selector(longValueCount);
  methods[4].selector = @selector(byteValueCount);
  methods[5].selector = @selector(readLongWithByteArray:withInt:);
  methods[6].selector = @selector(decodeWithLong:withLongArray:withInt:);
  methods[7].selector = @selector(decodeWithLong:withIntArray:withInt:);
  methods[8].selector = @selector(encodeWithLongArray:withInt:);
  methods[9].selector = @selector(encodeWithIntArray:withInt:);
  methods[10].selector = @selector(decodeWithLongArray:withInt:withLongArray:withInt:withInt:);
  methods[11].selector = @selector(decodeWithByteArray:withInt:withLongArray:withInt:withInt:);
  methods[12].selector = @selector(decodeWithLongArray:withInt:withIntArray:withInt:withInt:);
  methods[13].selector = @selector(decodeWithByteArray:withInt:withIntArray:withInt:withInt:);
  methods[14].selector = @selector(encodeWithLongArray:withInt:withLongArray:withInt:withInt:);
  methods[15].selector = @selector(encodeWithIntArray:withInt:withLongArray:withInt:withInt:);
  methods[16].selector = @selector(encodeWithLongArray:withInt:withByteArray:withInt:withInt:);
  methods[17].selector = @selector(encodeWithIntArray:withInt:withByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BLOCK_COUNT", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT, 0x1a, -1, -1, -1, -1 },
    { "bitsPerValue_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "valueCount_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mask_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "readLong", "[BI", "decode", "J[JI", "J[II", "encode", "[JI", "[II", "[JI[JII", "[BI[JII", "[JI[III", "[BI[III", "[II[JII", "[JI[BII", "[II[BII" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock = { "BulkOperationPackedSingleBlock", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x10, 18, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initPackagePrivateWithInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedBulkOperation_initPackagePrivate(self);
  self->bitsPerValue_ = bitsPerValue;
  self->valueCount_ = JreIntDiv(64, bitsPerValue);
  self->mask_ = (JreLShift64(1LL, bitsPerValue)) - 1;
}

OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initPackagePrivateWithInt_(jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, initPackagePrivateWithInt_, bitsPerValue)
}

OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initPackagePrivateWithInt_(jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, initPackagePrivateWithInt_, bitsPerValue)
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(IOSByteArray *blocks, jint blocksOffset) {
  OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initialize();
  jint unseq$1 = blocksOffset++;
  jint unseq$2 = blocksOffset++;
  jint unseq$3 = blocksOffset++;
  jint unseq$4 = blocksOffset++;
  jint unseq$5 = blocksOffset++;
  jint unseq$6 = blocksOffset++;
  jint unseq$7 = blocksOffset++;
  return (JreLShift64((IOSByteArray_Get(nil_chk(blocks), unseq$1) & (jlong) 0xFFLL), 56)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$2) & (jlong) 0xFFLL), 48)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$3) & (jlong) 0xFFLL), 40)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$4) & (jlong) 0xFFLL), 32)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$5) & (jlong) 0xFFLL), 24)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$6) & (jlong) 0xFFLL), 16)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$7) & (jlong) 0xFFLL), 8)) | (IOSByteArray_Get(blocks, blocksOffset++) & (jlong) 0xFFLL);
}

jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSLongArray *values, jint valuesOffset) {
  *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = block & self->mask_;
  for (jint j = 1; j < self->valueCount_; ++j) {
    JreURShiftAssignLong(&block, self->bitsPerValue_);
    *IOSLongArray_GetRef(values, valuesOffset++) = block & self->mask_;
  }
  return valuesOffset;
}

jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSIntArray *values, jint valuesOffset) {
  *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (block & self->mask_);
  for (jint j = 1; j < self->valueCount_; ++j) {
    JreURShiftAssignLong(&block, self->bitsPerValue_);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block & self->mask_);
  }
  return valuesOffset;
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSLongArray *values, jint valuesOffset) {
  jlong block = IOSLongArray_Get(nil_chk(values), valuesOffset++);
  for (jint j = 1; j < self->valueCount_; ++j) {
    block |= JreLShift64(IOSLongArray_Get(values, valuesOffset++), (j * self->bitsPerValue_));
  }
  return block;
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSIntArray *values, jint valuesOffset) {
  jlong block = IOSIntArray_Get(nil_chk(values), valuesOffset++) & (jlong) 0xFFFFFFFFLL;
  for (jint j = 1; j < self->valueCount_; ++j) {
    block |= JreLShift64((IOSIntArray_Get(values, valuesOffset++) & (jlong) 0xFFFFFFFFLL), (j * self->bitsPerValue_));
  }
  return block;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)
