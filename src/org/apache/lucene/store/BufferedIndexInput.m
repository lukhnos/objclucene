//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/BufferedIndexInput.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneStoreBufferedIndexInput () {
 @public
  jint bufferSize_;
  jlong bufferStart_;
  jint bufferLength_;
  jint bufferPosition_;
}

- (void)checkBufferSizeWithInt:(jint)bufferSize;

- (void)refill;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(OrgApacheLuceneStoreBufferedIndexInput *self, jint bufferSize);

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_readBytesWithByteArray_withInt_withInt_withBoolean_(OrgApacheLuceneStoreBufferedIndexInput *self, IOSByteArray *b, jint offset, jint len, jboolean useBuffer);

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_refill(OrgApacheLuceneStoreBufferedIndexInput *self);

__attribute__((unused)) static jlong OrgApacheLuceneStoreBufferedIndexInput_getFilePointer(OrgApacheLuceneStoreBufferedIndexInput *self);

@interface OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput : OrgApacheLuceneStoreBufferedIndexInput {
 @public
  OrgApacheLuceneStoreIndexInput *base_;
  jlong fileOffset_;
  jlong length_;
}

- (instancetype)initWithNSString:(NSString *)sliceDescription
withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)base
                        withLong:(jlong)offset
                        withLong:(jlong)length;

- (OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *)clone;

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)len;

- (void)seekInternalWithLong:(jlong)pos;

- (void)close;

- (jlong)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput, base_, OrgApacheLuceneStoreIndexInput *)

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *self, NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *base, jlong offset, jlong length);

__attribute__((unused)) static OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *new_OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *base, jlong offset, jlong length) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput)

@implementation OrgApacheLuceneStoreBufferedIndexInput

- (jbyte)readByte {
  if (bufferPosition_ >= bufferLength_) OrgApacheLuceneStoreBufferedIndexInput_refill(self);
  return IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
}

- (instancetype)initWithNSString:(NSString *)resourceDesc {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_(self, resourceDesc);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDesc
withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withOrgApacheLuceneStoreIOContext_(self, resourceDesc, context);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDesc
                         withInt:(jint)bufferSize {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, bufferSize);
  return self;
}

- (void)setBufferSizeWithInt:(jint)newSize {
  JreAssert((buffer_ == nil || bufferSize_ == buffer_->size_), (JreStrcat("$@$I$I", @"buffer=", buffer_, @" bufferSize=", bufferSize_, @" buffer.length=", (buffer_ != nil ? buffer_->size_ : 0))));
  if (newSize != bufferSize_) {
    OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, newSize);
    bufferSize_ = newSize;
    if (buffer_ != nil) {
      IOSByteArray *newBuffer = [IOSByteArray arrayWithLength:newSize];
      jint leftInBuffer = bufferLength_ - bufferPosition_;
      jint numToCopy;
      if (leftInBuffer > newSize) numToCopy = newSize;
      else numToCopy = leftInBuffer;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPosition_, newBuffer, 0, numToCopy);
      bufferStart_ += bufferPosition_;
      bufferPosition_ = 0;
      bufferLength_ = numToCopy;
      [self newBufferWithByteArray:newBuffer];
    }
  }
}

- (void)newBufferWithByteArray:(IOSByteArray *)newBuffer {
  JreStrongAssign(&buffer_, newBuffer);
}

- (jint)getBufferSize {
  return bufferSize_;
}

- (void)checkBufferSizeWithInt:(jint)bufferSize {
  OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, bufferSize);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  OrgApacheLuceneStoreBufferedIndexInput_readBytesWithByteArray_withInt_withInt_withBoolean_(self, b, offset, len, YES);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len
                   withBoolean:(jboolean)useBuffer {
  OrgApacheLuceneStoreBufferedIndexInput_readBytesWithByteArray_withInt_withInt_withBoolean_(self, b, offset, len, useBuffer);
}

- (jshort)readShort {
  if (2 <= (bufferLength_ - bufferPosition_)) {
    jint unseq$1 = bufferPosition_++;
    return (jshort) ((JreLShift32((IOSByteArray_Get(nil_chk(buffer_), unseq$1) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xFF));
  }
  else {
    return [super readShort];
  }
}

- (jint)readInt {
  if (4 <= (bufferLength_ - bufferPosition_)) {
    jint unseq$1 = bufferPosition_++;
    jint unseq$2 = bufferPosition_++;
    jint unseq$3 = bufferPosition_++;
    return (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), unseq$1) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$2) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$3) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xFF);
  }
  else {
    return [super readInt];
  }
}

