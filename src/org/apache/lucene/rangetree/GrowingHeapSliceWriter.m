//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/GrowingHeapSliceWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/rangetree/GrowingHeapSliceWriter.h"
#include "org/apache/lucene/rangetree/HeapSliceReader.h"
#include "org/apache/lucene/rangetree/SliceReader.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/rangetree/GrowingHeapSliceWriter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneRangetreeGrowingHeapSliceWriter () {
 @public
  jint nextWrite_;
}

- (IOSIntArray *)growExactWithIntArray:(IOSIntArray *)arr
                               withInt:(jint)size;

- (IOSLongArray *)growExactWithLongArray:(IOSLongArray *)arr
                                 withInt:(jint)size;

@end

__attribute__((unused)) static IOSIntArray *OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithIntArray_withInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, IOSIntArray *arr, jint size);

__attribute__((unused)) static IOSLongArray *OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithLongArray_withInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, IOSLongArray *arr, jint size);

@implementation OrgApacheLuceneRangetreeGrowingHeapSliceWriter

- (instancetype)initPackagePrivateWithInt:(jint)maxSize {
  OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initPackagePrivateWithInt_(self, maxSize);
  return self;
}

- (IOSIntArray *)growExactWithIntArray:(IOSIntArray *)arr
                               withInt:(jint)size {
  return OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithIntArray_withInt_(self, arr, size);
}

- (IOSLongArray *)growExactWithLongArray:(IOSLongArray *)arr
                                 withInt:(jint)size {
  return OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithLongArray_withInt_(self, arr, size);
}

- (void)appendWithLong:(jlong)value
              withLong:(jlong)ord
               withInt:(jint)docID {
  JreAssert(ord == nextWrite_, @"org/apache/lucene/rangetree/GrowingHeapSliceWriter.java:53 condition failed: assert ord == nextWrite;");
  if (((IOSLongArray *) nil_chk(values_))->size_ == nextWrite_) {
    jint nextSize = JavaLangMath_minWithInt_withInt_(maxSize_, OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(nextWrite_ + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT));
    JreAssert(nextSize > nextWrite_, JreStrcat("$I$I", @"nextSize=", nextSize, @" vs nextWrite=", nextWrite_));
    JreStrongAssign(&values_, OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithLongArray_withInt_(self, values_, nextSize));
    JreStrongAssign(&ords_, OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithLongArray_withInt_(self, ords_, nextSize));
    JreStrongAssign(&docIDs_, OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithIntArray_withInt_(self, docIDs_, nextSize));
  }
  *IOSLongArray_GetRef(nil_chk(values_), nextWrite_) = value;
  *IOSLongArray_GetRef(nil_chk(ords_), nextWrite_) = ord;
  *IOSIntArray_GetRef(nil_chk(docIDs_), nextWrite_) = docID;
  nextWrite_++;
}

- (id<OrgApacheLuceneRangetreeSliceReader>)getReaderWithLong:(jlong)start {
  return create_OrgApacheLuceneRangetreeHeapSliceReader_initPackagePrivateWithLongArray_withLongArray_withIntArray_withInt_withInt_(values_, ords_, docIDs_, (jint) start, nextWrite_);
}

- (void)close {
}

- (void)destroy {
}

- (NSString *)description {
  return JreStrcat("$I$IC", @"GrowingHeapSliceWriter(count=", nextWrite_, @" alloc=", ((IOSLongArray *) nil_chk(values_))->size_, ')');
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(docIDs_);
  RELEASE_(ords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[I", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "[J", 0x2, 1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneRangetreeSliceReader;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:);
  methods[1].selector = @selector(growExactWithIntArray:withInt:);
  methods[2].selector = @selector(growExactWithLongArray:withInt:);
  methods[3].selector = @selector(appendWithLong:withLong:withInt:);
  methods[4].selector = @selector(getReaderWithLong:);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(destroy);
  methods[7].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docIDs_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "ords_", "[J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "nextWrite_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxSize_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "growExact", "[II", "[JI", "append", "JJI", "getReader", "J", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeGrowingHeapSliceWriter = { "GrowingHeapSliceWriter", "org.apache.lucene.rangetree", ptrTable, methods, fields, 7, 0x10, 8, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneRangetreeGrowingHeapSliceWriter;
}

@end

void OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initPackagePrivateWithInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, jint maxSize) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->docIDs_, [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->ords_, [IOSLongArray newArrayWithLength:16]);
  self->maxSize_ = maxSize;
}

OrgApacheLuceneRangetreeGrowingHeapSliceWriter *new_OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initPackagePrivateWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeGrowingHeapSliceWriter, initPackagePrivateWithInt_, maxSize)
}

OrgApacheLuceneRangetreeGrowingHeapSliceWriter *create_OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initPackagePrivateWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeGrowingHeapSliceWriter, initPackagePrivateWithInt_, maxSize)
}

IOSIntArray *OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithIntArray_withInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, IOSIntArray *arr, jint size) {
  JreAssert(size > ((IOSIntArray *) nil_chk(arr))->size_, @"org/apache/lucene/rangetree/GrowingHeapSliceWriter.java:38 condition failed: assert size > arr.length;");
  IOSIntArray *newArr = [IOSIntArray arrayWithLength:size];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arr, 0, newArr, 0, arr->size_);
  return newArr;
}

IOSLongArray *OrgApacheLuceneRangetreeGrowingHeapSliceWriter_growExactWithLongArray_withInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, IOSLongArray *arr, jint size) {
  JreAssert(size > ((IOSLongArray *) nil_chk(arr))->size_, @"org/apache/lucene/rangetree/GrowingHeapSliceWriter.java:45 condition failed: assert size > arr.length;");
  IOSLongArray *newArr = [IOSLongArray arrayWithLength:size];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arr, 0, newArr, 0, arr->size_);
  return newArr;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeGrowingHeapSliceWriter)
