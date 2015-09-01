//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/LongBitSet.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/LongBitSet.h"

@interface OrgApacheLuceneUtilLongBitSet () {
 @public
  IOSLongArray *bits_;
  jlong numBits_;
  jint numWords_;
}

- (jboolean)verifyGhostBitsClear;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilLongBitSet, bits_, IOSLongArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilLongBitSet_verifyGhostBitsClear(OrgApacheLuceneUtilLongBitSet *self);

@implementation OrgApacheLuceneUtilLongBitSet

+ (jint)bits2wordsWithLong:(jlong)numBits {
  return OrgApacheLuceneUtilLongBitSet_bits2wordsWithLong_(numBits);
}

- (instancetype)initWithLong:(jlong)numBits {
  OrgApacheLuceneUtilLongBitSet_initWithLong_(self, numBits);
  return self;
}

- (instancetype)initWithLongArray:(IOSLongArray *)storedBits
                         withLong:(jlong)numBits {
  OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(self, storedBits, numBits);
  return self;
}

- (jboolean)verifyGhostBitsClear {
  return OrgApacheLuceneUtilLongBitSet_verifyGhostBitsClear(self);
}

- (jlong)cardinality {
  return OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(bits_, 0, numWords_);
}

- (jboolean)getWithLong:(jlong)index {
  JreAssert((index >= 0 && index < numBits_), (JreStrcat("$J$J", @"index=", index, @", numBits=", numBits_)));
  jint i = (jint) (JreRShift64(index, 6));
  jlong bitmask = JreLShift64(1LL, index);
  return (IOSLongArray_Get(nil_chk(bits_), i) & bitmask) != 0;
}

- (void)setWithLong:(jlong)index {
  JreAssert((index >= 0 && index < numBits_), (JreStrcat("$J$J", @"index=", index, @" numBits=", numBits_)));
  jint wordNum = (jint) (JreRShift64(index, 6));
  jlong bitmask = JreLShift64(1LL, index);
  *IOSLongArray_GetRef(nil_chk(bits_), wordNum) |= bitmask;
}

- (OrgApacheLuceneUtilLongBitSet *)clone {
  IOSLongArray *bits = [IOSLongArray arrayWithLength:((IOSLongArray *) nil_chk(self->bits_))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->bits_, 0, bits, 0, numWords_);
  return [new_OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(bits, numBits_) autorelease];
}

- (jboolean)isEqual:(id)o {
  if (self == o) {
    return YES;
  }
  if (!([o isKindOfClass:[OrgApacheLuceneUtilLongBitSet class]])) {
    return NO;
  }
  OrgApacheLuceneUtilLongBitSet *other = (OrgApacheLuceneUtilLongBitSet *) check_class_cast(o, [OrgApacheLuceneUtilLongBitSet class]);
  if (numBits_ != ((OrgApacheLuceneUtilLongBitSet *) nil_chk(other))->numBits_) {
    return NO;
  }
  return JavaUtilArrays_equalsWithLongArray_withLongArray_(bits_, other->bits_);
}

- (NSUInteger)hash {
  jlong h = 0;
  for (jint i = numWords_; --i >= 0; ) {
    h ^= IOSLongArray_Get(nil_chk(bits_), i);
    h = (JreLShift64(h, 1)) | (JreURShift64(h, 63));
  }
  return (jint) ((JreRShift64(h, 32)) ^ h) + (jint) 0x98761234;
}

- (void)dealloc {
  RELEASE_(bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "bits2wordsWithLong:", "bits2words", "I", 0x9, NULL, NULL },
    { "initWithLong:", "LongBitSet", NULL, 0x1, NULL, NULL },
    { "initWithLongArray:withLong:", "LongBitSet", NULL, 0x1, NULL, NULL },
    { "verifyGhostBitsClear", NULL, "Z", 0x2, NULL, NULL },
    { "cardinality", NULL, "J", 0x1, NULL, NULL },
    { "getWithLong:", "get", "Z", 0x1, NULL, NULL },
    { "setWithLong:", "set", "V", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.util.LongBitSet;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bits_", NULL, 0x12, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "numBits_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "numWords_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilLongBitSet = { 2, "LongBitSet", "org.apache.lucene.util", NULL, 0x11, 10, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilLongBitSet;
}

@end

jint OrgApacheLuceneUtilLongBitSet_bits2wordsWithLong_(jlong numBits) {
  OrgApacheLuceneUtilLongBitSet_initialize();
  return (jint) (JreRShift64((numBits - 1), 6)) + 1;
}

void OrgApacheLuceneUtilLongBitSet_initWithLong_(OrgApacheLuceneUtilLongBitSet *self, jlong numBits) {
  NSObject_init(self);
  self->numBits_ = numBits;
  JreStrongAssignAndConsume(&self->bits_, [IOSLongArray newArrayWithLength:OrgApacheLuceneUtilLongBitSet_bits2wordsWithLong_(numBits)]);
  self->numWords_ = self->bits_->size_;
}

OrgApacheLuceneUtilLongBitSet *new_OrgApacheLuceneUtilLongBitSet_initWithLong_(jlong numBits) {
  OrgApacheLuceneUtilLongBitSet *self = [OrgApacheLuceneUtilLongBitSet alloc];
  OrgApacheLuceneUtilLongBitSet_initWithLong_(self, numBits);
  return self;
}

void OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(OrgApacheLuceneUtilLongBitSet *self, IOSLongArray *storedBits, jlong numBits) {
  NSObject_init(self);
  self->numWords_ = OrgApacheLuceneUtilLongBitSet_bits2wordsWithLong_(numBits);
  if (self->numWords_ > ((IOSLongArray *) nil_chk(storedBits))->size_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J$", @"The given long array is too small  to hold ", numBits, @" bits")) autorelease];
  }
  self->numBits_ = numBits;
  JreStrongAssign(&self->bits_, storedBits);
  JreAssert((OrgApacheLuceneUtilLongBitSet_verifyGhostBitsClear(self)), (@"org/apache/lucene/util/LongBitSet.java:90 condition failed: assert verifyGhostBitsClear();"));
}

OrgApacheLuceneUtilLongBitSet *new_OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(IOSLongArray *storedBits, jlong numBits) {
  OrgApacheLuceneUtilLongBitSet *self = [OrgApacheLuceneUtilLongBitSet alloc];
  OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(self, storedBits, numBits);
  return self;
}

jboolean OrgApacheLuceneUtilLongBitSet_verifyGhostBitsClear(OrgApacheLuceneUtilLongBitSet *self) {
  for (jint i = self->numWords_; i < ((IOSLongArray *) nil_chk(self->bits_))->size_; i++) {
    if (IOSLongArray_Get(self->bits_, i) != 0) return NO;
  }
  if ((self->numBits_ & (jint) 0x3f) == 0) return YES;
  jlong mask = JreLShift64(-1LL, self->numBits_);
  return (IOSLongArray_Get(self->bits_, self->numWords_ - 1) & mask) == 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilLongBitSet)