- (jlong)readLong {
  if (8 <= (bufferLength_ - bufferPosition_)) {
    jint unseq$1 = bufferPosition_++;
    jint unseq$2 = bufferPosition_++;
    jint unseq$3 = bufferPosition_++;
    jint i1 = (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), unseq$1) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$2) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$3) & (jint) 0xff), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff);
    jint unseq$4 = bufferPosition_++;
    jint unseq$5 = bufferPosition_++;
    jint unseq$6 = bufferPosition_++;
    jint i2 = (JreLShift32((IOSByteArray_Get(buffer_, unseq$4) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$5) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, unseq$6) & (jint) 0xff), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff);
    return (JreLShift64(((jlong) i1), 32)) | (i2 & (jlong) 0xFFFFFFFFLL);
  }
  else {
    return [super readLong];
  }
}

- (jint)readVInt {
  if (5 <= (bufferLength_ - bufferPosition_)) {
    jbyte b = IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
    if (b >= 0) return b;
    jint i = b & (jint) 0x7F;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift32((b & (jint) 0x7F), 7);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift32((b & (jint) 0x7F), 14);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift32((b & (jint) 0x7F), 21);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift32((b & (jint) 0x0F), 28);
    if ((b & (jint) 0xF0) == 0) return i;
    @throw [new_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)") autorelease];
  }
  else {
    return [super readVInt];
  }
}

- (jlong)readVLong {
  if (9 <= bufferLength_ - bufferPosition_) {
    jbyte b = IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
    if (b >= 0) return b;
    jlong i = b & (jlong) 0x7FLL;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 7);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 14);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 21);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 28);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 35);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 42);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 49);
    if (b >= 0) return i;
    b = IOSByteArray_Get(buffer_, bufferPosition_++);
    i |= JreLShift64((b & (jlong) 0x7FLL), 56);
    if (b >= 0) return i;
    @throw [new_JavaIoIOException_initWithNSString_(@"Invalid vLong detected (negative values disallowed)") autorelease];
  }
  else {
    return [super readVLong];
  }
}

- (jbyte)readByteWithLong:(jlong)pos {
  jlong index = pos - bufferStart_;
  if (index < 0 || index >= bufferLength_) {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
    OrgApacheLuceneStoreBufferedIndexInput_refill(self);
    index = 0;
  }
  return IOSByteArray_Get(nil_chk(buffer_), (jint) index);
}

- (jshort)readShortWithLong:(jlong)pos {
  jlong index = pos - bufferStart_;
  if (index < 0 || index >= bufferLength_ - 1) {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
    OrgApacheLuceneStoreBufferedIndexInput_refill(self);
    index = 0;
  }
  return (jshort) ((JreLShift32((IOSByteArray_Get(nil_chk(buffer_), (jint) index) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, (jint) index + 1) & (jint) 0xFF));
}

- (jint)readIntWithLong:(jlong)pos {
  jlong index = pos - bufferStart_;
  if (index < 0 || index >= bufferLength_ - 3) {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
    OrgApacheLuceneStoreBufferedIndexInput_refill(self);
    index = 0;
  }
  return (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), (jint) index) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 1) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 2) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, (jint) index + 3) & (jint) 0xFF);
}

- (jlong)readLongWithLong:(jlong)pos {
  jlong index = pos - bufferStart_;
  if (index < 0 || index >= bufferLength_ - 7) {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
    OrgApacheLuceneStoreBufferedIndexInput_refill(self);
    index = 0;
  }
  jint i1 = (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), (jint) index) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 1) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 2) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, (jint) index + 3) & (jint) 0xFF);
  jint i2 = (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 4) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 5) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, (jint) index + 6) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, (jint) index + 7) & (jint) 0xFF);
  return (JreLShift64(((jlong) i1), 32)) | (i2 & (jlong) 0xFFFFFFFFLL);
}

