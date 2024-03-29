//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/lucene/WeakSetOnce.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "org/lukhnos/portmobile/lucene/WeakSetOnce.h"

#if __has_feature(objc_arc)
#error "org/lukhnos/portmobile/lucene/WeakSetOnce must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgLukhnosPortmobileLuceneWeakSetOnce () {
 @public
  volatile_id obj_;
  JavaUtilConcurrentAtomicAtomicBoolean *set_;
}

@end

J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileLuceneWeakSetOnce, set_, JavaUtilConcurrentAtomicAtomicBoolean *)

@implementation OrgLukhnosPortmobileLuceneWeakSetOnce

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosPortmobileLuceneWeakSetOnce_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithId:(id)obj {
  OrgLukhnosPortmobileLuceneWeakSetOnce_initWithId_(self, obj);
  return self;
}

- (void)setWithId:(id)obj {
  if ([((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(set_)) compareAndSetWithBoolean:false withBoolean:true]) {
    JreAssignVolatileId(&self->obj_, obj);
  }
  else {
    @throw create_OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException_init();
  }
}

- (id)get {
  return JreLoadVolatileId(&obj_);
}

- (void)__javaClone:(OrgLukhnosPortmobileLuceneWeakSetOnce *)original {
  [super __javaClone:original];
  JreCloneVolatile(&obj_, &original->obj_);
}

- (void)dealloc {
  RELEASE_(set_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x11, 2, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithId:);
  methods[2].selector = @selector(setWithId:);
  methods[3].selector = @selector(get);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "obj_", "LNSObject;", .constantValue.asLong = 0, 0x42, -1, -1, 4, -1 },
    { "set_", "LJavaUtilConcurrentAtomicAtomicBoolean;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "set", "()TT;", "TT;", "LOrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;" };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileLuceneWeakSetOnce = { "WeakSetOnce", "org.lukhnos.portmobile.lucene", ptrTable, methods, fields, 7, 0x11, 4, 2, -1, 5, -1, 6, -1 };
  return &_OrgLukhnosPortmobileLuceneWeakSetOnce;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

void OrgLukhnosPortmobileLuceneWeakSetOnce_init(OrgLukhnosPortmobileLuceneWeakSetOnce *self) {
  NSObject_init(self);
  JreAssignVolatileId(&self->obj_, nil);
  JreStrongAssignAndConsume(&self->set_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(false));
}

OrgLukhnosPortmobileLuceneWeakSetOnce *new_OrgLukhnosPortmobileLuceneWeakSetOnce_init() {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce, init)
}

OrgLukhnosPortmobileLuceneWeakSetOnce *create_OrgLukhnosPortmobileLuceneWeakSetOnce_init() {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce, init)
}

void OrgLukhnosPortmobileLuceneWeakSetOnce_initWithId_(OrgLukhnosPortmobileLuceneWeakSetOnce *self, id obj) {
  NSObject_init(self);
  JreAssignVolatileId(&self->obj_, nil);
  JreAssignVolatileId(&self->obj_, obj);
  JreStrongAssignAndConsume(&self->set_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(true));
}

OrgLukhnosPortmobileLuceneWeakSetOnce *new_OrgLukhnosPortmobileLuceneWeakSetOnce_initWithId_(id obj) {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce, initWithId_, obj)
}

OrgLukhnosPortmobileLuceneWeakSetOnce *create_OrgLukhnosPortmobileLuceneWeakSetOnce_initWithId_(id obj) {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce, initWithId_, obj)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileLuceneWeakSetOnce)

@implementation OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgLukhnosPortmobileLuceneWeakSetOnce;" };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException = { "AlreadySetException", "org.lukhnos.portmobile.lucene", ptrTable, methods, NULL, 7, 0x19, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException;
}

@end

void OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException_init(OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException *self) {
  JavaLangIllegalStateException_initWithNSString_(self, @"The object cannot be set twice!");
}

OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException *new_OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException_init() {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException, init)
}

OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException *create_OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException_init() {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileLuceneWeakSetOnce_AlreadySetException)
