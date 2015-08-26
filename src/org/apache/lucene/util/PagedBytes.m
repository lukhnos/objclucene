//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/PagedBytes.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/PagedBytes.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilPagedBytes () {
 @public
  IOSObjectArray *blocks_;
  jint numBlocks_;
  jint blockSize_;
  jint blockBits_;
  jint blockMask_;
  jboolean didSkipBytes_;
  jboolean frozen_;
  jint upto_;
  IOSByteArray *currentBlock_;
  jlong bytesUsedPerBlock_;
}

- (void)addBlockWithByteArray:(IOSByteArray *)block;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes, blocks_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes, currentBlock_, IOSByteArray *)

static jlong OrgApacheLuceneUtilPagedBytes_BASE_RAM_BYTES_USED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPagedBytes, BASE_RAM_BYTES_USED_, jlong)

static IOSByteArray *OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPagedBytes, EMPTY_BYTES_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(OrgApacheLuceneUtilPagedBytes *self, IOSByteArray *block);

@interface OrgApacheLuceneUtilPagedBytes_Reader () {
 @public
  IOSObjectArray *blocks_;
  jint blockBits_;
  jint blockMask_;
  jint blockSize_;
  jlong bytesUsedPerBlock_;
}

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)pagedBytes;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_Reader, blocks_, IOSObjectArray *)

static jlong OrgApacheLuceneUtilPagedBytes_Reader_BASE_RAM_BYTES_USED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPagedBytes_Reader, BASE_RAM_BYTES_USED_, jlong)

__attribute__((unused)) static void OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_Reader *self, OrgApacheLuceneUtilPagedBytes *pagedBytes);

__attribute__((unused)) static OrgApacheLuceneUtilPagedBytes_Reader *new_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *pagedBytes) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput () {
 @public
  OrgApacheLuceneUtilPagedBytes *this$0_;
  jint currentBlockIndex_;
  jint currentBlockUpto_;
  IOSByteArray *currentBlock_;
}

- (void)nextBlock;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput, this$0_, OrgApacheLuceneUtilPagedBytes *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput, currentBlock_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self);

@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput () {
 @public
  OrgApacheLuceneUtilPagedBytes *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput, this$0_, OrgApacheLuceneUtilPagedBytes *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPagedBytes)

@implementation OrgApacheLuceneUtilPagedBytes

- (instancetype)initWithInt:(jint)blockBits {
  OrgApacheLuceneUtilPagedBytes_initWithInt_(self, blockBits);
  return self;
}

- (void)addBlockWithByteArray:(IOSByteArray *)block {
  OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(self, block);
}

- (void)copy__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                        withLong:(jlong)byteCount {
  while (byteCount > 0) {
    jint left = blockSize_ - upto_;
    if (left == 0) {
      if (currentBlock_ != nil) {
        OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(self, currentBlock_);
      }
      JreStrongAssignAndConsume(&currentBlock_, [IOSByteArray newArrayWithLength:blockSize_]);
      upto_ = 0;
      left = blockSize_;
    }
    if (left < byteCount) {
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readBytesWithByteArray:currentBlock_ withInt:upto_ withInt:left withBoolean:NO];
      upto_ = blockSize_;
      byteCount -= left;
    }
    else {
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readBytesWithByteArray:currentBlock_ withInt:upto_ withInt:(jint) byteCount withBoolean:NO];
      upto_ += byteCount;
      break;
    }
  }
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes
              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)outArg {
  jint left = blockSize_ - upto_;
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ > left || currentBlock_ == nil) {
    if (currentBlock_ != nil) {
      OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(self, currentBlock_);
      didSkipBytes_ = YES;
    }
    JreStrongAssignAndConsume(&currentBlock_, [IOSByteArray newArrayWithLength:blockSize_]);
    upto_ = 0;
    left = blockSize_;
    JreAssert((bytes->length_ <= blockSize_), (@"org/apache/lucene/util/PagedBytes.java:207 condition failed: assert bytes.length <= blockSize;"));
  }
  JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(outArg))->bytes_, currentBlock_);
  outArg->offset_ = upto_;
  outArg->length_ = bytes->length_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytes->offset_, currentBlock_, upto_, bytes->length_);
  upto_ += bytes->length_;
}

