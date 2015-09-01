//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntBlockPool.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/IntBlockPool.h"

@interface OrgApacheLuceneUtilIntBlockPool () {
 @public
  jint bufferUpto_;
  OrgApacheLuceneUtilIntBlockPool_Allocator *allocator_;
}

- (jint)newSliceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

+ (jboolean)assertSliceBufferWithIntArray:(IOSIntArray *)buffer;

- (jint)allocSliceWithIntArray:(IOSIntArray *)slice
                       withInt:(jint)sliceOffset OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool, allocator_, OrgApacheLuceneUtilIntBlockPool_Allocator *)

static IOSIntArray *OrgApacheLuceneUtilIntBlockPool_NEXT_LEVEL_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, NEXT_LEVEL_ARRAY_, IOSIntArray *)

static IOSIntArray *OrgApacheLuceneUtilIntBlockPool_LEVEL_SIZE_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, LEVEL_SIZE_ARRAY_, IOSIntArray *)

static jint OrgApacheLuceneUtilIntBlockPool_FIRST_LEVEL_SIZE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, FIRST_LEVEL_SIZE_, jint)

__attribute__((unused)) static jint OrgApacheLuceneUtilIntBlockPool_newSliceWithInt_(OrgApacheLuceneUtilIntBlockPool *self, jint size);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilIntBlockPool_assertSliceBufferWithIntArray_(IOSIntArray *buffer);

__attribute__((unused)) static jint OrgApacheLuceneUtilIntBlockPool_allocSliceWithIntArray_withInt_(OrgApacheLuceneUtilIntBlockPool *self, IOSIntArray *slice, jint sliceOffset);

@interface OrgApacheLuceneUtilIntBlockPool_SliceWriter () {
 @public
  jint offset_;
  OrgApacheLuceneUtilIntBlockPool *pool_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool_SliceWriter, pool_, OrgApacheLuceneUtilIntBlockPool *)

@interface OrgApacheLuceneUtilIntBlockPool_SliceReader () {
 @public
  OrgApacheLuceneUtilIntBlockPool *pool_;
  jint upto_;
  jint bufferUpto_;
  jint bufferOffset_;
  IOSIntArray *buffer_;
  jint limit_;
  jint level_;
  jint end_;
}

- (void)nextSlice;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool_SliceReader, pool_, OrgApacheLuceneUtilIntBlockPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool_SliceReader, buffer_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilIntBlockPool_SliceReader_nextSlice(OrgApacheLuceneUtilIntBlockPool_SliceReader *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilIntBlockPool)

@implementation OrgApacheLuceneUtilIntBlockPool

