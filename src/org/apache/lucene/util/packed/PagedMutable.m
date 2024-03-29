//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PagedMutable.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/AbstractPagedMutable.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PagedMutable.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/PagedMutable must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgApacheLuceneUtilPackedPagedMutable

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)bitsPerValue
                   withFloat:(jfloat)acceptableOverheadRatio {
  OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withFloat_(self, size, pageSize, bitsPerValue, acceptableOverheadRatio);
  return self;
}

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits:(OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *)formatAndBits {
  OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_(self, size, pageSize, formatAndBits);
  return self;
}

- (instancetype)initWithLong:(jlong)size
                     withInt:(jint)pageSize
                     withInt:(jint)bitsPerValue
withOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format {
  OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(self, size, pageSize, bitsPerValue, format);
  return self;
}

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue {
  JreAssert(self->bitsPerValue_ >= bitsPerValue, @"org/apache/lucene/util/packed/PagedMutable.java:57 condition failed: assert this.bitsPerValue >= bitsPerValue;");
  return OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(valueCount, self->bitsPerValue_, format_);
}

- (OrgApacheLuceneUtilPackedPagedMutable *)newUnfilledCopyWithLong:(jlong)newSize {
  return create_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(newSize, [self pageSize], bitsPerValue_, format_);
}

- (jlong)baseRamBytesUsed {
  return [super baseRamBytesUsed] + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF);
}

- (void)dealloc {
  RELEASE_(format_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Mutable;", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPagedMutable;", 0x4, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:withInt:withInt:withFloat:);
  methods[1].selector = @selector(initWithLong:withInt:withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits:);
  methods[2].selector = @selector(initWithLong:withInt:withInt:withOrgApacheLuceneUtilPackedPackedInts_Format:);
  methods[3].selector = @selector(newMutableWithInt:withInt:);
  methods[4].selector = @selector(newUnfilledCopyWithLong:);
  methods[5].selector = @selector(baseRamBytesUsed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "format_", "LOrgApacheLuceneUtilPackedPackedInts_Format;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JIIF", "JILOrgApacheLuceneUtilPackedPackedInts_FormatAndBits;", "JIILOrgApacheLuceneUtilPackedPackedInts_Format;", "newMutable", "II", "newUnfilledCopy", "J", "Lorg/apache/lucene/util/packed/AbstractPagedMutable<Lorg/apache/lucene/util/packed/PagedMutable;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPagedMutable = { "PagedMutable", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x11, 6, 1, -1, -1, -1, 7, -1 };
  return &_OrgApacheLuceneUtilPackedPagedMutable;
}

@end

void OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withFloat_(OrgApacheLuceneUtilPackedPagedMutable *self, jlong size, jint pageSize, jint bitsPerValue, jfloat acceptableOverheadRatio) {
  OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_(self, size, pageSize, OrgApacheLuceneUtilPackedPackedInts_fastestFormatAndBitsWithInt_withInt_withFloat_(pageSize, bitsPerValue, acceptableOverheadRatio));
  [self fillPages];
}

OrgApacheLuceneUtilPackedPagedMutable *new_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint bitsPerValue, jfloat acceptableOverheadRatio) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withInt_withFloat_, size, pageSize, bitsPerValue, acceptableOverheadRatio)
}

OrgApacheLuceneUtilPackedPagedMutable *create_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withFloat_(jlong size, jint pageSize, jint bitsPerValue, jfloat acceptableOverheadRatio) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withInt_withFloat_, size, pageSize, bitsPerValue, acceptableOverheadRatio)
}

void OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_(OrgApacheLuceneUtilPackedPagedMutable *self, jlong size, jint pageSize, OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *formatAndBits) {
  OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(self, size, pageSize, ((OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *) nil_chk(formatAndBits))->bitsPerValue_, formatAndBits->format_);
}

OrgApacheLuceneUtilPackedPagedMutable *new_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_(jlong size, jint pageSize, OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *formatAndBits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_, size, pageSize, formatAndBits)
}

OrgApacheLuceneUtilPackedPagedMutable *create_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_(jlong size, jint pageSize, OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *formatAndBits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatAndBits_, size, pageSize, formatAndBits)
}

void OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(OrgApacheLuceneUtilPackedPagedMutable *self, jlong size, jint pageSize, jint bitsPerValue, OrgApacheLuceneUtilPackedPackedInts_Format *format) {
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initPackagePrivateWithInt_withLong_withInt_(self, bitsPerValue, size, pageSize);
  JreStrongAssign(&self->format_, format);
}

OrgApacheLuceneUtilPackedPagedMutable *new_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(jlong size, jint pageSize, jint bitsPerValue, OrgApacheLuceneUtilPackedPackedInts_Format *format) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_, size, pageSize, bitsPerValue, format)
}

OrgApacheLuceneUtilPackedPagedMutable *create_OrgApacheLuceneUtilPackedPagedMutable_initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_(jlong size, jint pageSize, jint bitsPerValue, OrgApacheLuceneUtilPackedPackedInts_Format *format) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPagedMutable, initWithLong_withInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_Format_, size, pageSize, bitsPerValue, format)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPagedMutable)
