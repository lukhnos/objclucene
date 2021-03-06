//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/RollingCharBuffer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/util/RollingCharBuffer.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneAnalysisUtilRollingCharBuffer () {
 @public
  JavaIoReader *reader_;
  IOSCharArray *buffer_;
  jint nextWrite_;
  jint nextPos_;
  jint count_;
  jboolean end_;
}

- (jboolean)inBoundsWithInt:(jint)pos;

- (jint)getIndexWithInt:(jint)pos;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilRollingCharBuffer, reader_, JavaIoReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilRollingCharBuffer, buffer_, IOSCharArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisUtilRollingCharBuffer_inBoundsWithInt_(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self, jint pos);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self, jint pos);

@implementation OrgApacheLuceneAnalysisUtilRollingCharBuffer

- (void)resetWithJavaIoReader:(JavaIoReader *)reader {
  JreStrongAssign(&self->reader_, reader);
  nextPos_ = 0;
  nextWrite_ = 0;
  count_ = 0;
  end_ = false;
}

- (jint)getWithInt:(jint)pos {
  if (pos == nextPos_) {
    if (end_) {
      return -1;
    }
    if (count_ == ((IOSCharArray *) nil_chk(buffer_))->size_) {
      IOSCharArray *newBuffer = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(1 + count_, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, nextWrite_, newBuffer, 0, ((IOSCharArray *) nil_chk(buffer_))->size_ - nextWrite_);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, 0, newBuffer, ((IOSCharArray *) nil_chk(buffer_))->size_ - nextWrite_, nextWrite_);
      nextWrite_ = ((IOSCharArray *) nil_chk(buffer_))->size_;
      JreStrongAssign(&buffer_, newBuffer);
    }
    if (nextWrite_ == buffer_->size_) {
      nextWrite_ = 0;
    }
    jint toRead = buffer_->size_ - JavaLangMath_maxWithInt_withInt_(count_, nextWrite_);
    jint readCount = [((JavaIoReader *) nil_chk(reader_)) readWithCharArray:buffer_ withInt:nextWrite_ withInt:toRead];
    if (readCount == -1) {
      end_ = true;
      return -1;
    }
    jint ch = IOSCharArray_Get(nil_chk(buffer_), nextWrite_);
    nextWrite_ += readCount;
    count_ += readCount;
    nextPos_ += readCount;
    return ch;
  }
  else {
    JreAssert((pos < nextPos_), (@"org/apache/lucene/analysis/util/RollingCharBuffer.java:98 condition failed: assert pos < nextPos;"));
    JreAssert((nextPos_ - pos <= count_), (JreStrcat("$I$I$I", @"nextPos=", nextPos_, @" pos=", pos, @" count=", count_)));
    return IOSCharArray_Get(nil_chk(buffer_), OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(self, pos));
  }
}

- (jboolean)inBoundsWithInt:(jint)pos {
  return OrgApacheLuceneAnalysisUtilRollingCharBuffer_inBoundsWithInt_(self, pos);
}

- (jint)getIndexWithInt:(jint)pos {
  return OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(self, pos);
}

- (IOSCharArray *)getWithInt:(jint)posStart
                     withInt:(jint)length {
  JreAssert((length > 0), (@"org/apache/lucene/analysis/util/RollingCharBuffer.java:123 condition failed: assert length > 0;"));
  JreAssert((OrgApacheLuceneAnalysisUtilRollingCharBuffer_inBoundsWithInt_(self, posStart)), (JreStrcat("$I$I", @"posStart=", posStart, @" length=", length)));
  jint startIndex = OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(self, posStart);
  jint endIndex = OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(self, posStart + length);
  IOSCharArray *result = [IOSCharArray arrayWithLength:length];
  if (endIndex >= startIndex && length < ((IOSCharArray *) nil_chk(buffer_))->size_) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, startIndex, result, 0, endIndex - startIndex);
  }
  else {
    jint part1 = ((IOSCharArray *) nil_chk(buffer_))->size_ - startIndex;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, startIndex, result, 0, part1);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, 0, result, ((IOSCharArray *) nil_chk(buffer_))->size_ - startIndex, length - part1);
  }
  return result;
}

- (void)freeBeforeWithInt:(jint)pos {
  JreAssert((pos >= 0), (@"org/apache/lucene/analysis/util/RollingCharBuffer.java:146 condition failed: assert pos >= 0;"));
  JreAssert((pos <= nextPos_), (@"org/apache/lucene/analysis/util/RollingCharBuffer.java:147 condition failed: assert pos <= nextPos;"));
  jint newCount = nextPos_ - pos;
  JreAssert((newCount <= count_), (JreStrcat("$I$I", @"newCount=", newCount, @" count=", count_)));
  JreAssert((newCount <= ((IOSCharArray *) nil_chk(buffer_))->size_), (JreStrcat("$I$I", @"newCount=", newCount, @" buf.length=", buffer_->size_)));
  count_ = newCount;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilRollingCharBuffer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "resetWithJavaIoReader:", "reset", "V", 0x1, NULL, NULL },
    { "getWithInt:", "get", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "inBoundsWithInt:", "inBounds", "Z", 0x2, NULL, NULL },
    { "getIndexWithInt:", "getIndex", "I", 0x2, NULL, NULL },
    { "getWithInt:withInt:", "get", "[C", 0x1, NULL, NULL },
    { "freeBeforeWithInt:", "freeBefore", "V", 0x1, NULL, NULL },
    { "init", "RollingCharBuffer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x2, "Ljava.io.Reader;", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "nextWrite_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextPos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilRollingCharBuffer = { 2, "RollingCharBuffer", "org.apache.lucene.analysis.util", NULL, 0x11, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilRollingCharBuffer;
}

@end

jboolean OrgApacheLuceneAnalysisUtilRollingCharBuffer_inBoundsWithInt_(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self, jint pos) {
  return pos >= 0 && pos < self->nextPos_ && pos >= self->nextPos_ - self->count_;
}

jint OrgApacheLuceneAnalysisUtilRollingCharBuffer_getIndexWithInt_(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self, jint pos) {
  jint index = self->nextWrite_ - (self->nextPos_ - pos);
  if (index < 0) {
    index += ((IOSCharArray *) nil_chk(self->buffer_))->size_;
    JreAssert((index >= 0), (@"org/apache/lucene/analysis/util/RollingCharBuffer.java:117 condition failed: assert index >= 0;"));
  }
  return index;
}

void OrgApacheLuceneAnalysisUtilRollingCharBuffer_init(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffer_, [IOSCharArray newArrayWithLength:512]);
}

OrgApacheLuceneAnalysisUtilRollingCharBuffer *new_OrgApacheLuceneAnalysisUtilRollingCharBuffer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilRollingCharBuffer, init)
}

OrgApacheLuceneAnalysisUtilRollingCharBuffer *create_OrgApacheLuceneAnalysisUtilRollingCharBuffer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilRollingCharBuffer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilRollingCharBuffer)