- (OrgApacheLuceneUtilPagedBytes_Reader *)freezeWithBoolean:(jboolean)trim {
  if (frozen_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"already frozen") autorelease];
  }
  if (didSkipBytes_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"cannot freeze when copy(BytesRef, BytesRef) was used") autorelease];
  }
  if (trim && upto_ < blockSize_) {
    IOSByteArray *newBlock = [IOSByteArray arrayWithLength:upto_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, 0, newBlock, 0, upto_);
    JreStrongAssign(&currentBlock_, newBlock);
  }
  if (currentBlock_ == nil) {
    JreStrongAssign(&currentBlock_, OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES_);
  }
  OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(self, currentBlock_);
  frozen_ = YES;
  JreStrongAssign(&currentBlock_, nil);
  return [new_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(self) autorelease];
}

- (jlong)getPointer {
  if (currentBlock_ == nil) {
    return 0;
  }
  else {
    return (numBlocks_ * ((jlong) blockSize_)) + upto_;
  }
}

- (jlong)ramBytesUsed {
  jlong size = OrgApacheLuceneUtilPagedBytes_BASE_RAM_BYTES_USED_ + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(blocks_);
  ;
  if (numBlocks_ > 0) {
    size += (numBlocks_ - 1) * bytesUsedPerBlock_;
    size += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(IOSObjectArray_Get(nil_chk(blocks_), numBlocks_ - 1));
  }
  if (currentBlock_ != nil) {
    size += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(currentBlock_);
  }
  return size;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (jlong)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ >= 32768) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"max length is 32767 (got ", bytes->length_, ')')) autorelease];
  }
  if (upto_ + bytes->length_ + 2 > blockSize_) {
    if (bytes->length_ + 2 > blockSize_) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$", @"block size ", blockSize_, @" is too small to store length ", bytes->length_, @" bytes")) autorelease];
    }
    if (currentBlock_ != nil) {
      OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(self, currentBlock_);
    }
    JreStrongAssignAndConsume(&currentBlock_, [IOSByteArray newArrayWithLength:blockSize_]);
    upto_ = 0;
  }
  jlong pointer = [self getPointer];
  if (bytes->length_ < 128) {
    *IOSByteArray_GetRef(nil_chk(currentBlock_), upto_++) = (jbyte) bytes->length_;
  }
  else {
    *IOSByteArray_GetRef(nil_chk(currentBlock_), upto_++) = (jbyte) ((jint) 0x80 | (JreRShift32(bytes->length_, 8)));
    *IOSByteArray_GetRef(currentBlock_, upto_++) = (jbyte) (bytes->length_ & (jint) 0xff);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytes->offset_, currentBlock_, upto_, bytes->length_);
  upto_ += bytes->length_;
  return pointer;
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *)getDataInput {
  if (!frozen_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"must call freeze() before getDataInput") autorelease];
  }
  return [new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(self) autorelease];
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *)getDataOutput {
  if (frozen_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"cannot get DataOutput after freeze()") autorelease];
  }
  return [new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self) autorelease];
}