- (void)refill {
  OrgApacheLuceneStoreBufferedIndexInput_refill(self);
}

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)getFilePointer {
  return OrgApacheLuceneStoreBufferedIndexInput_getFilePointer(self);
}

- (void)seekWithLong:(jlong)pos {
  if (pos >= bufferStart_ && pos < (bufferStart_ + bufferLength_)) bufferPosition_ = (jint) (pos - bufferStart_);
  else {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
  }
}

- (void)seekInternalWithLong:(jlong)pos {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneStoreBufferedIndexInput *)clone {
  OrgApacheLuceneStoreBufferedIndexInput *clone = (OrgApacheLuceneStoreBufferedIndexInput *) check_class_cast([super clone], [OrgApacheLuceneStoreBufferedIndexInput class]);
  JreStrongAssign(&((OrgApacheLuceneStoreBufferedIndexInput *) nil_chk(clone))->buffer_, nil);
  clone->bufferLength_ = 0;
  clone->bufferPosition_ = 0;
  clone->bufferStart_ = OrgApacheLuceneStoreBufferedIndexInput_getFilePointer(self);
  return clone;
}

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)offset
                                             withLong:(jlong)length {
  return OrgApacheLuceneStoreBufferedIndexInput_wrapWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(sliceDescription, self, offset, length);
}

- (jint)flushBufferWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                              withLong:(jlong)numBytes {
  jint toCopy = bufferLength_ - bufferPosition_;
  if (toCopy > numBytes) {
    toCopy = (jint) numBytes;
  }
  if (toCopy > 0) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:buffer_ withInt:bufferPosition_ withInt:toCopy];
    bufferPosition_ += toCopy;
  }
  return toCopy;
}

+ (jint)bufferSizeWithOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  return OrgApacheLuceneStoreBufferedIndexInput_bufferSizeWithOrgApacheLuceneStoreIOContext_(context);
}

+ (OrgApacheLuceneStoreBufferedIndexInput *)wrapWithNSString:(NSString *)sliceDescription
                          withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)other
                                                    withLong:(jlong)offset
                                                    withLong:(jlong)length {
  return OrgApacheLuceneStoreBufferedIndexInput_wrapWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(sliceDescription, other, offset, length);
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readByte", NULL, "B", 0x11, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "BufferedIndexInput", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneStoreIOContext:", "BufferedIndexInput", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withInt:", "BufferedIndexInput", NULL, 0x1, NULL, NULL },
    { "setBufferSizeWithInt:", "setBufferSize", "V", 0x11, NULL, NULL },
    { "newBufferWithByteArray:", "newBuffer", "V", 0x4, NULL, NULL },
    { "getBufferSize", NULL, "I", 0x11, NULL, NULL },
    { "checkBufferSizeWithInt:", "checkBufferSize", "V", 0x2, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "readBytesWithByteArray:withInt:withInt:withBoolean:", "readBytes", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "readShort", NULL, "S", 0x11, "Ljava.io.IOException;", NULL },
    { "readInt", NULL, "I", 0x11, "Ljava.io.IOException;", NULL },
    { "readLong", NULL, "J", 0x11, "Ljava.io.IOException;", NULL },
    { "readVInt", NULL, "I", 0x11, "Ljava.io.IOException;", NULL },
    { "readVLong", NULL, "J", 0x11, "Ljava.io.IOException;", NULL },
    { "readByteWithLong:", "readByte", "B", 0x11, "Ljava.io.IOException;", NULL },
    { "readShortWithLong:", "readShort", "S", 0x11, "Ljava.io.IOException;", NULL },
    { "readIntWithLong:", "readInt", "I", 0x11, "Ljava.io.IOException;", NULL },
    { "readLongWithLong:", "readLong", "J", 0x11, "Ljava.io.IOException;", NULL },
    { "refill", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "readInternalWithByteArray:withInt:withInt:", "readInternal", "V", 0x404, "Ljava.io.IOException;", NULL },
    { "getFilePointer", NULL, "J", 0x11, NULL, NULL },
    { "seekWithLong:", "seek", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "seekInternalWithLong:", "seekInternal", "V", 0x404, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.store.BufferedIndexInput;", 0x1, NULL, NULL },
    { "sliceWithNSString:withLong:withLong:", "slice", "Lorg.apache.lucene.store.IndexInput;", 0x1, "Ljava.io.IOException;", NULL },
    { "flushBufferWithOrgApacheLuceneStoreIndexOutput:withLong:", "flushBuffer", "I", 0x14, "Ljava.io.IOException;", NULL },
    { "bufferSizeWithOrgApacheLuceneStoreIOContext:", "bufferSize", "I", 0x9, NULL, NULL },
    { "wrapWithNSString:withOrgApacheLuceneStoreIndexInput:withLong:withLong:", "wrap", "Lorg.apache.lucene.store.BufferedIndexInput;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE", "BUFFER_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE },
    { "MIN_BUFFER_SIZE", "MIN_BUFFER_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreBufferedIndexInput_MIN_BUFFER_SIZE },
    { "MERGE_BUFFER_SIZE", "MERGE_BUFFER_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreBufferedIndexInput_MERGE_BUFFER_SIZE },
    { "bufferSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x4, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferStart_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferPosition_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.store.BufferedIndexInput$SlicedIndexInput;"};
  static const J2ObjcClassInfo _OrgApacheLuceneStoreBufferedIndexInput = { 2, "BufferedIndexInput", "org.apache.lucene.store", NULL, 0x401, 29, methods, 8, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneStoreBufferedIndexInput;
}

@end

void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE);
}

void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc, OrgApacheLuceneStoreIOContext *context) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, OrgApacheLuceneStoreBufferedIndexInput_bufferSizeWithOrgApacheLuceneStoreIOContext_(context));
}

