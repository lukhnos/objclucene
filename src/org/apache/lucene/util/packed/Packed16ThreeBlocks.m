//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/Packed16ThreeBlocks.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Packed16ThreeBlocks.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@implementation OrgApacheLuceneUtilPackedPacked16ThreeBlocks

- (instancetype)initWithInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(self, valueCount);
  return self;
}

- (instancetype)initWithInt:(jint)packedIntsVersion
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                    withInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(self, packedIntsVersion, inArg, valueCount);
  return self;
}

- (jlong)getWithInt:(jint)index {
  jint o = index * 3;
  return (JreLShift64((IOSShortArray_Get(nil_chk(blocks_), o) & (jlong) 0xFFFFLL), 32)) | (JreLShift64((IOSShortArray_Get(blocks_, o + 1) & (jlong) 0xFFFFLL), 16)) | (IOSShortArray_Get(blocks_, o + 2) & (jlong) 0xFFFFLL);
}

- (jint)getWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert((len > 0), (JreStrcat("$IC", @"len must be > 0 (got ", len, ')')));
  JreAssert((index >= 0 && index < valueCount_), (@"org/apache/lucene/util/packed/Packed16ThreeBlocks.java:66 condition failed: assert index >= 0 && index < valueCount;"));
  JreAssert((off + len <= ((IOSLongArray *) nil_chk(arr))->size_), (@"org/apache/lucene/util/packed/Packed16ThreeBlocks.java:67 condition failed: assert off + len <= arr.length;"));
  jint gets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  for (jint i = index * 3, end = (index + gets) * 3; i < end; i += 3) {
    *IOSLongArray_GetRef(arr, off++) = (JreLShift64((IOSShortArray_Get(nil_chk(blocks_), i) & (jlong) 0xFFFFLL), 32)) | (JreLShift64((IOSShortArray_Get(blocks_, i + 1) & (jlong) 0xFFFFLL), 16)) | (IOSShortArray_Get(blocks_, i + 2) & (jlong) 0xFFFFLL);
  }
  return gets;
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  jint o = index * 3;
  *IOSShortArray_GetRef(nil_chk(blocks_), o) = (jshort) (JreURShift64(value, 32));
  *IOSShortArray_GetRef(blocks_, o + 1) = (jshort) (JreURShift64(value, 16));
  *IOSShortArray_GetRef(blocks_, o + 2) = (jshort) value;
}

- (jint)setWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert((len > 0), (JreStrcat("$IC", @"len must be > 0 (got ", len, ')')));
  JreAssert((index >= 0 && index < valueCount_), (@"org/apache/lucene/util/packed/Packed16ThreeBlocks.java:87 condition failed: assert index >= 0 && index < valueCount;"));
  JreAssert((off + len <= ((IOSLongArray *) nil_chk(arr))->size_), (@"org/apache/lucene/util/packed/Packed16ThreeBlocks.java:88 condition failed: assert off + len <= arr.length;"));
  jint sets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  for (jint i = off, o = index * 3, end = off + sets; i < end; ++i) {
    jlong value = IOSLongArray_Get(arr, i);
    *IOSShortArray_GetRef(nil_chk(blocks_), o++) = (jshort) (JreURShift64(value, 32));
    *IOSShortArray_GetRef(blocks_, o++) = (jshort) (JreURShift64(value, 16));
    *IOSShortArray_GetRef(blocks_, o++) = (jshort) value;
  }
  return sets;
}

- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
           withLong:(jlong)val {
  jshort block1 = (jshort) (JreURShift64(val, 32));
  jshort block2 = (jshort) (JreURShift64(val, 16));
  jshort block3 = (jshort) val;
  for (jint i = fromIndex * 3, end = toIndex * 3; i < end; i += 3) {
    *IOSShortArray_GetRef(nil_chk(blocks_), i) = block1;
    *IOSShortArray_GetRef(blocks_, i + 1) = block2;
    *IOSShortArray_GetRef(blocks_, i + 2) = block3;
  }
}

- (void)clear {
  JavaUtilArrays_fillWithShortArray_withShort_(blocks_, (jshort) 0);
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_)) + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(blocks_);
}

- (NSString *)description {
  return JreStrcat("$$I$I$IC", [[self getClass] getSimpleName], @"(bitsPerValue=", bitsPerValue_, @",size=", [self size], @",blocks=", ((IOSShortArray *) nil_chk(blocks_))->size_, ')');
}

- (void)dealloc {
  RELEASE_(blocks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "Packed16ThreeBlocks", NULL, 0x0, NULL, NULL },
    { "initWithInt:withOrgApacheLuceneStoreDataInput:withInt:", "Packed16ThreeBlocks", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "getWithInt:withLongArray:withInt:withInt:", "get", "I", 0x1, NULL, NULL },
    { "setWithInt:withLong:", "set", "V", 0x1, NULL, NULL },
    { "setWithInt:withLongArray:withInt:withInt:", "set", "I", 0x1, NULL, NULL },
    { "fillWithInt:withInt:withLong:", "fill", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "blocks_", NULL, 0x10, "[S", NULL, NULL, .constantValue.asLong = 0 },
    { "MAX_SIZE", "MAX_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedPacked16ThreeBlocks_MAX_SIZE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPacked16ThreeBlocks = { 2, "Packed16ThreeBlocks", "org.apache.lucene.util.packed", NULL, 0x10, 10, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedPacked16ThreeBlocks;
}

@end

void OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(OrgApacheLuceneUtilPackedPacked16ThreeBlocks *self, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(self, valueCount, 48);
  if (valueCount > OrgApacheLuceneUtilPackedPacked16ThreeBlocks_MAX_SIZE) {
    @throw [new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(@"MAX_SIZE exceeded") autorelease];
  }
  JreStrongAssignAndConsume(&self->blocks_, [IOSShortArray newArrayWithLength:valueCount * 3]);
}

OrgApacheLuceneUtilPackedPacked16ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(jint valueCount) {
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks *self = [OrgApacheLuceneUtilPackedPacked16ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(self, valueCount);
  return self;
}

void OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPacked16ThreeBlocks *self, jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(self, valueCount);
  for (jint i = 0; i < 3 * valueCount; ++i) {
    *IOSShortArray_GetRef(nil_chk(self->blocks_), i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readShort];
  }
  jint remaining = (jint) ([((OrgApacheLuceneUtilPackedPackedInts_FormatEnum *) nil_chk(JreLoadStatic(OrgApacheLuceneUtilPackedPackedInts_FormatEnum, PACKED))) byteCountWithInt:packedIntsVersion withInt:valueCount withInt:48] - 3LL * valueCount * 2);
  for (jint i = 0; i < remaining; ++i) {
    [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readByte];
  }
}

OrgApacheLuceneUtilPackedPacked16ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks *self = [OrgApacheLuceneUtilPackedPacked16ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(self, packedIntsVersion, inArg, valueCount);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPacked16ThreeBlocks)
