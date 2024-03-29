//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "java/util/function/Predicate.h"
#include "java/util/function/UnaryOperator.h"
#include "java/util/stream/Stream.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline () {
 @public
  JavaUtilLinkedList *processors_;
  OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, processors_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, queryConfig_, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)

@implementation OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfigHandler);
  return self;
}

- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler {
  return self->queryConfig_;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  for (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> __strong processor in nil_chk(self->processors_)) {
    queryTree = [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  }
  return queryTree;
}

- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler {
  JreStrongAssign(&self->queryConfig_, queryConfigHandler);
  for (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> __strong processor in nil_chk(self->processors_)) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
  }
}

- (jboolean)addWithId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor {
  jboolean added = [((JavaUtilLinkedList *) nil_chk(self->processors_)) addWithId:processor];
  if (added) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
  }
  return added;
}

- (void)addWithInt:(jint)index
            withId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor {
  [((JavaUtilLinkedList *) nil_chk(self->processors_)) addWithInt:index withId:processor];
  [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
}

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  jboolean anyAdded = [((JavaUtilLinkedList *) nil_chk(self->processors_)) addAllWithJavaUtilCollection:c];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> __strong processor in nil_chk(c)) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
  }
  return anyAdded;
}

- (jboolean)addAllWithInt:(jint)index
   withJavaUtilCollection:(id<JavaUtilCollection>)c {
  jboolean anyAdded = [((JavaUtilLinkedList *) nil_chk(self->processors_)) addAllWithInt:index withJavaUtilCollection:c];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> __strong processor in nil_chk(c)) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
  }
  return anyAdded;
}

- (void)clear {
  [((JavaUtilLinkedList *) nil_chk(self->processors_)) clear];
}

- (jboolean)containsWithId:(id)o {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) containsWithId:o];
}

- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) containsAllWithJavaUtilCollection:c];
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)getWithInt:(jint)index {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) getWithInt:index];
}

- (jint)indexOfWithId:(id)o {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) indexOfWithId:o];
}

- (jboolean)isEmpty {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) isEmpty];
}

- (id<JavaUtilIterator>)iterator {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) iterator];
}

- (jint)lastIndexOfWithId:(id)o {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) lastIndexOfWithId:o];
}

- (id<JavaUtilListIterator>)listIterator {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) listIterator];
}

- (id<JavaUtilListIterator>)listIteratorWithInt:(jint)index {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) listIteratorWithInt:index];
}

- (jboolean)removeWithId:(id)o {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) removeWithId:o];
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)removeWithInt:(jint)index {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) removeWithInt:index];
}

- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) removeAllWithJavaUtilCollection:c];
}

- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) retainAllWithJavaUtilCollection:c];
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)setWithInt:(jint)index
                                                                              withId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor {
  id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> oldProcessor = JreRetainedLocalValue([((JavaUtilLinkedList *) nil_chk(self->processors_)) setWithInt:index withId:processor]);
  if (!JreObjectEqualsEquals(oldProcessor, processor)) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(processor)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:self->queryConfig_];
  }
  return oldProcessor;
}

- (jint)size {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) size];
}

- (id<JavaUtilList>)subListWithInt:(jint)fromIndex
                           withInt:(jint)toIndex {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) subListWithInt:fromIndex withInt:toIndex];
}

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) toArrayWithNSObjectArray:array];
}

- (IOSObjectArray *)toArray {
  return [((JavaUtilLinkedList *) nil_chk(self->processors_)) toArray];
}

- (void)replaceAllWithJavaUtilFunctionUnaryOperator:(id<JavaUtilFunctionUnaryOperator>)arg0 {
  JavaUtilList_replaceAllWithJavaUtilFunctionUnaryOperator_(self, arg0);
}

- (void)sortWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  JavaUtilList_sortWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaUtilList_spliterator(self);
}

- (jboolean)removeIfWithJavaUtilFunctionPredicate:(id<JavaUtilFunctionPredicate>)arg0 {
  return JavaUtilCollection_removeIfWithJavaUtilFunctionPredicate_(self, arg0);
}

- (id<JavaUtilStreamStream>)stream {
  return JavaUtilCollection_stream(self);
}

- (id<JavaUtilStreamStream>)parallelStream {
  return JavaUtilCollection_parallelStream(self);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(processors_);
  RELEASE_(queryConfig_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, 10, -1, -1 },
    { NULL, "Z", 0x1, 8, 11, -1, 12, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 9, -1, 16, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 19, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 20, -1, -1 },
    { NULL, "I", 0x1, 21, 14, -1, -1, -1, -1 },
    { NULL, "LJavaUtilListIterator;", 0x1, -1, -1, -1, 22, -1, -1 },
    { NULL, "LJavaUtilListIterator;", 0x1, 23, 18, -1, 24, -1, -1 },
    { NULL, "Z", 0x1, 25, 14, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", 0x1, 25, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 26, 9, -1, 16, -1, -1 },
    { NULL, "Z", 0x1, 27, 9, -1, 16, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", 0x1, 28, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 29, 30, -1, 31, -1, -1 },
    { NULL, "[LNSObject;", 0x1, 32, 33, -1, 34, -1, -1 },
    { NULL, "[LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:);
  methods[2].selector = @selector(getQueryConfigHandler);
  methods[3].selector = @selector(processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[4].selector = @selector(setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:);
  methods[5].selector = @selector(addWithId:);
  methods[6].selector = @selector(addWithInt:withId:);
  methods[7].selector = @selector(addAllWithJavaUtilCollection:);
  methods[8].selector = @selector(addAllWithInt:withJavaUtilCollection:);
  methods[9].selector = @selector(clear);
  methods[10].selector = @selector(containsWithId:);
  methods[11].selector = @selector(containsAllWithJavaUtilCollection:);
  methods[12].selector = @selector(getWithInt:);
  methods[13].selector = @selector(indexOfWithId:);
  methods[14].selector = @selector(isEmpty);
  methods[15].selector = @selector(iterator);
  methods[16].selector = @selector(lastIndexOfWithId:);
  methods[17].selector = @selector(listIterator);
  methods[18].selector = @selector(listIteratorWithInt:);
  methods[19].selector = @selector(removeWithId:);
  methods[20].selector = @selector(removeWithInt:);
  methods[21].selector = @selector(removeAllWithJavaUtilCollection:);
  methods[22].selector = @selector(retainAllWithJavaUtilCollection:);
  methods[23].selector = @selector(setWithInt:withId:);
  methods[24].selector = @selector(size);
  methods[25].selector = @selector(subListWithInt:withInt:);
  methods[26].selector = @selector(toArrayWithNSObjectArray:);
  methods[27].selector = @selector(toArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "processors_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x2, -1, -1, 35, -1 },
    { "queryConfig_", "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", "process", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;", "setQueryConfigHandler", "add", "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", "ILOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", "addAll", "LJavaUtilCollection;", "(Ljava/util/Collection<+Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;)Z", "ILJavaUtilCollection;", "(ILjava/util/Collection<+Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;)Z", "contains", "LNSObject;", "containsAll", "(Ljava/util/Collection<*>;)Z", "get", "I", "indexOf", "()Ljava/util/Iterator<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;", "lastIndexOf", "()Ljava/util/ListIterator<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;", "listIterator", "(I)Ljava/util/ListIterator<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;", "remove", "removeAll", "retainAll", "set", "subList", "II", "(II)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;", "toArray", "[LNSObject;", "<T:Ljava/lang/Object;>([TT;)[TT;", "Ljava/util/LinkedList<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;", "Ljava/lang/Object;Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline = { "QueryNodeProcessorPipeline", "org.apache.lucene.queryparser.flexible.core.processors", ptrTable, methods, fields, 7, 0x1, 28, 2, -1, -1, -1, 36, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->processors_, new_JavaUtilLinkedList_init());
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, init)
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, init)
}

void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->processors_, new_JavaUtilLinkedList_init());
  JreStrongAssign(&self->queryConfig_, queryConfigHandler);
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_, queryConfigHandler)
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_, queryConfigHandler)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline)
