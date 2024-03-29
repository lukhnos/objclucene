//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked13.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked13.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPacked13 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked13

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilPackedBulkOperationPacked13_initPackagePrivate(self);
  return self;
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 51));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 38)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 25)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 12)) & 8191LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 4095LL), 1)) | (JreURShift64(block1, 63)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 50)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 37)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 24)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 11)) & 8191LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 2047LL), 2)) | (JreURShift64(block2, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 49)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 36)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 23)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 10)) & 8191LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 1023LL), 3)) | (JreURShift64(block3, 61)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 48)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 35)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 22)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 9)) & 8191LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 511LL), 4)) | (JreURShift64(block4, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 47)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 34)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 21)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 8)) & 8191LL);
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block4 & 255LL), 5)) | (JreURShift64(block5, 59)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 46)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 33)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 20)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 7)) & 8191LL);
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block5 & 127LL), 6)) | (JreURShift64(block6, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 45)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 32)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 19)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 6)) & 8191LL);
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block6 & 63LL), 7)) | (JreURShift64(block7, 57)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 44)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 31)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 18)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 5)) & 8191LL);
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block7 & 31LL), 8)) | (JreURShift64(block8, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 43)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 30)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 17)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 4)) & 8191LL);
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block8 & 15LL), 9)) | (JreURShift64(block9, 55)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 42)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 29)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 16)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 3)) & 8191LL);
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block9 & 7LL), 10)) | (JreURShift64(block10, 54)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 41)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 28)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 15)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 2)) & 8191LL);
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block10 & 3LL), 11)) | (JreURShift64(block11, 53)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 40)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 27)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 14)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 1)) & 8191LL);
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block11 & 1LL), 12)) | (JreURShift64(block12, 52)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 39)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 26)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 13)) & 8191LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block12 & 8191LL);
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
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 5)) | (JreURShift32(byte1, 3));
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte1 & 7), 10)) | (JreLShift32(byte2, 2)) | (JreURShift32(byte3, 6));
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte3 & 63), 7)) | (JreURShift32(byte4, 1));
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte4 & 1), 12)) | (JreLShift32(byte5, 4)) | (JreURShift32(byte6, 4));
    jint byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte6 & 15), 9)) | (JreLShift32(byte7, 1)) | (JreURShift32(byte8, 7));
    jint byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte8 & 127), 6)) | (JreURShift32(byte9, 2));
    jint byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte9 & 3), 11)) | (JreLShift32(byte10, 3)) | (JreURShift32(byte11, 5));
    jint byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte11 & 31), 8)) | byte12;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 51);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 38)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 25)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 12)) & 8191LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 4095LL), 1)) | (JreURShift64(block1, 63));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 50)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 37)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 24)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 11)) & 8191LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 2047LL), 2)) | (JreURShift64(block2, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 49)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 36)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 23)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 10)) & 8191LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 1023LL), 3)) | (JreURShift64(block3, 61));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 48)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 35)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 22)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 9)) & 8191LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 511LL), 4)) | (JreURShift64(block4, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 47)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 34)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 21)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 8)) & 8191LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 255LL), 5)) | (JreURShift64(block5, 59));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 46)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 33)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 20)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 7)) & 8191LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 127LL), 6)) | (JreURShift64(block6, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 45)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 32)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 19)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 6)) & 8191LL;
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block6 & 63LL), 7)) | (JreURShift64(block7, 57));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 44)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 31)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 18)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 5)) & 8191LL;
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block7 & 31LL), 8)) | (JreURShift64(block8, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 43)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 30)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 17)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 4)) & 8191LL;
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block8 & 15LL), 9)) | (JreURShift64(block9, 55));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 42)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 29)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 16)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 3)) & 8191LL;
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block9 & 7LL), 10)) | (JreURShift64(block10, 54));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 41)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 28)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 15)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 2)) & 8191LL;
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block10 & 3LL), 11)) | (JreURShift64(block11, 53));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 40)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 27)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 14)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 1)) & 8191LL;
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block11 & 1LL), 12)) | (JreURShift64(block12, 52));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 39)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 26)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 13)) & 8191LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block12 & 8191LL;
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
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 5)) | (JreURShift64(byte1, 3));
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte1 & 7), 10)) | (JreLShift64(byte2, 2)) | (JreURShift64(byte3, 6));
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte3 & 63), 7)) | (JreURShift64(byte4, 1));
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte4 & 1), 12)) | (JreLShift64(byte5, 4)) | (JreURShift64(byte6, 4));
    jlong byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte6 & 15), 9)) | (JreLShift64(byte7, 1)) | (JreURShift64(byte8, 7));
    jlong byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte8 & 127), 6)) | (JreURShift64(byte9, 2));
    jlong byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte9 & 3), 11)) | (JreLShift64(byte10, 3)) | (JreURShift64(byte11, 5));
    jlong byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte11 & 31), 8)) | byte12;
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
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked13 = { "BulkOperationPacked13", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x10, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked13;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked13_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked13 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initPackagePrivateWithInt_(self, 13);
}

OrgApacheLuceneUtilPackedBulkOperationPacked13 *new_OrgApacheLuceneUtilPackedBulkOperationPacked13_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked13, initPackagePrivate)
}

OrgApacheLuceneUtilPackedBulkOperationPacked13 *create_OrgApacheLuceneUtilPackedBulkOperationPacked13_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked13, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked13)
