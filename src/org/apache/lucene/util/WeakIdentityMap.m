//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/WeakIdentityMap.java
//

#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/ref/Reference.h"
#include "java/lang/ref/ReferenceQueue.h"
#include "java/lang/ref/WeakReference.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/util/WeakIdentityMap.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/WeakIdentityMap must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilWeakIdentityMap () {
 @public
  JavaLangRefReferenceQueue *queue_;
  id<JavaUtilMap> backingStore_;
  jboolean reapOnRead_;
}

/*!
 @brief Private only constructor, to create use the static factory methods.
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)backingStore
                        withBoolean:(jboolean)reapOnRead;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilWeakIdentityMap, queue_, JavaLangRefReferenceQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilWeakIdentityMap, backingStore_, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(OrgApacheLuceneUtilWeakIdentityMap *self, id<JavaUtilMap> backingStore, jboolean reapOnRead);

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap *new_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(id<JavaUtilMap> backingStore, jboolean reapOnRead) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap *create_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(id<JavaUtilMap> backingStore, jboolean reapOnRead);

@interface OrgApacheLuceneUtilWeakIdentityMap_1 : NSObject < JavaUtilIterator > {
 @public
  id<JavaUtilIterator> val$iterator_;
  id next_;
  jboolean nextIsSet_;
}

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0;

- (jboolean)hasNext;

- (id)next;

- (void)remove;

- (jboolean)setNext;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilWeakIdentityMap_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilWeakIdentityMap_1, next_, id)

__attribute__((unused)) static void OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(OrgApacheLuceneUtilWeakIdentityMap_1 *self, id<JavaUtilIterator> capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap_1 *new_OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap_1 *create_OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilWeakIdentityMap_1_setNext(OrgApacheLuceneUtilWeakIdentityMap_1 *self);

@interface OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference : JavaLangRefWeakReference {
 @public
  jint hash__;
}

- (instancetype)initWithId:(id)obj
withJavaLangRefReferenceQueue:(JavaLangRefReferenceQueue *)queue;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference)

__attribute__((unused)) static void OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *self, id obj, JavaLangRefReferenceQueue *queue);

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *new_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(id obj, JavaLangRefReferenceQueue *queue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(id obj, JavaLangRefReferenceQueue *queue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilWeakIdentityMap)

id OrgApacheLuceneUtilWeakIdentityMap_NULL;

@implementation OrgApacheLuceneUtilWeakIdentityMap

+ (id)NULL_ {
  return OrgApacheLuceneUtilWeakIdentityMap_NULL;
}

+ (OrgApacheLuceneUtilWeakIdentityMap *)newHashMap {
  return OrgApacheLuceneUtilWeakIdentityMap_newHashMap();
}

+ (OrgApacheLuceneUtilWeakIdentityMap *)newHashMapWithBoolean:(jboolean)reapOnRead {
  return OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(reapOnRead);
}

+ (OrgApacheLuceneUtilWeakIdentityMap *)newConcurrentHashMap {
  return OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMap();
}

+ (OrgApacheLuceneUtilWeakIdentityMap *)newConcurrentHashMapWithBoolean:(jboolean)reapOnRead {
  return OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(reapOnRead);
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)backingStore
                        withBoolean:(jboolean)reapOnRead {
  OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(self, backingStore, reapOnRead);
  return self;
}

- (void)clear {
  [((id<JavaUtilMap>) nil_chk(backingStore_)) clear];
  [self reap];
}

- (jboolean)containsKeyWithId:(id)key {
  if (reapOnRead_) [self reap];
  return [((id<JavaUtilMap>) nil_chk(backingStore_)) containsKeyWithId:create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(key, nil)];
}

- (id)getWithId:(id)key {
  if (reapOnRead_) [self reap];
  return [((id<JavaUtilMap>) nil_chk(backingStore_)) getWithId:create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(key, nil)];
}

- (id)putWithId:(id)key
         withId:(id)value {
  [self reap];
  return [((id<JavaUtilMap>) nil_chk(backingStore_)) putWithId:create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(key, queue_) withId:value];
}

- (jboolean)isEmpty {
  return [self size] == 0;
}

- (id)removeWithId:(id)key {
  [self reap];
  return [((id<JavaUtilMap>) nil_chk(backingStore_)) removeWithId:create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(key, nil)];
}

- (jint)size {
  if ([((id<JavaUtilMap>) nil_chk(backingStore_)) isEmpty]) return 0;
  if (reapOnRead_) [self reap];
  return [backingStore_ size];
}

- (id<JavaUtilIterator>)keyIterator {
  [self reap];
  id<JavaUtilIterator> iterator = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(backingStore_)) keySet])) iterator];
  return create_OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(iterator);
}

- (id<JavaUtilIterator>)valueIterator {
  if (reapOnRead_) [self reap];
  return [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(backingStore_)) values])) iterator];
}

- (void)reap {
  JavaLangRefReference *zombie;
  while ((zombie = [((JavaLangRefReferenceQueue *) nil_chk(queue_)) poll]) != nil) {
    [((id<JavaUtilMap>) nil_chk(backingStore_)) removeWithId:zombie];
  }
}

- (void)dealloc {
  RELEASE_(queue_);
  RELEASE_(backingStore_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneUtilWeakIdentityMap;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilWeakIdentityMap;", 0x9, 1, 2, -1, 3, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilWeakIdentityMap;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilWeakIdentityMap;", 0x9, 4, 2, -1, 3, -1, -1 },
    { NULL, NULL, 0x2, -1, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 8, -1, 10, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, 12, -1, 13, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 14, 8, -1, 10, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 15, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 16, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newHashMap);
  methods[1].selector = @selector(newHashMapWithBoolean:);
  methods[2].selector = @selector(newConcurrentHashMap);
  methods[3].selector = @selector(newConcurrentHashMapWithBoolean:);
  methods[4].selector = @selector(initWithJavaUtilMap:withBoolean:);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(containsKeyWithId:);
  methods[7].selector = @selector(getWithId:);
  methods[8].selector = @selector(putWithId:withId:);
  methods[9].selector = @selector(isEmpty);
  methods[10].selector = @selector(removeWithId:);
  methods[11].selector = @selector(size);
  methods[12].selector = @selector(keyIterator);
  methods[13].selector = @selector(valueIterator);
  methods[14].selector = @selector(reap);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", "LJavaLangRefReferenceQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 17, -1 },
    { "backingStore_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
    { "reapOnRead_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "NULL", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 19, -1, -1 },
  };
  static const void *ptrTable[] = { "<K:Ljava/lang/Object;V:Ljava/lang/Object;>()Lorg/apache/lucene/util/WeakIdentityMap<TK;TV;>;", "newHashMap", "Z", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Z)Lorg/apache/lucene/util/WeakIdentityMap<TK;TV;>;", "newConcurrentHashMap", "LJavaUtilMap;Z", "(Ljava/util/Map<Lorg/apache/lucene/util/WeakIdentityMap$IdentityWeakReference;TV;>;Z)V", "containsKey", "LNSObject;", "get", "(Ljava/lang/Object;)TV;", "put", "LNSObject;LNSObject;", "(TK;TV;)TV;", "remove", "()Ljava/util/Iterator<TK;>;", "()Ljava/util/Iterator<TV;>;", "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;", "Ljava/util/Map<Lorg/apache/lucene/util/WeakIdentityMap$IdentityWeakReference;TV;>;", &OrgApacheLuceneUtilWeakIdentityMap_NULL, "LOrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilWeakIdentityMap = { "WeakIdentityMap", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 15, 4, -1, 20, -1, 21, -1 };
  return &_OrgApacheLuceneUtilWeakIdentityMap;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilWeakIdentityMap class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilWeakIdentityMap_NULL, new_NSObject_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilWeakIdentityMap)
  }
}

@end

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMap() {
  OrgApacheLuceneUtilWeakIdentityMap_initialize();
  return OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(true);
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(jboolean reapOnRead) {
  OrgApacheLuceneUtilWeakIdentityMap_initialize();
  return create_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(create_JavaUtilHashMap_init(), reapOnRead);
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMap() {
  OrgApacheLuceneUtilWeakIdentityMap_initialize();
  return OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(true);
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(jboolean reapOnRead) {
  OrgApacheLuceneUtilWeakIdentityMap_initialize();
  return create_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(create_JavaUtilConcurrentConcurrentHashMap_init(), reapOnRead);
}

void OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(OrgApacheLuceneUtilWeakIdentityMap *self, id<JavaUtilMap> backingStore, jboolean reapOnRead) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->queue_, new_JavaLangRefReferenceQueue_init());
  JreStrongAssign(&self->backingStore_, backingStore);
  self->reapOnRead_ = reapOnRead;
}

OrgApacheLuceneUtilWeakIdentityMap *new_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(id<JavaUtilMap> backingStore, jboolean reapOnRead) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilWeakIdentityMap, initWithJavaUtilMap_withBoolean_, backingStore, reapOnRead)
}

OrgApacheLuceneUtilWeakIdentityMap *create_OrgApacheLuceneUtilWeakIdentityMap_initWithJavaUtilMap_withBoolean_(id<JavaUtilMap> backingStore, jboolean reapOnRead) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilWeakIdentityMap, initWithJavaUtilMap_withBoolean_, backingStore, reapOnRead)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilWeakIdentityMap)

@implementation OrgApacheLuceneUtilWeakIdentityMap_1

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0 {
  OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(self, capture$0);
  return self;
}

- (jboolean)hasNext {
  return nextIsSet_ || OrgApacheLuceneUtilWeakIdentityMap_1_setNext(self);
}

- (id)next {
  if (![self hasNext]) {
    @throw create_JavaUtilNoSuchElementException_init();
  }
  JreAssert(nextIsSet_, @"org/apache/lucene/util/WeakIdentityMap.java:184 condition failed: assert nextIsSet;");
  @try {
    return JreRetainedLocalValue(next_);
  }
  @finally {
    nextIsSet_ = false;
    JreStrongAssign(&next_, nil);
  }
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jboolean)setNext {
  return OrgApacheLuceneUtilWeakIdentityMap_1_setNext(self);
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(val$iterator_);
  RELEASE_(next_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilIterator:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(remove);
  methods[4].selector = @selector(setNext);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$iterator_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
    { "next_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "nextIsSet_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilIterator;", "()TK;", "Ljava/util/Iterator<Lorg/apache/lucene/util/WeakIdentityMap$IdentityWeakReference;>;", "LOrgApacheLuceneUtilWeakIdentityMap;", "keyIterator", "Ljava/lang/Object;Ljava/util/Iterator<TK;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilWeakIdentityMap_1 = { "", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x8010, 5, 3, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneUtilWeakIdentityMap_1;
}

@end

void OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(OrgApacheLuceneUtilWeakIdentityMap_1 *self, id<JavaUtilIterator> capture$0) {
  JreStrongAssign(&self->val$iterator_, capture$0);
  NSObject_init(self);
  JreStrongAssign(&self->next_, nil);
  self->nextIsSet_ = false;
}

OrgApacheLuceneUtilWeakIdentityMap_1 *new_OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilWeakIdentityMap_1, initWithJavaUtilIterator_, capture$0)
}

OrgApacheLuceneUtilWeakIdentityMap_1 *create_OrgApacheLuceneUtilWeakIdentityMap_1_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilWeakIdentityMap_1, initWithJavaUtilIterator_, capture$0)
}

jboolean OrgApacheLuceneUtilWeakIdentityMap_1_setNext(OrgApacheLuceneUtilWeakIdentityMap_1 *self) {
  JreAssert(!self->nextIsSet_, @"org/apache/lucene/util/WeakIdentityMap.java:200 condition failed: assert !nextIsSet;");
  while ([((id<JavaUtilIterator>) nil_chk(self->val$iterator_)) hasNext]) {
    JreStrongAssign(&self->next_, [((OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *) nil_chk([self->val$iterator_ next])) get]);
    if (self->next_ == nil) {
      [self->val$iterator_ remove];
    }
    else {
      if (JreObjectEqualsEquals(self->next_, JreLoadStatic(OrgApacheLuceneUtilWeakIdentityMap, NULL))) {
        JreStrongAssign(&self->next_, nil);
      }
      return self->nextIsSet_ = true;
    }
  }
  return false;
}

@implementation OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference

- (instancetype)initWithId:(id)obj
withJavaLangRefReferenceQueue:(JavaLangRefReferenceQueue *)queue {
  OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(self, obj, queue);
  return self;
}

- (NSUInteger)hash {
  return hash__;
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) {
    return true;
  }
  if ([o isKindOfClass:[OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference class]]) {
    OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *ref = (OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *) o;
    if (JreObjectEqualsEquals([self get], [((OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *) nil_chk(ref)) get])) {
      return true;
    }
  }
  return false;
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "I", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithId:withJavaLangRefReferenceQueue:);
  methods[1].selector = @selector(hash);
  methods[2].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "hash__", "I", .constantValue.asLong = 0, 0x12, 5, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LJavaLangRefReferenceQueue;", "(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;)V", "hashCode", "equals", "LNSObject;", "hash", "LOrgApacheLuceneUtilWeakIdentityMap;", "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference = { "IdentityWeakReference", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1a, 3, 1, 6, -1, -1, 7, -1 };
  return &_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference;
}

@end

void OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *self, id obj, JavaLangRefReferenceQueue *queue) {
  JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(self, obj == nil ? JreLoadStatic(OrgApacheLuceneUtilWeakIdentityMap, NULL) : obj, queue);
  self->hash__ = JavaLangSystem_identityHashCodeWithId_(obj);
}

OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *new_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(id obj, JavaLangRefReferenceQueue *queue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference, initWithId_withJavaLangRefReferenceQueue_, obj, queue)
}

OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference *create_OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference_initWithId_withJavaLangRefReferenceQueue_(id obj, JavaLangRefReferenceQueue *queue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference, initWithId_withJavaLangRefReferenceQueue_, obj, queue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference)