void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc, jint bufferSize) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, resourceDesc);
  self->bufferSize_ = OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE;
  self->bufferStart_ = 0;
  self->bufferLength_ = 0;
  self->bufferPosition_ = 0;
  OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, bufferSize);
  self->bufferSize_ = bufferSize;
}

void OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(OrgApacheLuceneStoreBufferedIndexInput *self, jint bufferSize) {
  if (bufferSize < OrgApacheLuceneStoreBufferedIndexInput_MIN_BUFFER_SIZE) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"bufferSize must be at least MIN_BUFFER_SIZE (got ", bufferSize, ')')) autorelease];
}

void OrgApacheLuceneStoreBufferedIndexInput_readBytesWithByteArray_withInt_withInt_withBoolean_(OrgApacheLuceneStoreBufferedIndexInput *self, IOSByteArray *b, jint offset, jint len, jboolean useBuffer) {
  jint available = self->bufferLength_ - self->bufferPosition_;
  if (len <= available) {
    if (len > 0) JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->buffer_, self->bufferPosition_, b, offset, len);
    self->bufferPosition_ += len;
  }
  else {
    if (available > 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->buffer_, self->bufferPosition_, b, offset, available);
      offset += available;
      len -= available;
      self->bufferPosition_ += available;
    }
    if (useBuffer && len < self->bufferSize_) {
      OrgApacheLuceneStoreBufferedIndexInput_refill(self);
      if (self->bufferLength_ < len) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->buffer_, 0, b, offset, self->bufferLength_);
        @throw [new_JavaIoEOFException_initWithNSString_(JreStrcat("$@", @"read past EOF: ", self)) autorelease];
      }
      else {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->buffer_, 0, b, offset, len);
        self->bufferPosition_ = len;
      }
    }
    else {
      jlong after = self->bufferStart_ + self->bufferPosition_ + len;
      if (after > [self length]) @throw [new_JavaIoEOFException_initWithNSString_(JreStrcat("$@", @"read past EOF: ", self)) autorelease];
      [self readInternalWithByteArray:b withInt:offset withInt:len];
      self->bufferStart_ = after;
      self->bufferPosition_ = 0;
      self->bufferLength_ = 0;
    }
  }
}

void OrgApacheLuceneStoreBufferedIndexInput_refill(OrgApacheLuceneStoreBufferedIndexInput *self) {
  jlong start = self->bufferStart_ + self->bufferPosition_;
  jlong end = start + self->bufferSize_;
  if (end > [self length]) end = [self length];
  jint newLength = (jint) (end - start);
  if (newLength <= 0) @throw [new_JavaIoEOFException_initWithNSString_(JreStrcat("$@", @"read past EOF: ", self)) autorelease];
  if (self->buffer_ == nil) {
    [self newBufferWithByteArray:[IOSByteArray arrayWithLength:self->bufferSize_]];
    [self seekInternalWithLong:self->bufferStart_];
  }
  [self readInternalWithByteArray:self->buffer_ withInt:0 withInt:newLength];
  self->bufferLength_ = newLength;
  self->bufferStart_ = start;
  self->bufferPosition_ = 0;
}

