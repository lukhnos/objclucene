//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked16.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked16.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPacked16 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked16

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilPackedBulkOperationPacked16_initPackagePrivate(self);
  return self;
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    for (jint shift = 48; shift >= 0; shift -= 16) {
      *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) ((JreURShift64(block, shift)) & 65535);
    }
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint j = 0; j < iterations; ++j) {
    jint unseq$1 = blocksOffset++;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32((IOSByteArray_Get(nil_chk(blocks), unseq$1) & (jint) 0xFF), 8)) | (IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF);
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    for (jint shift = 48; shift >= 0; shift -= 16) {
      *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreURShift64(block, shift)) & 65535;
    }
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint j = 0; j < iterations; ++j) {
    jint unseq$1 = blocksOffset++;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64((IOSByteArray_Get(nil_chk(blocks), unseq$1) & (jlong) 0xFFLL), 8)) | (IOSByteArray_Get(blocks, blocksOffset++) & (jlong) 0xFFLL);
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
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked16 = { "BulkOperationPacked16", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x10, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked16;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked16_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked16 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initPackagePrivateWithInt_(self, 16);
}

OrgApacheLuceneUtilPackedBulkOperationPacked16 *new_OrgApacheLuceneUtilPackedBulkOperationPacked16_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked16, initPackagePrivate)
}

OrgApacheLuceneUtilPackedBulkOperationPacked16 *create_OrgApacheLuceneUtilPackedBulkOperationPacked16_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked16, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked16)