- (void)dealloc {
  RELEASE_(blocks_);
  RELEASE_(currentBlock_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPagedBytes class]) {
    OrgApacheLuceneUtilPagedBytes_BASE_RAM_BYTES_USED_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilPagedBytes_class_());
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES_, [IOSByteArray newArrayWithLength:0]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPagedBytes)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "PagedBytes", NULL, 0x1, NULL, NULL },
    { "addBlockWithByteArray:", "addBlock", "V", 0x2, NULL, NULL },
    { "copy__WithOrgApacheLuceneStoreIndexInput:withLong:", "copy", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "copy__WithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:", "copy", "V", 0x1, NULL, NULL },
    { "freezeWithBoolean:", "freeze", "Lorg.apache.lucene.util.PagedBytes$Reader;", 0x1, NULL, NULL },
    { "getPointer", NULL, "J", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:", "copyUsingLengthPrefix", "J", 0x1, NULL, NULL },
    { "getDataInput", NULL, "Lorg.apache.lucene.util.PagedBytes$PagedBytesDataInput;", 0x1, NULL, NULL },
    { "getDataOutput", NULL, "Lorg.apache.lucene.util.PagedBytes$PagedBytesDataOutput;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED_", NULL, 0x1a, "J", &OrgApacheLuceneUtilPagedBytes_BASE_RAM_BYTES_USED_, NULL, .constantValue.asLong = 0 },
    { "blocks_", NULL, 0x2, "[[B", NULL, NULL, .constantValue.asLong = 0 },
    { "numBlocks_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockBits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockMask_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "didSkipBytes_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "frozen_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "upto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBlock_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsedPerBlock_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "EMPTY_BYTES_", NULL, 0x1a, "[B", &OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.PagedBytes$Reader;", "Lorg.apache.lucene.util.PagedBytes$PagedBytesDataInput;", "Lorg.apache.lucene.util.PagedBytes$PagedBytesDataOutput;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes = { 2, "PagedBytes", "org.apache.lucene.util", NULL, 0x11, 11, methods, 12, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilPagedBytes;
}

@end

void OrgApacheLuceneUtilPagedBytes_initWithInt_(OrgApacheLuceneUtilPagedBytes *self, jint blockBits) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->blocks_, [IOSObjectArray newArrayWithLength:16 type:IOSClass_byteArray(1)]);
  JreAssert((blockBits > 0 && blockBits <= 31), (JavaLangInteger_valueOfWithInt_(blockBits)));
  self->blockSize_ = JreLShift32(1, blockBits);
  self->blockBits_ = blockBits;
  self->blockMask_ = self->blockSize_ - 1;
  self->upto_ = self->blockSize_;
  self->bytesUsedPerBlock_ = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(self->blockSize_ + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER_));
  self->numBlocks_ = 0;
}

OrgApacheLuceneUtilPagedBytes *new_OrgApacheLuceneUtilPagedBytes_initWithInt_(jint blockBits) {
  OrgApacheLuceneUtilPagedBytes *self = [OrgApacheLuceneUtilPagedBytes alloc];
  OrgApacheLuceneUtilPagedBytes_initWithInt_(self, blockBits);
  return self;
}

void OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(OrgApacheLuceneUtilPagedBytes *self, IOSByteArray *block) {
  if (((IOSObjectArray *) nil_chk(self->blocks_))->size_ == self->numBlocks_) {
    JreStrongAssign(&self->blocks_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->blocks_, OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(self->numBlocks_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_))));
  }
  IOSObjectArray_Set(nil_chk(self->blocks_), self->numBlocks_++, block);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPagedBytes_Reader)

@implementation OrgApacheLuceneUtilPagedBytes_Reader

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)pagedBytes {
  OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(self, pagedBytes);
  return self;
}

- (void)fillSliceWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                        withLong:(jlong)start
                                         withInt:(jint)length {
  JreAssert((length >= 0), (JreStrcat("$I", @"length=", length)));
  JreAssert((length <= blockSize_ + 1), (JreStrcat("$I", @"length=", length)));
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->length_ = length;
  if (length == 0) {
    return;
  }
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  if (blockSize_ - offset >= length) {
    JreStrongAssign(&b->bytes_, IOSObjectArray_Get(nil_chk(blocks_), index));
    b->offset_ = offset;
  }
  else {
    JreStrongAssignAndConsume(&b->bytes_, [IOSByteArray newArrayWithLength:length]);
    b->offset_ = 0;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(nil_chk(blocks_), index), offset, b->bytes_, 0, blockSize_ - offset);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(blocks_, 1 + index), 0, b->bytes_, blockSize_ - offset, length - (blockSize_ - offset));
  }
}