- (instancetype)init {
  OrgApacheLuceneUtilIntBlockPool_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool_Allocator:(OrgApacheLuceneUtilIntBlockPool_Allocator *)allocator {
  OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(self, allocator);
  return self;
}

- (void)resetWithBoolean:(jboolean)zeroFillBuffers
             withBoolean:(jboolean)reuseFirst {
  if (bufferUpto_ != -1) {
    if (zeroFillBuffers) {
      for (jint i = 0; i < bufferUpto_; i++) {
        JavaUtilArrays_fillWithIntArray_withInt_(IOSObjectArray_Get(nil_chk(buffers_), i), 0);
      }
      JavaUtilArrays_fillWithIntArray_withInt_withInt_withInt_(IOSObjectArray_Get(nil_chk(buffers_), bufferUpto_), 0, intUpto_, 0);
    }
    if (bufferUpto_ > 0 || !reuseFirst) {
      jint offset = reuseFirst ? 1 : 0;
      [((OrgApacheLuceneUtilIntBlockPool_Allocator *) nil_chk(allocator_)) recycleIntBlocksWithIntArray2:buffers_ withInt:offset withInt:1 + bufferUpto_];
      JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(buffers_, offset, bufferUpto_ + 1, nil);
    }
    if (reuseFirst) {
      bufferUpto_ = 0;
      intUpto_ = 0;
      intOffset_ = 0;
      JreStrongAssign(&buffer_, IOSObjectArray_Get(nil_chk(buffers_), 0));
    }
    else {
      bufferUpto_ = -1;
      intUpto_ = OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
      intOffset_ = -OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
      JreStrongAssign(&buffer_, nil);
    }
  }
}

- (void)nextBuffer {
  if (1 + bufferUpto_ == ((IOSObjectArray *) nil_chk(buffers_))->size_) {
    IOSObjectArray *newBuffers = [IOSObjectArray arrayWithLength:JreFpToInt((buffers_->size_ * 1.5)) type:IOSClass_intArray(1)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffers_, 0, newBuffers, 0, buffers_->size_);
    JreStrongAssign(&buffers_, newBuffers);
  }
  JreStrongAssign(&buffer_, IOSObjectArray_Set(buffers_, 1 + bufferUpto_, [((OrgApacheLuceneUtilIntBlockPool_Allocator *) nil_chk(allocator_)) getIntBlock]));
  bufferUpto_++;
  intUpto_ = 0;
  intOffset_ += OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
}

- (jint)newSliceWithInt:(jint)size {
  return OrgApacheLuceneUtilIntBlockPool_newSliceWithInt_(self, size);
}

+ (jboolean)assertSliceBufferWithIntArray:(IOSIntArray *)buffer {
  return OrgApacheLuceneUtilIntBlockPool_assertSliceBufferWithIntArray_(buffer);
}

- (jint)allocSliceWithIntArray:(IOSIntArray *)slice
                       withInt:(jint)sliceOffset {
  return OrgApacheLuceneUtilIntBlockPool_allocSliceWithIntArray_withInt_(self, slice, sliceOffset);
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(buffer_);
  RELEASE_(allocator_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilIntBlockPool class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilIntBlockPool_NEXT_LEVEL_ARRAY_, [IOSIntArray newArrayWithInts:(jint[]){ 1, 2, 3, 4, 5, 6, 7, 8, 9, 9 } count:10]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilIntBlockPool_LEVEL_SIZE_ARRAY_, [IOSIntArray newArrayWithInts:(jint[]){ 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 } count:10]);
    OrgApacheLuceneUtilIntBlockPool_FIRST_LEVEL_SIZE_ = IOSIntArray_Get(OrgApacheLuceneUtilIntBlockPool_LEVEL_SIZE_ARRAY_, 0);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilIntBlockPool)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IntBlockPool", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilIntBlockPool_Allocator:", "IntBlockPool", NULL, 0x1, NULL, NULL },
    { "resetWithBoolean:withBoolean:", "reset", "V", 0x1, NULL, NULL },
    { "nextBuffer", NULL, "V", 0x1, NULL, NULL },
    { "newSliceWithInt:", "newSlice", "I", 0x2, NULL, NULL },
    { "assertSliceBufferWithIntArray:", "assertSliceBuffer", "Z", 0x1a, NULL, NULL },
    { "allocSliceWithIntArray:withInt:", "allocSlice", "I", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INT_BLOCK_SHIFT", "INT_BLOCK_SHIFT", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT },
    { "INT_BLOCK_SIZE", "INT_BLOCK_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE },
    { "INT_BLOCK_MASK", "INT_BLOCK_MASK", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK },
    { "buffers_", NULL, 0x1, "[[I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "intUpto_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x1, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "intOffset_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "allocator_", NULL, 0x12, "Lorg.apache.lucene.util.IntBlockPool$Allocator;", NULL, NULL, .constantValue.asLong = 0 },
    { "NEXT_LEVEL_ARRAY_", NULL, 0x1a, "[I", &OrgApacheLuceneUtilIntBlockPool_NEXT_LEVEL_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "LEVEL_SIZE_ARRAY_", NULL, 0x1a, "[I", &OrgApacheLuceneUtilIntBlockPool_LEVEL_SIZE_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "FIRST_LEVEL_SIZE_", NULL, 0x1a, "I", &OrgApacheLuceneUtilIntBlockPool_FIRST_LEVEL_SIZE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.IntBlockPool$Allocator;", "Lorg.apache.lucene.util.IntBlockPool$DirectAllocator;", "Lorg.apache.lucene.util.IntBlockPool$SliceWriter;", "Lorg.apache.lucene.util.IntBlockPool$SliceReader;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntBlockPool = { 2, "IntBlockPool", "org.apache.lucene.util", NULL, 0x11, 7, methods, 12, fields, 0, NULL, 4, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilIntBlockPool;
}

@end

void OrgApacheLuceneUtilIntBlockPool_init(OrgApacheLuceneUtilIntBlockPool *self) {
  OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(self, [new_OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init() autorelease]);
}

OrgApacheLuceneUtilIntBlockPool *new_OrgApacheLuceneUtilIntBlockPool_init() {
  OrgApacheLuceneUtilIntBlockPool *self = [OrgApacheLuceneUtilIntBlockPool alloc];
  OrgApacheLuceneUtilIntBlockPool_init(self);
  return self;
}

void OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(OrgApacheLuceneUtilIntBlockPool *self, OrgApacheLuceneUtilIntBlockPool_Allocator *allocator) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, [IOSObjectArray newArrayWithLength:10 type:IOSClass_intArray(1)]);
  self->bufferUpto_ = -1;
  self->intUpto_ = OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  self->intOffset_ = -OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  JreStrongAssign(&self->allocator_, allocator);
}

OrgApacheLuceneUtilIntBlockPool *new_OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(OrgApacheLuceneUtilIntBlockPool_Allocator *allocator) {
  OrgApacheLuceneUtilIntBlockPool *self = [OrgApacheLuceneUtilIntBlockPool alloc];
  OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(self, allocator);
  return self;
}

jint OrgApacheLuceneUtilIntBlockPool_newSliceWithInt_(OrgApacheLuceneUtilIntBlockPool *self, jint size) {
  if (self->intUpto_ > OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE - size) {
    [self nextBuffer];
    JreAssert((OrgApacheLuceneUtilIntBlockPool_assertSliceBufferWithIntArray_(self->buffer_)), (@"org/apache/lucene/util/IntBlockPool.java:169 condition failed: assert assertSliceBuffer(buffer);"));
  }
  jint upto = self->intUpto_;
  self->intUpto_ += size;
  *IOSIntArray_GetRef(nil_chk(self->buffer_), self->intUpto_ - 1) = 1;
  return upto;
}

jboolean OrgApacheLuceneUtilIntBlockPool_assertSliceBufferWithIntArray_(IOSIntArray *buffer) {
  OrgApacheLuceneUtilIntBlockPool_initialize();
  jint count = 0;
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(buffer))->size_; i++) {
    count += IOSIntArray_Get(buffer, i);
  }
  return count == 0;
}

