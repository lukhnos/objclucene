//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked10.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked10.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPacked10 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked10

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilPackedBulkOperationPacked10_initPackagePrivate(self);
  return self;
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 54));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 44)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 34)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 24)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 14)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 4)) & 1023LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 15LL), 6)) | (JreURShift64(block1, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 48)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 38)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 28)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 18)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 8)) & 1023LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 255LL), 2)) | (JreURShift64(block2, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 52)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 42)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 32)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 22)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 12)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 2)) & 1023LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 3LL), 8)) | (JreURShift64(block3, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 46)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 36)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 26)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 16)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 6)) & 1023LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 63LL), 4)) | (JreURShift64(block4, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 50)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 40)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 30)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 20)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 10)) & 1023LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block4 & 1023LL);
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
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 2)) | (JreURShift32(byte1, 6));
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte1 & 63), 4)) | (JreURShift32(byte2, 4));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 15), 6)) | (JreURShift32(byte3, 2));
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte3 & 3), 8)) | byte4;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 54);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 44)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 34)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 24)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 14)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 4)) & 1023LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 15LL), 6)) | (JreURShift64(block1, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 48)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 38)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 28)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 18)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 8)) & 1023LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 255LL), 2)) | (JreURShift64(block2, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 52)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 42)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 32)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 22)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 12)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 2)) & 1023LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 3LL), 8)) | (JreURShift64(block3, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 46)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 36)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 26)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 16)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 6)) & 1023LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 63LL), 4)) | (JreURShift64(block4, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 50)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 40)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 30)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 20)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 10)) & 1023LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block4 & 1023LL;
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
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 2)) | (JreURShift64(byte1, 6));
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte1 & 63), 4)) | (JreURShift64(byte2, 4));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 15), 6)) | (JreURShift64(byte3, 2));
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte3 & 3), 8)) | byte4;
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
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked10 = { "BulkOperationPacked10", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x10, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked10;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked10_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked10 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initPackagePrivateWithInt_(self, 10);
}

OrgApacheLuceneUtilPackedBulkOperationPacked10 *new_OrgApacheLuceneUtilPackedBulkOperationPacked10_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked10, initPackagePrivate)
}

OrgApacheLuceneUtilPackedBulkOperationPacked10 *create_OrgApacheLuceneUtilPackedBulkOperationPacked10_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked10, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked10)