- (void)fillWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                   withLong:(jlong)start {
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  IOSByteArray *block = JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_, IOSObjectArray_Get(nil_chk(blocks_), index));
  if ((IOSByteArray_Get(block, offset) & 128) == 0) {
    b->length_ = IOSByteArray_Get(block, offset);
    b->offset_ = offset + 1;
  }
  else {
    b->length_ = (JreLShift32((IOSByteArray_Get(block, offset) & (jint) 0x7f), 8)) | (IOSByteArray_Get(block, 1 + offset) & (jint) 0xff);
    b->offset_ = offset + 2;
    JreAssert((b->length_ > 0), (@"org/apache/lucene/util/PagedBytes.java:126 condition failed: assert b.length > 0;"));
  }
}

- (jlong)ramBytesUsed {
  jlong size = OrgApacheLuceneUtilPagedBytes_Reader_BASE_RAM_BYTES_USED_ + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(blocks_);
  if (((IOSObjectArray *) nil_chk(blocks_))->size_ > 0) {
    size += (blocks_->size_ - 1) * bytesUsedPerBlock_;
    size += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(IOSObjectArray_Get(blocks_, blocks_->size_ - 1));
  }
  return size;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  return JreStrcat("$IC", @"PagedBytes(blocksize=", blockSize_, ')');
}

- (void)dealloc {
  RELEASE_(blocks_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPagedBytes_Reader class]) {
    OrgApacheLuceneUtilPagedBytes_Reader_BASE_RAM_BYTES_USED_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilPagedBytes_Reader_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPagedBytes_Reader)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilPagedBytes:", "Reader", NULL, 0x2, NULL, NULL },
    { "fillSliceWithOrgApacheLuceneUtilBytesRef:withLong:withInt:", "fillSlice", "V", 0x1, NULL, NULL },
    { "fillWithOrgApacheLuceneUtilBytesRef:withLong:", "fill", "V", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED_", NULL, 0x1a, "J", &OrgApacheLuceneUtilPagedBytes_Reader_BASE_RAM_BYTES_USED_, NULL, .constantValue.asLong = 0 },
    { "blocks_", NULL, 0x12, "[[B", NULL, NULL, .constantValue.asLong = 0 },
    { "blockBits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockMask_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsedPerBlock_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_Reader = { 2, "Reader", "org.apache.lucene.util", "PagedBytes", 0x19, 6, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPagedBytes_Reader;
}

@end

void OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_Reader *self, OrgApacheLuceneUtilPagedBytes *pagedBytes) {
  NSObject_init(self);
  JreStrongAssign(&self->blocks_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(((OrgApacheLuceneUtilPagedBytes *) nil_chk(pagedBytes))->blocks_, pagedBytes->numBlocks_));
  self->blockBits_ = pagedBytes->blockBits_;
  self->blockMask_ = pagedBytes->blockMask_;
  self->blockSize_ = pagedBytes->blockSize_;
  self->bytesUsedPerBlock_ = pagedBytes->bytesUsedPerBlock_;
}

OrgApacheLuceneUtilPagedBytes_Reader *new_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *pagedBytes) {
  OrgApacheLuceneUtilPagedBytes_Reader *self = [OrgApacheLuceneUtilPagedBytes_Reader alloc];
  OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(self, pagedBytes);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_Reader)

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)outer$ {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *)clone {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *clone = [this$0_ getDataInput];
  [((OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *) nil_chk(clone)) setPositionWithLong:[self getPosition]];
  return clone;
}

- (jlong)getPosition {
  return (jlong) currentBlockIndex_ * this$0_->blockSize_ + currentBlockUpto_;
}

- (void)setPositionWithLong:(jlong)pos {
  currentBlockIndex_ = (jint) (JreRShift64(pos, this$0_->blockBits_));
  JreStrongAssign(&currentBlock_, IOSObjectArray_Get(nil_chk(this$0_->blocks_), currentBlockIndex_));
  currentBlockUpto_ = (jint) (pos & this$0_->blockMask_);
}

