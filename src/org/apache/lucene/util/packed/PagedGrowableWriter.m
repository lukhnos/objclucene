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
  return [new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(bitsPerValue, valueCount, acceptableOverheadRatio_) autorelease];
}

- (OrgApacheLuceneUtilPackedPagedGrowableWriter *)newUnfilledCopyWithLong:(jlong)newSize {
  return [new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(newSize, [self pageSize], bitsPerValue_, acceptableOverheadRatio_, NO) autorelease];
}

- (jlong)baseRamBytesUsed {
  return [super baseRamBytesUsed] + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withInt:withInt:withFloat:", "PagedGrowableWriter", NULL, 0x1, NULL, NULL },
    { "initWithLong:withInt:withInt:withFloat:withBoolean:", "PagedGrowableWriter", NULL, 0x0, NULL, NULL },
    { "newMutableWithInt:withInt:", "newMutable", "Lorg.apache.lucene.util.packed.PackedInts$Mutable;", 0x4, NULL, NULL },
    { "newUnfilledCopyWithLong:", "newUnfilledCopy", "Lorg.apache.lucene.util.packed.PagedGrowableWriter;", 0x4, NULL, NULL },
    { "baseRamBytesUsed", NULL, "J", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "acceptableOverheadRatio_", NULL, 0x10, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.packed.PagedGrowableWriter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPagedGrowableWriter = { 2, "PagedGrowableWriter", "org.apache.lucene.util.packed", NULL, 0x11, 5, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/packed/AbstractPagedMutable<Lorg/apache/lucene/util/packed/PagedGrowableWriter;>;" };
  return &_OrgApacheLuceneUtilPackedPagedGrowableWriter;
}

@end

void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio, YES);
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter *self = [OrgApacheLuceneUtilPackedPagedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio);
  return self;
}

void OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(OrgApacheLuceneUtilPackedPagedGrowableWriter *self, jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) {
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, startBitsPerValue, size, pageSize);
  self->acceptableOverheadRatio_ = acceptableOverheadRatio;
  if (fillPages) {
    [self fillPages];
  }
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(jlong size, jint pageSize, jint startBitsPerValue, jfloat acceptableOverheadRatio, jboolean fillPages) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter *self = [OrgApacheLuceneUtilPackedPagedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_withBoolean_(self, size, pageSize, startBitsPerValue, acceptableOverheadRatio, fillPages);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPagedGrowableWriter)
