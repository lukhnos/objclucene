//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked17.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked17.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPacked17 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked17

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilPackedBulkOperationPacked17_initPackagePrivate(self);
  return self;
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 47));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 30)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 13)) & 131071LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 8191LL), 4)) | (JreURShift64(block1, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 43)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 26)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 9)) & 131071LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 511LL), 8)) | (JreURShift64(block2, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 39)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 22)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 5)) & 131071LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 31LL), 12)) | (JreURShift64(block3, 52)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 35)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 18)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 1)) & 131071LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 1LL), 16)) | (JreURShift64(block4, 48)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 31)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 14)) & 131071LL);
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block4 & 16383LL), 3)) | (JreURShift64(block5, 61)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 44)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 27)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 10)) & 131071LL);
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block5 & 1023LL), 7)) | (JreURShift64(block6, 57)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 40)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 23)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 6)) & 131071LL);
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block6 & 63LL), 11)) | (JreURShift64(block7, 53)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 36)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 19)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 2)) & 131071LL);
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block7 & 3LL), 15)) | (JreURShift64(block8, 49)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 32)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 15)) & 131071LL);
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block8 & 32767LL), 2)) | (JreURShift64(block9, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 45)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 28)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 11)) & 131071LL);
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block9 & 2047LL), 6)) | (JreURShift64(block10, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 41)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 24)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 7)) & 131071LL);
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block10 & 127LL), 10)) | (JreURShift64(block11, 54)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 37)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 20)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 3)) & 131071LL);
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block11 & 7LL), 14)) | (JreURShift64(block12, 50)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 33)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 16)) & 131071LL);
    jlong block13 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block12 & 65535LL), 1)) | (JreURShift64(block13, 63)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 46)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 29)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 12)) & 131071LL);
    jlong block14 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block13 & 4095LL), 5)) | (JreURShift64(block14, 59)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 42)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 25)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 8)) & 131071LL);
    jlong block15 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block14 & 255LL), 9)) | (JreURShift64(block15, 55)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block15, 38)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block15, 21)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block15, 4)) & 131071LL);
    jlong block16 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block15 & 15LL), 13)) | (JreURShift64(block16, 51)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block16, 34)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block16, 17)) & 131071LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block16 & 131071LL);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jint byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jint byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 9)) | (JreLShift32(byte1, 1)) | (JreURShift32(byte2, 7));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 127), 10)) | (JreLShift32(byte3, 2)) | (JreURShift32(byte4, 6));
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte4 & 63), 11)) | (JreLShift32(byte5, 3)) | (JreURShift32(byte6, 5));
    jint byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte6 & 31), 12)) | (JreLShift32(byte7, 4)) | (JreURShift32(byte8, 4));
    jint byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte8 & 15), 13)) | (JreLShift32(byte9, 5)) | (JreURShift32(byte10, 3));
    jint byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte10 & 7), 14)) | (JreLShift32(byte11, 6)) | (JreURShift32(byte12, 2));
    jint byte13 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte14 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte12 & 3), 15)) | (JreLShift32(byte13, 7)) | (JreURShift32(byte14, 1));
    jint byte15 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte16 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte14 & 1), 16)) | (JreLShift32(byte15, 8)) | byte16;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 47);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 30)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 13)) & 131071LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 8191LL), 4)) | (JreURShift64(block1, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 43)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 26)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 9)) & 131071LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 511LL), 8)) | (JreURShift64(block2, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 39)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 22)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 5)) & 131071LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 31LL), 12)) | (JreURShift64(block3, 52));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 35)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 18)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 1)) & 131071LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 1LL), 16)) | (JreURShift64(block4, 48));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 31)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 14)) & 131071LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 16383LL), 3)) | (JreURShift64(block5, 61));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 44)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 27)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 10)) & 131071LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 1023LL), 7)) | (JreURShift64(block6, 57));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 40)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 23)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 6)) & 131071LL;
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block6 & 63LL), 11)) | (JreURShift64(block7, 53));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 36)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 19)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 2)) & 131071LL;
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block7 & 3LL), 15)) | (JreURShift64(block8, 49));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 32)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 15)) & 131071LL;
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block8 & 32767LL), 2)) | (JreURShift64(block9, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 45)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 28)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 11)) & 131071LL;
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block9 & 2047LL), 6)) | (JreURShift64(block10, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 41)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 24)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 7)) & 131071LL;
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block10 & 127LL), 10)) | (JreURShift64(block11, 54));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 37)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 20)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 3)) & 131071LL;
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block11 & 7LL), 14)) | (JreURShift64(block12, 50));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 33)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 16)) & 131071LL;
    jlong block13 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block12 & 65535LL), 1)) | (JreURShift64(block13, 63));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 46)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 29)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 12)) & 131071LL;
    jlong block14 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block13 & 4095LL), 5)) | (JreURShift64(block14, 59));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 42)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 25)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 8)) & 131071LL;
    jlong block15 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block14 & 255LL), 9)) | (JreURShift64(block15, 55));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block15, 38)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block15, 21)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block15, 4)) & 131071LL;
    jlong block16 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block15 & 15LL), 13)) | (JreURShift64(block16, 51));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block16, 34)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block16, 17)) & 131071LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block16 & 131071LL;
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jlong byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 9)) | (JreLShift64(byte1, 1)) | (JreURShift64(byte2, 7));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 127), 10)) | (JreLShift64(byte3, 2)) | (JreURShift64(byte4, 6));
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte4 & 63), 11)) | (JreLShift64(byte5, 3)) | (JreURShift64(byte6, 5));
    jlong byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte6 & 31), 12)) | (JreLShift64(byte7, 4)) | (JreURShift64(byte8, 4));
    jlong byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte8 & 15), 13)) | (JreLShift64(byte9, 5)) | (JreURShift64(byte10, 3));
    jlong byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte10 & 7), 14)) | (JreLShift64(byte11, 6)) | (JreURShift64(byte12, 2));
    jlong byte13 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte14 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte12 & 3), 15)) | (JreLShift64(byte13, 7)) | (JreURShift64(byte14, 1));
    jlong byte15 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte16 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte14 & 1), 16)) | (JreLShift64(byte15, 8)) | byte16;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(decodeWithLongArray:withInt:withIntArray:withInt:withInt:);
  methods[2].selector = @selector(decodeWithByteArray:withInt:withIntArray:withInt:withInt:);
  methods[3].selector = @selector(decodeWithLongArray:withInt:withLongArray:withInt:withInt:);
  methods[4].selector = @selector(decodeWithByteArray:withInt:withLongArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "decode", "[JI[III", "[BI[III", "[JI[JII", "[BI[JII" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked17 = { "BulkOperationPacked17", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x10, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked17;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked17_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked17 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initPackagePrivateWithInt_(self, 17);
}

OrgApacheLuceneUtilPackedBulkOperationPacked17 *new_OrgApacheLuceneUtilPackedBulkOperationPacked17_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked17, initPackagePrivate)
}

OrgApacheLuceneUtilPackedBulkOperationPacked17 *create_OrgApacheLuceneUtilPackedBulkOperationPacked17_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked17, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked17)