- (jbyte)readByte {
  if (currentBlockUpto_ == this$0_->blockSize_) {
    OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
  }
  return IOSByteArray_Get(nil_chk(currentBlock_), currentBlockUpto_++);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  JreAssert((((IOSByteArray *) nil_chk(b))->size_ >= offset + len), (@"org/apache/lucene/util/PagedBytes.java:339 condition failed: assert b.length >= offset + len;"));
  jint offsetEnd = offset + len;
  while (YES) {
    jint blockLeft = this$0_->blockSize_ - currentBlockUpto_;
    jint left = offsetEnd - offset;
    if (blockLeft < left) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, currentBlockUpto_, b, offset, blockLeft);
      OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
      offset += blockLeft;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, currentBlockUpto_, b, offset, left);
      currentBlockUpto_ += left;
      break;
    }
  }
}

- (void)nextBlock {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(currentBlock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilPagedBytes:", "PagedBytesDataInput", NULL, 0x0, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.util.PagedBytes$PagedBytesDataInput;", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "setPositionWithLong:", "setPosition", "V", 0x1, NULL, NULL },
    { "readByte", NULL, "B", 0x1, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
    { "nextBlock", NULL, "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.PagedBytes;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBlockIndex_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBlockUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBlock_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput = { 2, "PagedBytesDataInput", "org.apache.lucene.util", "PagedBytes", 0x11, 7, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput;
}

@end

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self, OrgApacheLuceneUtilPagedBytes *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneStoreDataInput_init(self);
  JreStrongAssign(&self->currentBlock_, IOSObjectArray_Get(nil_chk(outer$->blocks_), 0));
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self = [OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput alloc];
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self) {
  self->currentBlockIndex_++;
  self->currentBlockUpto_ = 0;
  JreStrongAssign(&self->currentBlock_, IOSObjectArray_Get(nil_chk(self->this$0_->blocks_), self->currentBlockIndex_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput)

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput

- (void)writeByteWithByte:(jbyte)b {
  if (this$0_->upto_ == this$0_->blockSize_) {
    if (this$0_->currentBlock_ != nil) {
      OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(this$0_, this$0_->currentBlock_);
    }
    JreStrongAssignAndConsume(&this$0_->currentBlock_, [IOSByteArray newArrayWithLength:this$0_->blockSize_]);
    this$0_->upto_ = 0;
  }
  *IOSByteArray_GetRef(nil_chk(this$0_->currentBlock_), this$0_->upto_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  JreAssert((((IOSByteArray *) nil_chk(b))->size_ >= offset + length), (@"org/apache/lucene/util/PagedBytes.java:383 condition failed: assert b.length >= offset + length;"));
  if (length == 0) {
    return;
  }
  if (this$0_->upto_ == this$0_->blockSize_) {
    if (this$0_->currentBlock_ != nil) {
      OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(this$0_, this$0_->currentBlock_);
    }
    JreStrongAssignAndConsume(&this$0_->currentBlock_, [IOSByteArray newArrayWithLength:this$0_->blockSize_]);
    this$0_->upto_ = 0;
  }
  jint offsetEnd = offset + length;
  while (YES) {
    jint left = offsetEnd - offset;
    jint blockLeft = this$0_->blockSize_ - this$0_->upto_;
    if (blockLeft < left) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, this$0_->currentBlock_, this$0_->upto_, blockLeft);
      OrgApacheLuceneUtilPagedBytes_addBlockWithByteArray_(this$0_, this$0_->currentBlock_);
      JreStrongAssignAndConsume(&this$0_->currentBlock_, [IOSByteArray newArrayWithLength:this$0_->blockSize_]);
      this$0_->upto_ = 0;
      offset += blockLeft;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, this$0_->currentBlock_, this$0_->upto_, left);
      this$0_->upto_ += left;
      break;
    }
  }
}

- (jlong)getPosition {
  return [this$0_ getPointer];
}

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)outer$ {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeByteWithByte:", "writeByte", "V", 0x1, NULL, NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilPagedBytes:", "init", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.PagedBytes;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput = { 2, "PagedBytesDataOutput", "org.apache.lucene.util", "PagedBytes", 0x11, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;
}

@end

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *self, OrgApacheLuceneUtilPagedBytes *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneStoreDataOutput_init(self);
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *self = [OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput alloc];
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)
