//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/BytesStore.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/BytesStore.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/ForwardBytesReader.h"
#include "org/apache/lucene/util/fst/ReverseBytesReader.h"

@interface OrgApacheLuceneUtilFstBytesStore () {
 @public
  id<JavaUtilList> blocks_;
  jint blockSize_;
  jint blockBits_;
  jint blockMask_;
  IOSByteArray *current_;
  jint nextWrite_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore, blocks_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore, current_, IOSByteArray *)

inline jlong OrgApacheLuceneUtilFstBytesStore_get_BASE_RAM_BYTES_USED();
static jlong OrgApacheLuceneUtilFstBytesStore_BASE_RAM_BYTES_USED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilFstBytesStore, BASE_RAM_BYTES_USED, jlong)

@interface OrgApacheLuceneUtilFstBytesStore_$1 : OrgApacheLuceneUtilFstFST_BytesReader {
 @public
  OrgApacheLuceneUtilFstBytesStore *this$0_;
  IOSByteArray *current_;
  jint nextBuffer_;
  jint nextRead_;
}

- (jbyte)readByte;

- (void)skipBytesWithLong:(jlong)count;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jlong)getPosition;

- (void)setPositionWithLong:(jlong)pos;

- (jboolean)reversed;

- (instancetype)initWithOrgApacheLuceneUtilFstBytesStore:(OrgApacheLuceneUtilFstBytesStore *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBytesStore_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore_$1, this$0_, OrgApacheLuceneUtilFstBytesStore *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore_$1, current_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore_$1 *self, OrgApacheLuceneUtilFstBytesStore *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesStore_$1 *new_OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesStore_$1 *create_OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBytesStore_$1)

@interface OrgApacheLuceneUtilFstBytesStore_$2 : OrgApacheLuceneUtilFstFST_BytesReader {
 @public
  OrgApacheLuceneUtilFstBytesStore *this$0_;
  IOSByteArray *current_;
  jint nextBuffer_;
  jint nextRead_;
}

- (jbyte)readByte;

- (void)skipBytesWithLong:(jlong)count;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jlong)getPosition;

- (void)setPositionWithLong:(jlong)pos;

- (jboolean)reversed;

- (instancetype)initWithOrgApacheLuceneUtilFstBytesStore:(OrgApacheLuceneUtilFstBytesStore *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBytesStore_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore_$2, this$0_, OrgApacheLuceneUtilFstBytesStore *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesStore_$2, current_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore_$2 *self, OrgApacheLuceneUtilFstBytesStore *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesStore_$2 *new_OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesStore_$2 *create_OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBytesStore_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstBytesStore)

@implementation OrgApacheLuceneUtilFstBytesStore

