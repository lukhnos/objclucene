//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisiPriorityQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/util/Arrays.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/search/DisiPriorityQueue.h"
#include "org/apache/lucene/search/DisiWrapper.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DisiPriorityQueue must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchDisiPriorityQueue () {
 @public
  IOSObjectArray *heap_;
  jint size_;
}

- (OrgApacheLuceneSearchDisiWrapper *)prependWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)w1
                                             withOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)w2;

- (OrgApacheLuceneSearchDisiWrapper *)topListWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)list
                                        withOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                                          withInt:(jint)size
                                                                          withInt:(jint)i;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisiPriorityQueue, heap_, IOSObjectArray *)

__attribute__((unused)) static OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchDisiPriorityQueue *self, OrgApacheLuceneSearchDisiWrapper *w1, OrgApacheLuceneSearchDisiWrapper *w2);

__attribute__((unused)) static OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(OrgApacheLuceneSearchDisiPriorityQueue *self, OrgApacheLuceneSearchDisiWrapper *list, IOSObjectArray *heap, jint size, jint i);

@implementation OrgApacheLuceneSearchDisiPriorityQueue

+ (jint)leftNodeWithInt:(jint)node {
  return OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(node);
}

+ (jint)rightNodeWithInt:(jint)leftNode {
  return OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(leftNode);
}

+ (jint)parentNodeWithInt:(jint)node {
  return OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(node);
}

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(self, maxSize);
  return self;
}

- (jint)size {
  return size_;
}

- (OrgApacheLuceneSearchDisiWrapper *)top {
  return IOSObjectArray_Get(nil_chk(heap_), 0);
}

- (OrgApacheLuceneSearchDisiWrapper *)topList {
  IOSObjectArray *heap = self->heap_;
  jint size = self->size_;
  OrgApacheLuceneSearchDisiWrapper *list = IOSObjectArray_Get(nil_chk(heap), 0);
  JreStrongAssign(&((OrgApacheLuceneSearchDisiWrapper *) nil_chk(list))->next_, nil);
  if (size >= 3) {
    list = OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(self, list, heap, size, 1);
    list = OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(self, list, heap, size, 2);
  }
  else if (size == 2 && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, 1)))->doc_ == list->doc_) {
    list = OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(self, IOSObjectArray_Get(heap, 1), list);
  }
  return list;
}

- (OrgApacheLuceneSearchDisiWrapper *)prependWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)w1
                                             withOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)w2 {
  return OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(self, w1, w2);
}

- (OrgApacheLuceneSearchDisiWrapper *)topListWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)list
                                        withOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                                          withInt:(jint)size
                                                                          withInt:(jint)i {
  return OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(self, list, heap, size, i);
}

- (OrgApacheLuceneSearchDisiWrapper *)addWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)entry_ {
  IOSObjectArray *heap = self->heap_;
  jint size = self->size_;
  IOSObjectArray_Set(nil_chk(heap), size, entry_);
  [self upHeapWithInt:size];
  self->size_ = size + 1;
  return IOSObjectArray_Get(heap, 0);
}

- (OrgApacheLuceneSearchDisiWrapper *)pop {
  IOSObjectArray *heap = self->heap_;
  OrgApacheLuceneSearchDisiWrapper *result = IOSObjectArray_Get(nil_chk(heap), 0);
  jint i = --size_;
  IOSObjectArray_Set(heap, 0, IOSObjectArray_Get(heap, i));
  IOSObjectArray_Set(heap, i, nil);
  [self downHeapWithInt:i];
  return result;
}

- (OrgApacheLuceneSearchDisiWrapper *)updateTop {
  [self downHeapWithInt:size_];
  return IOSObjectArray_Get(nil_chk(heap_), 0);
}

- (OrgApacheLuceneSearchDisiWrapper *)updateTopWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)topReplacement {
  IOSObjectArray_Set(nil_chk(heap_), 0, topReplacement);
  return [self updateTop];
}

- (void)upHeapWithInt:(jint)i {
  OrgApacheLuceneSearchDisiWrapper *node = IOSObjectArray_Get(nil_chk(heap_), i);
  jint nodeDoc = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(node))->doc_;
  jint j = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(i);
  while (j >= 0 && nodeDoc < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, j)))->doc_) {
    IOSObjectArray_Set(heap_, i, IOSObjectArray_Get(heap_, j));
    i = j;
    j = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(j);
  }
  IOSObjectArray_Set(heap_, i, node);
}

