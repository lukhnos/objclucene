//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PagedGrowableWriter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/AbstractPagedMutable.h"
#include "org/apache/lucene/util/packed/GrowableWriter.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PagedGrowableWriter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/PagedGrowableWriter must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgApacheLuceneUtilPackedPagedGrowableWriter

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)startBitsPerValue
                   withFloat:(jfloat)acceptableOverheadRatio {
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio);
  return self;
}

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)startBitsPerValue
                   withFloat:(jfloat)acceptableOverheadRatio
                 withBoolean:(jboolean)fillPages {
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio, fillPages);
  return self;
}

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue {
  return create_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(bitsPerValue, valueCount, acceptableOverheadRatio_);
}

- (OrgApacheLuceneUtilPackedPagedGrowableWriter *)newUnfilledCopyWithLong:(jlong)newSize {
  return create_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(newSize, [self pageSize], bitsPerValue_, acceptableOverheadRatio_, false);
}

- (jlong)baseRamBytesUsed {
  return [super baseRamBytesUsed] + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Mutable;", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPagedGrowableWriter;", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:withInt:withInt:withFloat:);
  methods[1].selector = @selector(initWithLong:withInt:withInt:withFloat:withBoolean:);
  methods[2].selector = @selector(newMutableWithInt:withInt:);
  methods[3].selector = @selector(newUnfilledCopyWithLong:);
  methods[4].selector = @selector(baseRamBytesUsed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "acceptableOverheadRatio_", "F", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JIIF", "JIIFZ", "newMutable", "II", "newUnfilledCopy", "J", "Lorg/apache/lucene/util/packed/AbstractPagedMutable<Lorg/apache/lucene/util/packed/PagedGrowableWriter;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPagedGrowableWriter = { "PagedGrowableWriter", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x11, 5, 1, -1, -1, -1, 6, -1 };
  return &_OrgApacheLuceneUtilPackedPagedGrowableWriter;
}

@end

void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio, true);
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPagedGrowableWriter, initWithLong_withInt_withInt_withFloat_, size, pageSize, startBitsPerValue, acceptableOverheadRatio)
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *create_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPagedGrowableWriter, initWithLong_withInt_withInt_withFloat_, size, pageSize, startBitsPerValue, acceptableOverheadRatio)
}

void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) {
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initPackagePrivateWithInt_withLong_withInt_(self, startBitsPerValue, size, pageSize);
  self->acceptableOverheadRatio_ = acceptableOverheadRatio;
  if (fillPages) {
    [self fillPages];
  }
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPagedGrowableWriter, initWithLong_withInt_withInt_withFloat_withBoolean_, size, pageSize, startBitsPerValue, acceptableOverheadRatio, fillPages)
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *create_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPagedGrowableWriter, initWithLong_withInt_withInt_withFloat_withBoolean_, size, pageSize, startBitsPerValue, acceptableOverheadRatio, fillPages)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPagedGrowableWriter)
