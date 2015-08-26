//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SetOnce.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "org/apache/lucene/util/SetOnce.h"

@interface OrgApacheLuceneUtilSetOnce () {
 @public
  volatile_id obj_;
  JavaUtilConcurrentAtomicAtomicBoolean *set_;
}

@end

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneUtilSetOnce, obj_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilSetOnce, set_, JavaUtilConcurrentAtomicAtomicBoolean *)

@implementation OrgApacheLuceneUtilSetOnce

- (instancetype)init {
  OrgApacheLuceneUtilSetOnce_init(self);
  return self;
}

- (instancetype)initWithId:(id)obj {
  OrgApacheLuceneUtilSetOnce_initWithId_(self, obj);
  return self;
}

- (void)setWithId:(id)obj {
  if ([((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(set_)) compareAndSetWithBoolean:NO withBoolean:YES]) {
    JreVolatileStrongAssign(&self->obj_, obj);
  }
  else {
    @throw [new_OrgApacheLuceneUtilSetOnce_AlreadySetException_init() autorelease];
  }
}

- (id)get {
  return JreLoadVolatileId(&obj_);
}

- (void)dealloc {
  JreReleaseVolatile(&obj_);
  RELEASE_(set_);
  [super dealloc];
}

- (void)__javaClone {
  [super __javaClone];
  JreRetainVolatile(&obj_);
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SetOnce", NULL, 0x1, NULL, NULL },
    { "initWithId:", "SetOnce", NULL, 0x1, NULL, "(TT;)V" },
    { "setWithId:", "set", "V", 0x11, NULL, "(TT;)V" },
    { "get", NULL, "TT;", 0x11, NULL, "()TT;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "obj_", NULL, 0x42, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "set_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicBoolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.SetOnce$AlreadySetException;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilSetOnce = { 2, "SetOnce", "org.apache.lucene.util", NULL, 0x11, 4, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;" };
  return &_OrgApacheLuceneUtilSetOnce;
}

@end

void OrgApacheLuceneUtilSetOnce_init(OrgApacheLuceneUtilSetOnce *self) {
  NSObject_init(self);
  JreVolatileStrongAssign(&self->obj_, nil);
  JreStrongAssignAndConsume(&self->set_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(NO));
}

OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_init() {
  OrgApacheLuceneUtilSetOnce *self = [OrgApacheLuceneUtilSetOnce alloc];
  OrgApacheLuceneUtilSetOnce_init(self);
  return self;
}

void OrgApacheLuceneUtilSetOnce_initWithId_(OrgApacheLuceneUtilSetOnce *self, id obj) {
  NSObject_init(self);
  JreVolatileStrongAssign(&self->obj_, nil);
  JreVolatileStrongAssign(&self->obj_, obj);
  JreStrongAssignAndConsume(&self->set_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(YES));
}

OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_initWithId_(id obj) {
  OrgApacheLuceneUtilSetOnce *self = [OrgApacheLuceneUtilSetOnce alloc];
  OrgApacheLuceneUtilSetOnce_initWithId_(self, obj);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilSetOnce)

@implementation OrgApacheLuceneUtilSetOnce_AlreadySetException

- (instancetype)init {
  OrgApacheLuceneUtilSetOnce_AlreadySetException_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AlreadySetException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilSetOnce_AlreadySetException = { 2, "AlreadySetException", "org.apache.lucene.util", "SetOnce", 0x19, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilSetOnce_AlreadySetException;
}

@end

void OrgApacheLuceneUtilSetOnce_AlreadySetException_init(OrgApacheLuceneUtilSetOnce_AlreadySetException *self) {
  JavaLangIllegalStateException_initWithNSString_(self, @"The object cannot be set twice!");
}

OrgApacheLuceneUtilSetOnce_AlreadySetException *new_OrgApacheLuceneUtilSetOnce_AlreadySetException_init() {
  OrgApacheLuceneUtilSetOnce_AlreadySetException *self = [OrgApacheLuceneUtilSetOnce_AlreadySetException alloc];
  OrgApacheLuceneUtilSetOnce_AlreadySetException_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilSetOnce_AlreadySetException)