jlong OrgApacheLuceneStoreBufferedIndexInput_getFilePointer(OrgApacheLuceneStoreBufferedIndexInput *self) {
  return self->bufferStart_ + self->bufferPosition_;
}

jint OrgApacheLuceneStoreBufferedIndexInput_bufferSizeWithOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreIOContext *context) {
  OrgApacheLuceneStoreBufferedIndexInput_initialize();
  switch ([((OrgApacheLuceneStoreIOContext *) nil_chk(context))->context_ ordinal]) {
    case OrgApacheLuceneStoreIOContext_Context_MERGE:
    return OrgApacheLuceneStoreBufferedIndexInput_MERGE_BUFFER_SIZE;
    default:
    return OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE;
  }
}

OrgApacheLuceneStoreBufferedIndexInput *OrgApacheLuceneStoreBufferedIndexInput_wrapWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *other, jlong offset, jlong length) {
  OrgApacheLuceneStoreBufferedIndexInput_initialize();
  return [new_OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(sliceDescription, other, offset, length) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreBufferedIndexInput)

@implementation OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput

- (instancetype)initWithNSString:(NSString *)sliceDescription
withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)base
                        withLong:(jlong)offset
                        withLong:(jlong)length {
  OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(self, sliceDescription, base, offset, length);
  return self;
}

- (OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *)clone {
  OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *clone = (OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *) check_class_cast([super clone], [OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput class]);
  JreStrongAssign(&((OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *) nil_chk(clone))->base_, [((OrgApacheLuceneStoreIndexInput *) nil_chk(base_)) clone]);
  clone->fileOffset_ = fileOffset_;
  clone->length_ = length_;
  return clone;
}

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)len {
  jlong start = OrgApacheLuceneStoreBufferedIndexInput_getFilePointer(self);
  if (start + len > length_) {
    @throw [new_JavaIoEOFException_initWithNSString_(JreStrcat("$@", @"read past EOF: ", self)) autorelease];
  }
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(base_)) seekWithLong:fileOffset_ + start];
  [base_ readBytesWithByteArray:b withInt:offset withInt:len withBoolean:NO];
}

- (void)seekInternalWithLong:(jlong)pos {
}

- (void)close {
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(base_)) close];
}

- (jlong)length {
  return length_;
}

- (void)dealloc {
  RELEASE_(base_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneStoreIndexInput:withLong:withLong:", "SlicedIndexInput", NULL, 0x0, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.store.BufferedIndexInput$SlicedIndexInput;", 0x1, NULL, NULL },
    { "readInternalWithByteArray:withInt:withInt:", "readInternal", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "seekInternalWithLong:", "seekInternal", "V", 0x4, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "length", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "base_", NULL, 0x0, "Lorg.apache.lucene.store.IndexInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "fileOffset_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput = { 2, "SlicedIndexInput", "org.apache.lucene.store", "BufferedIndexInput", 0x1a, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput;
}

@end

void OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *self, NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *base, jlong offset, jlong length) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, (sliceDescription == nil) ? [((OrgApacheLuceneStoreIndexInput *) nil_chk(base)) description] : (JreStrcat("$$$C", [((OrgApacheLuceneStoreIndexInput *) nil_chk(base)) description], @" [slice=", sliceDescription, ']')), OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE);
  if (offset < 0 || length < 0 || offset + length > [((OrgApacheLuceneStoreIndexInput *) nil_chk(base)) length]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"slice() ", sliceDescription, @" out of bounds: ", base)) autorelease];
  }
  JreStrongAssign(&self->base_, [((OrgApacheLuceneStoreIndexInput *) nil_chk(base)) clone]);
  self->fileOffset_ = offset;
  self->length_ = length;
}

OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *new_OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *base, jlong offset, jlong length) {
  OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *self = [OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput alloc];
  OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput_initWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(self, sliceDescription, base, offset, length);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput)