- (void)downHeapWithInt:(jint)size {
  jint i = 0;
  OrgApacheLuceneSearchDisiWrapper *node = IOSObjectArray_Get(nil_chk(heap_), 0);
  jint j = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(i);
  if (j < size) {
    jint k = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(j);
    if (k < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, k)))->doc_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, j)))->doc_) {
      j = k;
    }
    if (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, j)))->doc_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(node))->doc_) {
      do {
        IOSObjectArray_Set(heap_, i, IOSObjectArray_Get(heap_, j));
        i = j;
        j = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(i);
        k = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(j);
        if (k < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, k)))->doc_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, j)))->doc_) {
          j = k;
        }
      }
      while (j < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap_, j)))->doc_ < node->doc_);
      IOSObjectArray_Set(heap_, i, node);
    }
  }
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk([((id<JavaUtilList>) nil_chk(JavaUtilArrays_asListWithNSObjectArray_(heap_))) subListWithInt:0 withInt:size_])) iterator];
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(heap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 3, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x2, 5, 6, -1, 7, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x2, 8, 9, -1, 10, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x1, 11, 12, -1, 13, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDisiWrapper;", 0x0, 14, 12, -1, 13, -1, -1 },
    { NULL, "V", 0x0, 15, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 16, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 17, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leftNodeWithInt:);
  methods[1].selector = @selector(rightNodeWithInt:);
  methods[2].selector = @selector(parentNodeWithInt:);
  methods[3].selector = @selector(initWithInt:);
  methods[4].selector = @selector(size);
  methods[5].selector = @selector(top);
  methods[6].selector = @selector(topList);
  methods[7].selector = @selector(prependWithOrgApacheLuceneSearchDisiWrapper:withOrgApacheLuceneSearchDisiWrapper:);
  methods[8].selector = @selector(topListWithOrgApacheLuceneSearchDisiWrapper:withOrgApacheLuceneSearchDisiWrapperArray:withInt:withInt:);
  methods[9].selector = @selector(addWithOrgApacheLuceneSearchDisiWrapper:);
  methods[10].selector = @selector(pop);
  methods[11].selector = @selector(updateTop);
  methods[12].selector = @selector(updateTopWithOrgApacheLuceneSearchDisiWrapper:);
  methods[13].selector = @selector(upHeapWithInt:);
  methods[14].selector = @selector(downHeapWithInt:);
  methods[15].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "heap_", "[LOrgApacheLuceneSearchDisiWrapper;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
    { "size_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leftNode", "I", "rightNode", "parentNode", "()Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "prepend", "LOrgApacheLuceneSearchDisiWrapper;LOrgApacheLuceneSearchDisiWrapper;", "(Lorg/apache/lucene/search/DisiWrapper<TIter;>;Lorg/apache/lucene/search/DisiWrapper<TIter;>;)Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "topList", "LOrgApacheLuceneSearchDisiWrapper;[LOrgApacheLuceneSearchDisiWrapper;II", "(Lorg/apache/lucene/search/DisiWrapper<TIter;>;[Lorg/apache/lucene/search/DisiWrapper<TIter;>;II)Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "add", "LOrgApacheLuceneSearchDisiWrapper;", "(Lorg/apache/lucene/search/DisiWrapper<TIter;>;)Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "updateTop", "upHeap", "downHeap", "()Ljava/util/Iterator<Lorg/apache/lucene/search/DisiWrapper<TIter;>;>;", "[Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "<Iter:Lorg/apache/lucene/search/DocIdSetIterator;>Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/search/DisiWrapper<TIter;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisiPriorityQueue = { "DisiPriorityQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x11, 16, 2, -1, -1, -1, 19, -1 };
  return &_OrgApacheLuceneSearchDisiPriorityQueue;
}

@end

jint OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(jint node) {
  OrgApacheLuceneSearchDisiPriorityQueue_initialize();
  return (JreLShift32((node + 1), 1)) - 1;
}

jint OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(jint leftNode) {
  OrgApacheLuceneSearchDisiPriorityQueue_initialize();
  return leftNode + 1;
}

jint OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(jint node) {
  OrgApacheLuceneSearchDisiPriorityQueue_initialize();
  return (JreURShift32((node + 1), 1)) - 1;
}

void OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(OrgApacheLuceneSearchDisiPriorityQueue *self, jint maxSize) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->heap_, [IOSObjectArray newArrayWithLength:maxSize type:OrgApacheLuceneSearchDisiWrapper_class_()]);
  self->size_ = 0;
}

OrgApacheLuceneSearchDisiPriorityQueue *new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisiPriorityQueue, initWithInt_, maxSize)
}

OrgApacheLuceneSearchDisiPriorityQueue *create_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisiPriorityQueue, initWithInt_, maxSize)
}

OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchDisiPriorityQueue *self, OrgApacheLuceneSearchDisiWrapper *w1, OrgApacheLuceneSearchDisiWrapper *w2) {
  JreStrongAssign(&((OrgApacheLuceneSearchDisiWrapper *) nil_chk(w1))->next_, w2);
  return w1;
}

OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(OrgApacheLuceneSearchDisiPriorityQueue *self, OrgApacheLuceneSearchDisiWrapper *list, IOSObjectArray *heap, jint size, jint i) {
  OrgApacheLuceneSearchDisiWrapper *w = IOSObjectArray_Get(nil_chk(heap), i);
  if (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(w))->doc_ == ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(list))->doc_) {
    list = OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(self, w, list);
    jint left = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(i);
    jint right = left + 1;
    if (right < size) {
      list = OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(self, list, heap, size, left);
      list = OrgApacheLuceneSearchDisiPriorityQueue_topListWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapperArray_withInt_withInt_(self, list, heap, size, right);
    }
    else if (left < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, left)))->doc_ == ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(list))->doc_) {
      list = OrgApacheLuceneSearchDisiPriorityQueue_prependWithOrgApacheLuceneSearchDisiWrapper_withOrgApacheLuceneSearchDisiWrapper_(self, IOSObjectArray_Get(heap, left), list);
    }
  }
  return list;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisiPriorityQueue)