jint OrgApacheLuceneUtilIntBlockPool_allocSliceWithIntArray_withInt_(OrgApacheLuceneUtilIntBlockPool *self, IOSIntArray *slice, jint sliceOffset) {
  jint level = IOSIntArray_Get(nil_chk(slice), sliceOffset);
  jint newLevel = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilIntBlockPool_NEXT_LEVEL_ARRAY_), level - 1);
  jint newSize = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilIntBlockPool_LEVEL_SIZE_ARRAY_), newLevel);
  if (self->intUpto_ > OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE - newSize) {
    [self nextBuffer];
    JreAssert((OrgApacheLuceneUtilIntBlockPool_assertSliceBufferWithIntArray_(self->buffer_)), (@"org/apache/lucene/util/IntBlockPool.java:215 condition failed: assert assertSliceBuffer(buffer);"));
  }
  jint newUpto = self->intUpto_;
  jint offset = newUpto + self->intOffset_;
  self->intUpto_ += newSize;
  *IOSIntArray_GetRef(slice, sliceOffset) = offset;
  *IOSIntArray_GetRef(nil_chk(self->buffer_), self->intUpto_ - 1) = newLevel;
  return newUpto;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntBlockPool)

@implementation OrgApacheLuceneUtilIntBlockPool_Allocator

- (instancetype)initWithInt:(jint)blockSize {
  OrgApacheLuceneUtilIntBlockPool_Allocator_initWithInt_(self, blockSize);
  return self;
}

- (void)recycleIntBlocksWithIntArray2:(IOSObjectArray *)blocks
                              withInt:(jint)start
                              withInt:(jint)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (IOSIntArray *)getIntBlock {
  return [IOSIntArray arrayWithLength:blockSize_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "Allocator", NULL, 0x1, NULL, NULL },
    { "recycleIntBlocksWithIntArray2:withInt:withInt:", "recycleIntBlocks", "V", 0x401, NULL, NULL },
    { "getIntBlock", NULL, "[I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "blockSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntBlockPool_Allocator = { 2, "Allocator", "org.apache.lucene.util", "IntBlockPool", 0x409, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIntBlockPool_Allocator;
}

@end

void OrgApacheLuceneUtilIntBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilIntBlockPool_Allocator *self, jint blockSize) {
  NSObject_init(self);
  self->blockSize_ = blockSize;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntBlockPool_Allocator)

@implementation OrgApacheLuceneUtilIntBlockPool_DirectAllocator

- (instancetype)init {
  OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init(self);
  return self;
}

- (void)recycleIntBlocksWithIntArray2:(IOSObjectArray *)blocks
                              withInt:(jint)start
                              withInt:(jint)end {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DirectAllocator", NULL, 0x1, NULL, NULL },
    { "recycleIntBlocksWithIntArray2:withInt:withInt:", "recycleIntBlocks", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntBlockPool_DirectAllocator = { 2, "DirectAllocator", "org.apache.lucene.util", "IntBlockPool", 0x19, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIntBlockPool_DirectAllocator;
}

@end

void OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init(OrgApacheLuceneUtilIntBlockPool_DirectAllocator *self) {
  OrgApacheLuceneUtilIntBlockPool_Allocator_initWithInt_(self, OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE);
}

OrgApacheLuceneUtilIntBlockPool_DirectAllocator *new_OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init() {
  OrgApacheLuceneUtilIntBlockPool_DirectAllocator *self = [OrgApacheLuceneUtilIntBlockPool_DirectAllocator alloc];
  OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntBlockPool_DirectAllocator)

@implementation OrgApacheLuceneUtilIntBlockPool_SliceWriter

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool:(OrgApacheLuceneUtilIntBlockPool *)pool {
  OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(self, pool);
  return self;
}

- (void)resetWithInt:(jint)sliceOffset {
  self->offset_ = sliceOffset;
}

- (void)writeIntWithInt:(jint)value {
  IOSIntArray *ints = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(pool_))->buffers_), JreRShift32(offset_, OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT));
  JreAssert((ints != nil), (@"org/apache/lucene/util/IntBlockPool.java:257 condition failed: assert ints != null;"));
  jint relativeOffset = offset_ & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
  if (IOSIntArray_Get(nil_chk(ints), relativeOffset) != 0) {
    relativeOffset = OrgApacheLuceneUtilIntBlockPool_allocSliceWithIntArray_withInt_(pool_, ints, relativeOffset);
    ints = pool_->buffer_;
    offset_ = relativeOffset + pool_->intOffset_;
  }
  *IOSIntArray_GetRef(nil_chk(ints), relativeOffset) = value;
  offset_++;
}

- (jint)startNewSlice {
  return offset_ = OrgApacheLuceneUtilIntBlockPool_newSliceWithInt_(nil_chk(pool_), JreLoadStatic(OrgApacheLuceneUtilIntBlockPool, FIRST_LEVEL_SIZE_)) + pool_->intOffset_;
}

- (jint)getCurrentOffset {
  return offset_;
}

- (void)dealloc {
  RELEASE_(pool_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilIntBlockPool:", "SliceWriter", NULL, 0x1, NULL, NULL },
    { "resetWithInt:", "reset", "V", 0x1, NULL, NULL },
    { "writeIntWithInt:", "writeInt", "V", 0x1, NULL, NULL },
    { "startNewSlice", NULL, "I", 0x1, NULL, NULL },
    { "getCurrentOffset", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "offset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pool_", NULL, 0x12, "Lorg.apache.lucene.util.IntBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntBlockPool_SliceWriter = { 2, "SliceWriter", "org.apache.lucene.util", "IntBlockPool", 0x9, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIntBlockPool_SliceWriter;
}

@end

void OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool_SliceWriter *self, OrgApacheLuceneUtilIntBlockPool *pool) {
  NSObject_init(self);
  JreStrongAssign(&self->pool_, pool);
}

OrgApacheLuceneUtilIntBlockPool_SliceWriter *new_OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool *pool) {
  OrgApacheLuceneUtilIntBlockPool_SliceWriter *self = [OrgApacheLuceneUtilIntBlockPool_SliceWriter alloc];
  OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(self, pool);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntBlockPool_SliceWriter)

@implementation OrgApacheLuceneUtilIntBlockPool_SliceReader

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool:(OrgApacheLuceneUtilIntBlockPool *)pool {
  OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(self, pool);
  return self;
}

- (void)resetWithInt:(jint)startOffset
             withInt:(jint)endOffset {
  bufferUpto_ = startOffset / OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  bufferOffset_ = bufferUpto_ * OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  self->end_ = endOffset;
  upto_ = startOffset;
  level_ = 1;
  JreStrongAssign(&buffer_, IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(pool_))->buffers_), bufferUpto_));
  upto_ = startOffset & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
  jint firstSize = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneUtilIntBlockPool, LEVEL_SIZE_ARRAY_)), 0);
  if (startOffset + firstSize >= endOffset) {
    limit_ = endOffset & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
  }
  else {
    limit_ = upto_ + firstSize - 1;
  }
}

- (jboolean)endOfSlice {
  JreAssert((upto_ + bufferOffset_ <= end_), (@"org/apache/lucene/util/IntBlockPool.java:340 condition failed: assert upto + bufferOffset <= end;"));
  return upto_ + bufferOffset_ == end_;
}

- (jint)readInt {
  JreAssert((![self endOfSlice]), (@"org/apache/lucene/util/IntBlockPool.java:349 condition failed: assert !endOfSlice();"));
  JreAssert((upto_ <= limit_), (@"org/apache/lucene/util/IntBlockPool.java:350 condition failed: assert upto <= limit;"));
  if (upto_ == limit_) OrgApacheLuceneUtilIntBlockPool_SliceReader_nextSlice(self);
  return IOSIntArray_Get(nil_chk(buffer_), upto_++);
}

- (void)nextSlice {
  OrgApacheLuceneUtilIntBlockPool_SliceReader_nextSlice(self);
}

- (void)dealloc {
  RELEASE_(pool_);
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilIntBlockPool:", "SliceReader", NULL, 0x1, NULL, NULL },
    { "resetWithInt:withInt:", "reset", "V", 0x1, NULL, NULL },
    { "endOfSlice", NULL, "Z", 0x1, NULL, NULL },
    { "readInt", NULL, "I", 0x1, NULL, NULL },
    { "nextSlice", NULL, "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pool_", NULL, 0x12, "Lorg.apache.lucene.util.IntBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "upto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "limit_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "level_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntBlockPool_SliceReader = { 2, "SliceReader", "org.apache.lucene.util", "IntBlockPool", 0x19, 5, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIntBlockPool_SliceReader;
}

@end

void OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool_SliceReader *self, OrgApacheLuceneUtilIntBlockPool *pool) {
  NSObject_init(self);
  JreStrongAssign(&self->pool_, pool);
}

OrgApacheLuceneUtilIntBlockPool_SliceReader *new_OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool *pool) {
  OrgApacheLuceneUtilIntBlockPool_SliceReader *self = [OrgApacheLuceneUtilIntBlockPool_SliceReader alloc];
  OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(self, pool);
  return self;
}

void OrgApacheLuceneUtilIntBlockPool_SliceReader_nextSlice(OrgApacheLuceneUtilIntBlockPool_SliceReader *self) {
  jint nextIndex = IOSIntArray_Get(nil_chk(self->buffer_), self->limit_);
  self->level_ = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneUtilIntBlockPool, NEXT_LEVEL_ARRAY_)), self->level_ - 1);
  jint newSize = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneUtilIntBlockPool, LEVEL_SIZE_ARRAY_)), self->level_);
  self->bufferUpto_ = nextIndex / OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  self->bufferOffset_ = self->bufferUpto_ * OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE;
  JreStrongAssign(&self->buffer_, IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(self->pool_))->buffers_), self->bufferUpto_));
  self->upto_ = nextIndex & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
  if (nextIndex + newSize >= self->end_) {
    JreAssert((self->end_ - nextIndex > 0), (@"org/apache/lucene/util/IntBlockPool.java:370 condition failed: assert end - nextIndex > 0;"));
    self->limit_ = self->end_ - self->bufferOffset_;
  }
  else {
    self->limit_ = self->upto_ + newSize - 1;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntBlockPool_SliceReader)
