//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked7.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked7.h"

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked7

- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperationPacked7_init(self);
  return self;
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jint byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift32(byte0, 1);
    jint byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte0 & 1), 6)) | (JreURShift32(byte1, 2));
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte1 & 3), 5)) | (JreURShift32(byte2, 3));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 7), 4)) | (JreURShift32(byte3, 4));
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte3 & 15), 3)) | (JreURShift32(byte4, 5));
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte4 & 31), 2)) | (JreURShift32(byte5, 6));
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte5 & 63), 1)) | (JreURShift32(byte6, 7));
    *IOSIntArray_GetRef(values, valuesOffset++) = byte6 & 127;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 57);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 50)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 43)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 36)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 29)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 22)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 15)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 8)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 1)) & 127LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 1LL), 6)) | (JreURShift64(block1, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 51)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 44)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 37)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 30)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 23)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 16)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 9)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 2)) & 127LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 3LL), 5)) | (JreURShift64(block2, 59));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 52)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 45)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 38)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 31)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 24)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 17)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 10)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 3)) & 127LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 7LL), 4)) | (JreURShift64(block3, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 53)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 46)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 39)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 32)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 25)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 18)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 11)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 4)) & 127LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 15LL), 3)) | (JreURShift64(block4, 61));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 54)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 47)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 40)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 33)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 26)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 19)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 12)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 5)) & 127LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 31LL), 2)) | (JreURShift64(block5, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 55)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 48)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 41)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 34)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 27)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 20)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 13)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 6)) & 127LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 63LL), 1)) | (JreURShift64(block6, 63));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 56)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 49)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 42)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 35)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 28)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 21)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 14)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 7)) & 127LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block6 & 127LL;
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(byte0, 1);
    jlong byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte0 & 1), 6)) | (JreURShift64(byte1, 2));
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte1 & 3), 5)) | (JreURShift64(byte2, 3));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 7), 4)) | (JreURShift64(byte3, 4));
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte3 & 15), 3)) | (JreURShift64(byte4, 5));
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte4 & 31), 2)) | (JreURShift64(byte5, 6));
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte5 & 63), 1)) | (JreURShift64(byte6, 7));
    *IOSLongArray_GetRef(values, valuesOffset++) = byte6 & 127;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BulkOperationPacked7", NULL, 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked7 = { 2, "BulkOperationPacked7", "org.apache.lucene.util.packed", NULL, 0x10, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked7;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked7_init(OrgApacheLuceneUtilPackedBulkOperationPacked7 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(self, 7);
}

OrgApacheLuceneUtilPackedBulkOperationPacked7 *new_OrgApacheLuceneUtilPackedBulkOperationPacked7_init() {
  OrgApacheLuceneUtilPackedBulkOperationPacked7 *self = [OrgApacheLuceneUtilPackedBulkOperationPacked7 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked7_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked7)