- (instancetype)initWithInt:(jint)blockBits {
  OrgApacheLuceneUtilFstBytesStore_initWithInt_(self, blockBits);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                             withLong:(jlong)numBytes
                                              withInt:(jint)maxBlockSize {
  OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(self, inArg, numBytes, maxBlockSize);
  return self;
}

- (void)writeByteWithInt:(jint)dest
                withByte:(jbyte)b {
  jint blockIndex = JreRShift32(dest, blockBits_);
  IOSByteArray *block = [((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:blockIndex];
  *IOSByteArray_GetRef(nil_chk(block), dest & blockMask_) = b;
}

- (void)writeByteWithByte:(jbyte)b {
  if (nextWrite_ == blockSize_) {
    JreStrongAssignAndConsume(&current_, [IOSByteArray newArrayWithLength:blockSize_]);
    [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:current_];
    nextWrite_ = 0;
  }
  *IOSByteArray_GetRef(nil_chk(current_), nextWrite_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len {
  while (len > 0) {
    jint chunk = blockSize_ - nextWrite_;
    if (len <= chunk) {
      JreAssert((b != nil), (@"org/apache/lucene/util/fst/BytesStore.java:103 condition failed: assert b != null;"));
      JreAssert((current_ != nil), (@"org/apache/lucene/util/fst/BytesStore.java:104 condition failed: assert current != null;"));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, current_, nextWrite_, len);
      nextWrite_ += len;
      break;
    }
    else {
      if (chunk > 0) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, current_, nextWrite_, chunk);
        offset += chunk;
        len -= chunk;
      }
      JreStrongAssignAndConsume(&current_, [IOSByteArray newArrayWithLength:blockSize_]);
      [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:current_];
      nextWrite_ = 0;
    }
  }
}

- (jint)getBlockBits {
  return blockBits_;
}

- (void)writeBytesWithLong:(jlong)dest
             withByteArray:(IOSByteArray *)b
                   withInt:(jint)offset
                   withInt:(jint)len {
  JreAssert((dest + len <= [self getPosition]), (JreStrcat("$J$J$I", @"dest=", dest, @" pos=", [self getPosition], @" len=", len)));
  jlong end = dest + len;
  jint blockIndex = (jint) (JreRShift64(end, blockBits_));
  jint downTo = (jint) (end & blockMask_);
  if (downTo == 0) {
    blockIndex--;
    downTo = blockSize_;
  }
  IOSByteArray *block = [((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:blockIndex];
  while (len > 0) {
    if (len <= downTo) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, block, downTo - len, len);
      break;
    }
    else {
      len -= downTo;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset + len, block, 0, downTo);
      blockIndex--;
      block = [blocks_ getWithInt:blockIndex];
      downTo = blockSize_;
    }
  }
}

- (void)copyBytesWithLong:(jlong)src
                 withLong:(jlong)dest
                  withInt:(jint)len {
  JreAssert((src < dest), (@"org/apache/lucene/util/fst/BytesStore.java:189 condition failed: assert src < dest;"));
  jlong end = src + len;
  jint blockIndex = (jint) (JreRShift64(end, blockBits_));
  jint downTo = (jint) (end & blockMask_);
  if (downTo == 0) {
    blockIndex--;
    downTo = blockSize_;
  }
  IOSByteArray *block = [((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:blockIndex];
  while (len > 0) {
    if (len <= downTo) {
      [self writeBytesWithLong:dest withByteArray:block withInt:downTo - len withInt:len];
      break;
    }
    else {
      len -= downTo;
      [self writeBytesWithLong:dest + len withByteArray:block withInt:0 withInt:downTo];
      blockIndex--;
      block = [blocks_ getWithInt:blockIndex];
      downTo = blockSize_;
    }
  }
}

- (void)writeIntWithLong:(jlong)pos
                 withInt:(jint)value {
  jint blockIndex = (jint) (JreRShift64(pos, blockBits_));
  jint upto = (jint) (pos & blockMask_);
  IOSByteArray *block = [((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:blockIndex];
  jint shift = 24;
  for (jint i = 0; i < 4; i++) {
    *IOSByteArray_GetRef(nil_chk(block), upto++) = (jbyte) (JreRShift32(value, shift));
    shift -= 8;
    if (upto == blockSize_) {
      upto = 0;
      blockIndex++;
      block = [blocks_ getWithInt:blockIndex];
    }
  }
}

- (void)reverseWithLong:(jlong)srcPos
               withLong:(jlong)destPos {
  JreAssert((srcPos < destPos), (@"org/apache/lucene/util/fst/BytesStore.java:264 condition failed: assert srcPos < destPos;"));
  JreAssert((destPos < [self getPosition]), (@"org/apache/lucene/util/fst/BytesStore.java:265 condition failed: assert destPos < getPosition();"));
  jint srcBlockIndex = (jint) (JreRShift64(srcPos, blockBits_));
  jint src = (jint) (srcPos & blockMask_);
  IOSByteArray *srcBlock = [((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:srcBlockIndex];
  jint destBlockIndex = (jint) (JreRShift64(destPos, blockBits_));
  jint dest = (jint) (destPos & blockMask_);
  IOSByteArray *destBlock = [blocks_ getWithInt:destBlockIndex];
  jint limit = (jint) (destPos - srcPos + 1) / 2;
  for (jint i = 0; i < limit; i++) {
    jbyte b = IOSByteArray_Get(nil_chk(srcBlock), src);
    *IOSByteArray_GetRef(srcBlock, src) = IOSByteArray_Get(nil_chk(destBlock), dest);
    *IOSByteArray_GetRef(destBlock, dest) = b;
    src++;
    if (src == blockSize_) {
      srcBlockIndex++;
      srcBlock = [blocks_ getWithInt:srcBlockIndex];
      src = 0;
    }
    dest--;
    if (dest == -1) {
      destBlockIndex--;
      destBlock = [blocks_ getWithInt:destBlockIndex];
      dest = blockSize_ - 1;
    }
  }
}

- (void)skipBytesWithInt:(jint)len {
  while (len > 0) {
    jint chunk = blockSize_ - nextWrite_;
    if (len <= chunk) {
      nextWrite_ += len;
      break;
    }
    else {
      len -= chunk;
      JreStrongAssignAndConsume(&current_, [IOSByteArray newArrayWithLength:blockSize_]);
      [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:current_];
      nextWrite_ = 0;
    }
  }
}

- (jlong)getPosition {
  return ((jlong) [((id<JavaUtilList>) nil_chk(blocks_)) size] - 1) * blockSize_ + nextWrite_;
}

- (void)truncateWithLong:(jlong)newLen {
  JreAssert((newLen <= [self getPosition]), (@"org/apache/lucene/util/fst/BytesStore.java:323 condition failed: assert newLen <= getPosition();"));
  JreAssert((newLen >= 0), (@"org/apache/lucene/util/fst/BytesStore.java:324 condition failed: assert newLen >= 0;"));
  jint blockIndex = (jint) (JreRShift64(newLen, blockBits_));
  nextWrite_ = (jint) (newLen & blockMask_);
  if (nextWrite_ == 0) {
    blockIndex--;
    nextWrite_ = blockSize_;
  }
  [((id<JavaUtilList>) nil_chk([((id<JavaUtilList>) nil_chk(blocks_)) subListWithInt:blockIndex + 1 withInt:[blocks_ size]])) clear];
  if (newLen == 0) {
    JreStrongAssign(&current_, nil);
  }
  else {
    JreStrongAssign(&current_, [blocks_ getWithInt:blockIndex]);
  }
  JreAssert((newLen == [self getPosition]), (@"org/apache/lucene/util/fst/BytesStore.java:337 condition failed: assert newLen == getPosition();"));
}

- (void)finish {
  if (current_ != nil) {
    IOSByteArray *lastBuffer = [IOSByteArray arrayWithLength:nextWrite_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(current_, 0, lastBuffer, 0, nextWrite_);
    [((id<JavaUtilList>) nil_chk(blocks_)) setWithInt:[blocks_ size] - 1 withId:lastBuffer];
    JreStrongAssign(&current_, nil);
  }
}

- (void)writeToWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  for (IOSByteArray * __strong block in nil_chk(blocks_)) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeBytesWithByteArray:block withInt:0 withInt:((IOSByteArray *) nil_chk(block))->size_];
  }
}

- (OrgApacheLuceneUtilFstFST_BytesReader *)getForwardReader {
  if ([((id<JavaUtilList>) nil_chk(blocks_)) size] == 1) {
    return create_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_([blocks_ getWithInt:0]);
  }
  return create_OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(self);
}

- (OrgApacheLuceneUtilFstFST_BytesReader *)getReverseReader {
  return [self getReverseReaderWithBoolean:true];
}

- (OrgApacheLuceneUtilFstFST_BytesReader *)getReverseReaderWithBoolean:(jboolean)allowSingle {
  if (allowSingle && [((id<JavaUtilList>) nil_chk(blocks_)) size] == 1) {
    return create_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_([((id<JavaUtilList>) nil_chk(blocks_)) getWithInt:0]);
  }
  return create_OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(self);
}

- (jlong)ramBytesUsed {
  jlong size = OrgApacheLuceneUtilFstBytesStore_BASE_RAM_BYTES_USED;
  for (IOSByteArray * __strong block in nil_chk(blocks_)) {
    size += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(block);
  }
  return size;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  return JreStrcat("$$IC", [[self getClass] getSimpleName], @"(numBlocks=", [((id<JavaUtilList>) nil_chk(blocks_)) size], ')');
}

- (void)dealloc {
  RELEASE_(blocks_);
  RELEASE_(current_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstBytesStore class]) {
    OrgApacheLuceneUtilFstBytesStore_BASE_RAM_BYTES_USED = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilFstBytesStore_class_()) + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(JavaUtilArrayList_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstBytesStore)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "BytesStore", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDataInput:withLong:withInt:", "BytesStore", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "writeByteWithInt:withByte:", "writeByte", "V", 0x1, NULL, NULL },
    { "writeByteWithByte:", "writeByte", "V", 0x1, NULL, NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x1, NULL, NULL },
    { "getBlockBits", NULL, "I", 0x0, NULL, NULL },
    { "writeBytesWithLong:withByteArray:withInt:withInt:", "writeBytes", "V", 0x0, NULL, NULL },
    { "copyBytesWithLong:withLong:withInt:", "copyBytes", "V", 0x1, NULL, NULL },
    { "writeIntWithLong:withInt:", "writeInt", "V", 0x1, NULL, NULL },
    { "reverseWithLong:withLong:", "reverse", "V", 0x1, NULL, NULL },
    { "skipBytesWithInt:", "skipBytes", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "truncateWithLong:", "truncate", "V", 0x1, NULL, NULL },
    { "finish", NULL, "V", 0x1, NULL, NULL },
    { "writeToWithOrgApacheLuceneStoreDataOutput:", "writeTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getForwardReader", NULL, "Lorg.apache.lucene.util.fst.FST$BytesReader;", 0x1, NULL, NULL },
    { "getReverseReader", NULL, "Lorg.apache.lucene.util.fst.FST$BytesReader;", 0x1, NULL, NULL },
    { "getReverseReaderWithBoolean:", "getReverseReader", "Lorg.apache.lucene.util.fst.FST$BytesReader;", 0x0, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED", "BASE_RAM_BYTES_USED", 0x1a, "J", &OrgApacheLuceneUtilFstBytesStore_BASE_RAM_BYTES_USED, NULL, .constantValue.asLong = 0 },
    { "blocks_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<[LB;>;", .constantValue.asLong = 0 },
    { "blockSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockBits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockMask_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "nextWrite_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesStore = { 2, "BytesStore", "org.apache.lucene.util.fst", NULL, 0x0, 21, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilFstBytesStore;
}

@end

void OrgApacheLuceneUtilFstBytesStore_initWithInt_(OrgApacheLuceneUtilFstBytesStore *self, jint blockBits) {
  OrgApacheLuceneStoreDataOutput_init(self);
  JreStrongAssignAndConsume(&self->blocks_, new_JavaUtilArrayList_init());
  self->blockBits_ = blockBits;
  self->blockSize_ = JreLShift32(1, blockBits);
  self->blockMask_ = self->blockSize_ - 1;
  self->nextWrite_ = self->blockSize_;
}

OrgApacheLuceneUtilFstBytesStore *new_OrgApacheLuceneUtilFstBytesStore_initWithInt_(jint blockBits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesStore, initWithInt_, blockBits)
}

OrgApacheLuceneUtilFstBytesStore *create_OrgApacheLuceneUtilFstBytesStore_initWithInt_(jint blockBits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesStore, initWithInt_, blockBits)
}

void OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(OrgApacheLuceneUtilFstBytesStore *self, OrgApacheLuceneStoreDataInput *inArg, jlong numBytes, jint maxBlockSize) {
  OrgApacheLuceneStoreDataOutput_init(self);
  JreStrongAssignAndConsume(&self->blocks_, new_JavaUtilArrayList_init());
  jint blockSize = 2;
  jint blockBits = 1;
  while (blockSize < numBytes && blockSize < maxBlockSize) {
    blockSize *= 2;
    blockBits++;
  }
  self->blockBits_ = blockBits;
  self->blockSize_ = blockSize;
  self->blockMask_ = blockSize - 1;
  jlong left = numBytes;
  while (left > 0) {
    jint chunk = (jint) JavaLangMath_minWithLong_withLong_(blockSize, left);
    IOSByteArray *block = [IOSByteArray arrayWithLength:chunk];
    [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readBytesWithByteArray:block withInt:0 withInt:block->size_];
    [self->blocks_ addWithId:block];
    left -= chunk;
  }
  self->nextWrite_ = ((IOSByteArray *) nil_chk([self->blocks_ getWithInt:[self->blocks_ size] - 1]))->size_;
}

OrgApacheLuceneUtilFstBytesStore *new_OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(OrgApacheLuceneStoreDataInput *inArg, jlong numBytes, jint maxBlockSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesStore, initWithOrgApacheLuceneStoreDataInput_withLong_withInt_, inArg, numBytes, maxBlockSize)
}

OrgApacheLuceneUtilFstBytesStore *create_OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(OrgApacheLuceneStoreDataInput *inArg, jlong numBytes, jint maxBlockSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesStore, initWithOrgApacheLuceneStoreDataInput_withLong_withInt_, inArg, numBytes, maxBlockSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesStore)

@implementation OrgApacheLuceneUtilFstBytesStore_$1

- (jbyte)readByte {
  if (nextRead_ == this$0_->blockSize_) {
    JreStrongAssign(&current_, [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:nextBuffer_++]);
    nextRead_ = 0;
  }
  return IOSByteArray_Get(nil_chk(current_), nextRead_++);
}

- (void)skipBytesWithLong:(jlong)count {
  [self setPositionWithLong:[self getPosition] + count];
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  while (len > 0) {
    jint chunkLeft = this$0_->blockSize_ - nextRead_;
    if (len <= chunkLeft) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(current_, nextRead_, b, offset, len);
      nextRead_ += len;
      break;
    }
    else {
      if (chunkLeft > 0) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(current_, nextRead_, b, offset, chunkLeft);
        offset += chunkLeft;
        len -= chunkLeft;
      }
      JreStrongAssign(&current_, [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:nextBuffer_++]);
      nextRead_ = 0;
    }
  }
}

- (jlong)getPosition {
  return ((jlong) nextBuffer_ - 1) * this$0_->blockSize_ + nextRead_;
}

- (void)setPositionWithLong:(jlong)pos {
  jint bufferIndex = (jint) (JreRShift64(pos, this$0_->blockBits_));
  nextBuffer_ = bufferIndex + 1;
  JreStrongAssign(&current_, [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:bufferIndex]);
  nextRead_ = (jint) (pos & this$0_->blockMask_);
  JreAssert(([self getPosition] == pos), (@"org/apache/lucene/util/fst/BytesStore.java:410 condition failed: assert getPosition() == pos;"));
}

- (jboolean)reversed {
  return false;
}

- (instancetype)initWithOrgApacheLuceneUtilFstBytesStore:(OrgApacheLuceneUtilFstBytesStore *)outer$ {
  OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(current_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readByte", NULL, "B", 0x1, NULL, NULL },
    { "skipBytesWithLong:", "skipBytes", "V", 0x1, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "setPositionWithLong:", "setPosition", "V", 0x1, NULL, NULL },
    { "reversed", NULL, "Z", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilFstBytesStore:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.fst.BytesStore;", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "nextBuffer_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextRead_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilFstBytesStore", "getForwardReader" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesStore_$1 = { 2, "", "org.apache.lucene.util.fst", "BytesStore", 0x8008, 7, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilFstBytesStore_$1;
}

@end

void OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore_$1 *self, OrgApacheLuceneUtilFstBytesStore *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneUtilFstFST_BytesReader_init(self);
  self->nextRead_ = outer$->blockSize_;
}

OrgApacheLuceneUtilFstBytesStore_$1 *new_OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesStore_$1, initWithOrgApacheLuceneUtilFstBytesStore_, outer$)
}

OrgApacheLuceneUtilFstBytesStore_$1 *create_OrgApacheLuceneUtilFstBytesStore_$1_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesStore_$1, initWithOrgApacheLuceneUtilFstBytesStore_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesStore_$1)

