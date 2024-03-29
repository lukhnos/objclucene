//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/PriorityQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/PriorityQueue.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/PriorityQueue must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilPriorityQueue () {
 @public
  jint size_;
  jint maxSize_;
  IOSObjectArray *heap_;
}

- (jboolean)upHeapWithInt:(jint)origPos;

- (void)downHeapWithInt:(jint)i;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPriorityQueue, heap_, IOSObjectArray *)

__attribute__((unused)) static id OrgApacheLuceneUtilPriorityQueue_addWithId_(OrgApacheLuceneUtilPriorityQueue *self, id element);

__attribute__((unused)) static id OrgApacheLuceneUtilPriorityQueue_updateTop(OrgApacheLuceneUtilPriorityQueue *self);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilPriorityQueue_upHeapWithInt_(OrgApacheLuceneUtilPriorityQueue *self, jint origPos);

__attribute__((unused)) static void OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(OrgApacheLuceneUtilPriorityQueue *self, jint i);

@implementation OrgApacheLuceneUtilPriorityQueue

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, maxSize);
  return self;
}

- (instancetype)initWithInt:(jint)maxSize
                withBoolean:(jboolean)prepopulate {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(self, maxSize, prepopulate);
  return self;
}

- (jboolean)lessThanWithId:(id)a
                    withId:(id)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)getSentinelObject {
  return nil;
}

- (id)addWithId:(id)element {
  return OrgApacheLuceneUtilPriorityQueue_addWithId_(self, element);
}

- (id)insertWithOverflowWithId:(id)element {
  if (size_ < maxSize_) {
    OrgApacheLuceneUtilPriorityQueue_addWithId_(self, element);
    return nil;
  }
  else if (size_ > 0 && ![self lessThanWithId:element withId:IOSObjectArray_Get(nil_chk(heap_), 1)]) {
    id ret = IOSObjectArray_Get(nil_chk(heap_), 1);
    IOSObjectArray_Set(heap_, 1, element);
    OrgApacheLuceneUtilPriorityQueue_updateTop(self);
    return ret;
  }
  else {
    return element;
  }
}

- (id)top {
  return IOSObjectArray_Get(nil_chk(heap_), 1);
}

- (id)pop {
  if (size_ > 0) {
    id result = IOSObjectArray_Get(nil_chk(heap_), 1);
    IOSObjectArray_Set(heap_, 1, IOSObjectArray_Get(heap_, size_));
    IOSObjectArray_Set(heap_, size_, nil);
    size_--;
    OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(self, 1);
    return result;
  }
  else {
    return nil;
  }
}

- (id)updateTop {
  return OrgApacheLuceneUtilPriorityQueue_updateTop(self);
}

- (id)updateTopWithId:(id)newTop {
  IOSObjectArray_Set(nil_chk(heap_), 1, newTop);
  return OrgApacheLuceneUtilPriorityQueue_updateTop(self);
}

- (jint)size {
  return size_;
}

- (void)clear {
  for (jint i = 0; i <= size_; i++) {
    IOSObjectArray_Set(nil_chk(heap_), i, nil);
  }
  size_ = 0;
}

- (jboolean)removeWithId:(id)element {
  for (jint i = 1; i <= size_; i++) {
    if (JreObjectEqualsEquals(IOSObjectArray_Get(nil_chk(heap_), i), element)) {
      IOSObjectArray_Set(heap_, i, IOSObjectArray_Get(heap_, size_));
      IOSObjectArray_Set(heap_, size_, nil);
      size_--;
      if (i <= size_) {
        if (!OrgApacheLuceneUtilPriorityQueue_upHeapWithInt_(self, i)) {
          OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(self, i);
        }
      }
      return true;
    }
  }
  return false;
}

- (jboolean)upHeapWithInt:(jint)origPos {
  return OrgApacheLuceneUtilPriorityQueue_upHeapWithInt_(self, origPos);
}

- (void)downHeapWithInt:(jint)i {
  OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(self, i);
}

- (IOSObjectArray *)getHeapArray {
  return heap_;
}

