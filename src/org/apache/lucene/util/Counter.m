//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Counter.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/util/Counter.h"

@interface OrgApacheLuceneUtilCounter_SerialCounter : OrgApacheLuceneUtilCounter {
 @public
  jlong count_;
}

- (jlong)addAndGetWithLong:(jlong)delta;

- (jlong)get;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCounter_SerialCounter)

__attribute__((unused)) static void OrgApacheLuceneUtilCounter_SerialCounter_init(OrgApacheLuceneUtilCounter_SerialCounter *self);

__attribute__((unused)) static OrgApacheLuceneUtilCounter_SerialCounter *new_OrgApacheLuceneUtilCounter_SerialCounter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCounter_SerialCounter)

@interface OrgApacheLuceneUtilCounter_AtomicCounter : OrgApacheLuceneUtilCounter {
 @public
  JavaUtilConcurrentAtomicAtomicLong *count_;
}

- (jlong)addAndGetWithLong:(jlong)delta;

- (jlong)get;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCounter_AtomicCounter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCounter_AtomicCounter, count_, JavaUtilConcurrentAtomicAtomicLong *)

__attribute__((unused)) static void OrgApacheLuceneUtilCounter_AtomicCounter_init(OrgApacheLuceneUtilCounter_AtomicCounter *self);

__attribute__((unused)) static OrgApacheLuceneUtilCounter_AtomicCounter *new_OrgApacheLuceneUtilCounter_AtomicCounter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCounter_AtomicCounter)

@implementation OrgApacheLuceneUtilCounter

- (jlong)addAndGetWithLong:(jlong)delta {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneUtilCounter *)newCounter {
  return OrgApacheLuceneUtilCounter_newCounter();
}

+ (OrgApacheLuceneUtilCounter *)newCounterWithBoolean:(jboolean)threadSafe {
  return OrgApacheLuceneUtilCounter_newCounterWithBoolean_(threadSafe);
}

- (instancetype)init {
  OrgApacheLuceneUtilCounter_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addAndGetWithLong:", "addAndGet", "J", 0x401, NULL, NULL },
    { "get", NULL, "J", 0x401, NULL, NULL },
    { "newCounter", NULL, "Lorg.apache.lucene.util.Counter;", 0x9, NULL, NULL },
    { "newCounterWithBoolean:", "newCounter", "Lorg.apache.lucene.util.Counter;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.Counter$SerialCounter;", "Lorg.apache.lucene.util.Counter$AtomicCounter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter = { 2, "Counter", "org.apache.lucene.util", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilCounter;
}

@end

OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounter() {
  OrgApacheLuceneUtilCounter_initialize();
  return OrgApacheLuceneUtilCounter_newCounterWithBoolean_(NO);
}

OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounterWithBoolean_(jboolean threadSafe) {
  OrgApacheLuceneUtilCounter_initialize();
  return threadSafe ? [new_OrgApacheLuceneUtilCounter_AtomicCounter_init() autorelease] : [new_OrgApacheLuceneUtilCounter_SerialCounter_init() autorelease];
}

void OrgApacheLuceneUtilCounter_init(OrgApacheLuceneUtilCounter *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter)

@implementation OrgApacheLuceneUtilCounter_SerialCounter

- (jlong)addAndGetWithLong:(jlong)delta {
  return count_ += delta;
}

- (jlong)get {
  return count_;
}

- (instancetype)init {
  OrgApacheLuceneUtilCounter_SerialCounter_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addAndGetWithLong:", "addAndGet", "J", 0x1, NULL, NULL },
    { "get", NULL, "J", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter_SerialCounter = { 2, "SerialCounter", "org.apache.lucene.util", "Counter", 0x1a, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilCounter_SerialCounter;
}

@end

void OrgApacheLuceneUtilCounter_SerialCounter_init(OrgApacheLuceneUtilCounter_SerialCounter *self) {
  OrgApacheLuceneUtilCounter_init(self);
  self->count_ = 0;
}

OrgApacheLuceneUtilCounter_SerialCounter *new_OrgApacheLuceneUtilCounter_SerialCounter_init() {
  OrgApacheLuceneUtilCounter_SerialCounter *self = [OrgApacheLuceneUtilCounter_SerialCounter alloc];
  OrgApacheLuceneUtilCounter_SerialCounter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter_SerialCounter)

@implementation OrgApacheLuceneUtilCounter_AtomicCounter

- (jlong)addAndGetWithLong:(jlong)delta {
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(count_)) addAndGetWithLong:delta];
}

- (jlong)get {
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(count_)) get];
}

- (instancetype)init {
  OrgApacheLuceneUtilCounter_AtomicCounter_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(count_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addAndGetWithLong:", "addAndGet", "J", 0x1, NULL, NULL },
    { "get", NULL, "J", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicLong;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter_AtomicCounter = { 2, "AtomicCounter", "org.apache.lucene.util", "Counter", 0x1a, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilCounter_AtomicCounter;
}

@end

void OrgApacheLuceneUtilCounter_AtomicCounter_init(OrgApacheLuceneUtilCounter_AtomicCounter *self) {
  OrgApacheLuceneUtilCounter_init(self);
  JreStrongAssignAndConsume(&self->count_, new_JavaUtilConcurrentAtomicAtomicLong_init());
}

OrgApacheLuceneUtilCounter_AtomicCounter *new_OrgApacheLuceneUtilCounter_AtomicCounter_init() {
  OrgApacheLuceneUtilCounter_AtomicCounter *self = [OrgApacheLuceneUtilCounter_AtomicCounter alloc];
  OrgApacheLuceneUtilCounter_AtomicCounter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter_AtomicCounter)
