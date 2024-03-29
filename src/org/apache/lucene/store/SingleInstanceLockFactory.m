//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SingleInstanceLockFactory.java
//

#include "J2ObjC_source.h"
#include "java/util/HashSet.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/LockObtainFailedException.h"
#include "org/apache/lucene/store/SingleInstanceLockFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/SingleInstanceLockFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock : OrgApacheLuceneStoreLock {
 @public
  OrgApacheLuceneStoreSingleInstanceLockFactory *this$0_;
  NSString *lockName_;
  volatile_jboolean closed_;
}

- (instancetype)initWithOrgApacheLuceneStoreSingleInstanceLockFactory:(OrgApacheLuceneStoreSingleInstanceLockFactory *)outer$
                                                         withNSString:(NSString *)lockName;

- (void)ensureValid;

- (void)close;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock, lockName_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *self, OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName);

__attribute__((unused)) static OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *new_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *create_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock)

@implementation OrgApacheLuceneStoreSingleInstanceLockFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreSingleInstanceLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName {
  @synchronized(locks_) {
    if ([((JavaUtilHashSet *) nil_chk(locks_)) addWithId:lockName]) {
      return create_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(self, lockName);
    }
    else {
      @throw create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(JreStrcat("$@$$C", @"lock instance already obtained: (dir=", dir, @", lockName=", lockName, ')'));
    }
  }
}

- (void)dealloc {
  RELEASE_(locks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(obtainLockWithOrgApacheLuceneStoreDirectory:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "locks_", "LJavaUtilHashSet;", .constantValue.asLong = 0, 0x10, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "obtainLock", "LOrgApacheLuceneStoreDirectory;LNSString;", "LJavaIoIOException;", "Ljava/util/HashSet<Ljava/lang/String;>;", "LOrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSingleInstanceLockFactory = { "SingleInstanceLockFactory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSingleInstanceLockFactory;
}

@end

void OrgApacheLuceneStoreSingleInstanceLockFactory_init(OrgApacheLuceneStoreSingleInstanceLockFactory *self) {
  OrgApacheLuceneStoreLockFactory_init(self);
  JreStrongAssignAndConsume(&self->locks_, new_JavaUtilHashSet_init());
}

OrgApacheLuceneStoreSingleInstanceLockFactory *new_OrgApacheLuceneStoreSingleInstanceLockFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory, init)
}

OrgApacheLuceneStoreSingleInstanceLockFactory *create_OrgApacheLuceneStoreSingleInstanceLockFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSingleInstanceLockFactory)

@implementation OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock

- (instancetype)initWithOrgApacheLuceneStoreSingleInstanceLockFactory:(OrgApacheLuceneStoreSingleInstanceLockFactory *)outer$
                                                         withNSString:(NSString *)lockName {
  OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(self, outer$, lockName);
  return self;
}

- (void)ensureValid {
  if (JreLoadVolatileBoolean(&closed_)) {
    @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(JreStrcat("$@", @"Lock instance already released: ", self));
  }
  @synchronized(this$0_->locks_) {
    if (![((JavaUtilHashSet *) nil_chk(this$0_->locks_)) containsWithId:lockName_]) {
      @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(JreStrcat("$@", @"Lock instance was invalidated from map: ", self));
    }
  }
}

- (void)close {
  @synchronized(self) {
    if (JreLoadVolatileBoolean(&closed_)) {
      return;
    }
    @try {
      @synchronized(this$0_->locks_) {
        if (![((JavaUtilHashSet *) nil_chk(this$0_->locks_)) removeWithId:lockName_]) {
          @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(JreStrcat("$@", @"Lock was already released: ", self));
        }
      }
    }
    @finally {
      JreAssignVolatileBoolean(&closed_, true);
    }
  }
}

- (NSString *)description {
  return JreStrcat("$$$", [super description], @": ", lockName_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(lockName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreSingleInstanceLockFactory:withNSString:);
  methods[1].selector = @selector(ensureValid);
  methods[2].selector = @selector(close);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneStoreSingleInstanceLockFactory;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "lockName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "closed_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreSingleInstanceLockFactory;LNSString;", "LJavaIoIOException;", "toString", "LOrgApacheLuceneStoreSingleInstanceLockFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock = { "SingleInstanceLock", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x2, 4, 3, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock;
}

@end

void OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *self, OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneStoreLock_init(self);
  JreStrongAssign(&self->lockName_, lockName);
}

OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *new_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock, initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_, outer$, lockName)
}

OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *create_OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock_initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_(OrgApacheLuceneStoreSingleInstanceLockFactory *outer$, NSString *lockName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock, initWithOrgApacheLuceneStoreSingleInstanceLockFactory_withNSString_, outer$, lockName)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock)