- (void)dealloc {
  RELEASE_(heap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 2, 3, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x11, 6, 7, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 7, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x11, 10, 7, -1, 8, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 11, 7, -1, 12, -1, -1 },
    { NULL, "Z", 0x12, 13, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x12, 14, 0, -1, -1, -1, -1 },
    { NULL, "[LNSObject;", 0x14, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithInt:withBoolean:);
  methods[2].selector = @selector(lessThanWithId:withId:);
  methods[3].selector = @selector(getSentinelObject);
  methods[4].selector = @selector(addWithId:);
  methods[5].selector = @selector(insertWithOverflowWithId:);
  methods[6].selector = @selector(top);
  methods[7].selector = @selector(pop);
  methods[8].selector = @selector(updateTop);
  methods[9].selector = @selector(updateTopWithId:);
  methods[10].selector = @selector(size);
  methods[11].selector = @selector(clear);
  methods[12].selector = @selector(removeWithId:);
  methods[13].selector = @selector(upHeapWithInt:);
  methods[14].selector = @selector(downHeapWithInt:);
  methods[15].selector = @selector(getHeapArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "size_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "heap_", "[LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
  };
  static const void *ptrTable[] = { "I", "IZ", "lessThan", "LNSObject;LNSObject;", "(TT;TT;)Z", "()TT;", "add", "LNSObject;", "(TT;)TT;", "insertWithOverflow", "updateTop", "remove", "(TT;)Z", "upHeap", "downHeap", "[TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPriorityQueue = { "PriorityQueue", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 16, 3, -1, -1, -1, 16, -1 };
  return &_OrgApacheLuceneUtilPriorityQueue;
}

@end

void OrgApacheLuceneUtilPriorityQueue_initWithInt_(OrgApacheLuceneUtilPriorityQueue *self, jint maxSize) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(self, maxSize, true);
}

void OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(OrgApacheLuceneUtilPriorityQueue *self, jint maxSize, jboolean prepopulate) {
  NSObject_init(self);
  self->size_ = 0;
  jint heapSize;
  if (0 == maxSize) {
    heapSize = 2;
  }
  else {
    heapSize = maxSize + 1;
    if (heapSize > JreLoadStatic(OrgApacheLuceneUtilArrayUtil, MAX_ARRAY_LENGTH)) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"maxSize must be <= ", (JreLoadStatic(OrgApacheLuceneUtilArrayUtil, MAX_ARRAY_LENGTH) - 1), @"; got: ", maxSize));
    }
  }
  IOSObjectArray *h = [IOSObjectArray arrayWithLength:heapSize type:NSObject_class_()];
  JreStrongAssign(&self->heap_, h);
  self->maxSize_ = maxSize;
  if (prepopulate) {
    id sentinel = JreRetainedLocalValue([self getSentinelObject]);
    if (sentinel != nil) {
      IOSObjectArray_Set(self->heap_, 1, sentinel);
      for (jint i = 2; i < self->heap_->size_; i++) {
        IOSObjectArray_Set(self->heap_, i, [self getSentinelObject]);
      }
      self->size_ = maxSize;
    }
  }
}

id OrgApacheLuceneUtilPriorityQueue_addWithId_(OrgApacheLuceneUtilPriorityQueue *self, id element) {
  self->size_++;
  IOSObjectArray_Set(nil_chk(self->heap_), self->size_, element);
  OrgApacheLuceneUtilPriorityQueue_upHeapWithInt_(self, self->size_);
  return IOSObjectArray_Get(self->heap_, 1);
}

id OrgApacheLuceneUtilPriorityQueue_updateTop(OrgApacheLuceneUtilPriorityQueue *self) {
  OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(self, 1);
  return IOSObjectArray_Get(nil_chk(self->heap_), 1);
}

jboolean OrgApacheLuceneUtilPriorityQueue_upHeapWithInt_(OrgApacheLuceneUtilPriorityQueue *self, jint origPos) {
  jint i = origPos;
  id node = IOSObjectArray_Get(nil_chk(self->heap_), i);
  jint j = JreURShift32(i, 1);
  while (j > 0 && [self lessThanWithId:node withId:IOSObjectArray_Get(self->heap_, j)]) {
    IOSObjectArray_Set(self->heap_, i, IOSObjectArray_Get(self->heap_, j));
    i = j;
    j = JreURShift32(j, 1);
  }
  IOSObjectArray_Set(self->heap_, i, node);
  return i != origPos;
}

void OrgApacheLuceneUtilPriorityQueue_downHeapWithInt_(OrgApacheLuceneUtilPriorityQueue *self, jint i) {
  id node = IOSObjectArray_Get(nil_chk(self->heap_), i);
  jint j = JreLShift32(i, 1);
  jint k = j + 1;
  if (k <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(self->heap_, k) withId:IOSObjectArray_Get(self->heap_, j)]) {
    j = k;
  }
  while (j <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(self->heap_, j) withId:node]) {
    IOSObjectArray_Set(self->heap_, i, IOSObjectArray_Get(self->heap_, j));
    i = j;
    j = JreLShift32(i, 1);
    k = j + 1;
    if (k <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(self->heap_, k) withId:IOSObjectArray_Get(self->heap_, j)]) {
      j = k;
    }
  }
  IOSObjectArray_Set(self->heap_, i, node);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPriorityQueue)