@implementation OrgApacheLuceneUtilFstBytesStore_$2

- (jbyte)readByte {
  if (nextRead_ == -1) {
    JreStrongAssign(&current_, [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:nextBuffer_--]);
    nextRead_ = this$0_->blockSize_ - 1;
  }
  return IOSByteArray_Get(nil_chk(current_), nextRead_--);
}

- (void)skipBytesWithLong:(jlong)count {
  [self setPositionWithLong:[self getPosition] - count];
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    *IOSByteArray_GetRef(nil_chk(b), offset + i) = [self readByte];
  }
}

- (jlong)getPosition {
  return ((jlong) nextBuffer_ + 1) * this$0_->blockSize_ + nextRead_;
}

- (void)setPositionWithLong:(jlong)pos {
  jint bufferIndex = (jint) (JreRShift64(pos, this$0_->blockBits_));
  nextBuffer_ = bufferIndex - 1;
  JreStrongAssign(&current_, [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:bufferIndex]);
  nextRead_ = (jint) (pos & this$0_->blockMask_);
  JreAssert(([self getPosition] == pos), (JreStrcat("$J$J", @"pos=", pos, @" getPos()=", [self getPosition])));
}

- (jboolean)reversed {
  return true;
}

- (instancetype)initWithOrgApacheLuceneUtilFstBytesStore:(OrgApacheLuceneUtilFstBytesStore *)outer$ {
  OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(current_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readByte", NULL, "B", 0x1, NULL, NULL },
    { "skipBytesWithLong:", "skipBytes", "V", 0x1, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "setPositionWithLong:", "setPosition", "V", 0x1, NULL, NULL },
    { "reversed", NULL, "Z", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilFstBytesStore:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.fst.BytesStore;", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "nextBuffer_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextRead_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilFstBytesStore", "getReverseReaderWithBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesStore_$2 = { 2, "", "org.apache.lucene.util.fst", "BytesStore", 0x8008, 7, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilFstBytesStore_$2;
}

@end

void OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore_$2 *self, OrgApacheLuceneUtilFstBytesStore *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneUtilFstFST_BytesReader_init(self);
  JreStrongAssign(&self->current_, [((id<JavaUtilList>) nil_chk(outer$->blocks_)) size] == 0 ? nil : [outer$->blocks_ getWithInt:0]);
  self->nextBuffer_ = -1;
  self->nextRead_ = 0;
}

OrgApacheLuceneUtilFstBytesStore_$2 *new_OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesStore_$2, initWithOrgApacheLuceneUtilFstBytesStore_, outer$)
}

OrgApacheLuceneUtilFstBytesStore_$2 *create_OrgApacheLuceneUtilFstBytesStore_$2_initWithOrgApacheLuceneUtilFstBytesStore_(OrgApacheLuceneUtilFstBytesStore *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesStore_$2, initWithOrgApacheLuceneUtilFstBytesStore_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesStore_$2)
