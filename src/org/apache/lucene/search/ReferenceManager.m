//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ReferenceManager.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"
#include "java/util/concurrent/locks/Lock.h"
#include "java/util/concurrent/locks/ReentrantLock.h"
#include "org/apache/lucene/search/ReferenceManager.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"

@interface OrgApacheLuceneSearchReferenceManager () {
 @public
  id<JavaUtilConcurrentLocksLock> refreshLock_;
  id<JavaUtilList> refreshListeners_;
}

- (void)ensureOpen;

- (void)swapReferenceWithId:(id)newReference;

- (void)doMaybeRefresh;

- (void)notifyRefreshListenersBefore;

- (void)notifyRefreshListenersRefreshedWithBoolean:(jboolean)didRefresh;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReferenceManager, refreshLock_, id<JavaUtilConcurrentLocksLock>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReferenceManager, refreshListeners_, id<JavaUtilList>)

static NSString *OrgApacheLuceneSearchReferenceManager_REFERENCE_MANAGER_IS_CLOSED_MSG_ = @"this ReferenceManager is closed";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchReferenceManager, REFERENCE_MANAGER_IS_CLOSED_MSG_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_ensureOpen(OrgApacheLuceneSearchReferenceManager *self);

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_swapReferenceWithId_(OrgApacheLuceneSearchReferenceManager *self, id newReference);

__attribute__((unused)) static id OrgApacheLuceneSearchReferenceManager_acquire(OrgApacheLuceneSearchReferenceManager *self);

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_doMaybeRefresh(OrgApacheLuceneSearchReferenceManager *self);

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_release__WithId_(OrgApacheLuceneSearchReferenceManager *self, id reference);

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersBefore(OrgApacheLuceneSearchReferenceManager *self);

__attribute__((unused)) static void OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersRefreshedWithBoolean_(OrgApacheLuceneSearchReferenceManager *self, jboolean didRefresh);

@interface OrgApacheLuceneSearchReferenceManager_RefreshListener : NSObject

@end

@implementation OrgApacheLuceneSearchReferenceManager

- (void)ensureOpen {
  OrgApacheLuceneSearchReferenceManager_ensureOpen(self);
}

- (void)swapReferenceWithId:(id)newReference {
  OrgApacheLuceneSearchReferenceManager_swapReferenceWithId_(self, newReference);
}

- (void)decRefWithId:(id)reference {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)refreshIfNeededWithId:(id)referenceToRefresh {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)tryIncRefWithId:(id)reference {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)acquire {
  return OrgApacheLuceneSearchReferenceManager_acquire(self);
}

- (void)close {
  @synchronized(self) {
    if (JreLoadVolatileId(&current_) != nil) {
      OrgApacheLuceneSearchReferenceManager_swapReferenceWithId_(self, nil);
      [self afterClose];
    }
  }
}

- (jint)getRefCountWithId:(id)reference {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)afterClose {
}

- (void)doMaybeRefresh {
  OrgApacheLuceneSearchReferenceManager_doMaybeRefresh(self);
}

- (jboolean)maybeRefresh {
  OrgApacheLuceneSearchReferenceManager_ensureOpen(self);
  jboolean doTryRefresh = [((id<JavaUtilConcurrentLocksLock>) nil_chk(refreshLock_)) tryLock];
  if (doTryRefresh) {
    @try {
      OrgApacheLuceneSearchReferenceManager_doMaybeRefresh(self);
    }
    @finally {
      [refreshLock_ unlock];
    }
  }
  return doTryRefresh;
}

- (void)maybeRefreshBlocking {
  OrgApacheLuceneSearchReferenceManager_ensureOpen(self);
  [((id<JavaUtilConcurrentLocksLock>) nil_chk(refreshLock_)) lock];
  @try {
    OrgApacheLuceneSearchReferenceManager_doMaybeRefresh(self);
  }
  @finally {
    [refreshLock_ unlock];
  }
}

- (void)afterMaybeRefresh {
}

- (void)release__WithId:(id)reference {
  OrgApacheLuceneSearchReferenceManager_release__WithId_(self, reference);
}

- (void)notifyRefreshListenersBefore {
  OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersBefore(self);
}

- (void)notifyRefreshListenersRefreshedWithBoolean:(jboolean)didRefresh {
  OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersRefreshedWithBoolean_(self, didRefresh);
}

- (void)addListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:(id<OrgApacheLuceneSearchReferenceManager_RefreshListener>)listener {
  if (listener == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"Listener cannot be null") autorelease];
  }
  [((id<JavaUtilList>) nil_chk(refreshListeners_)) addWithId:listener];
}

- (void)removeListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:(id<OrgApacheLuceneSearchReferenceManager_RefreshListener>)listener {
  if (listener == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"Listener cannot be null") autorelease];
  }
  [((id<JavaUtilList>) nil_chk(refreshListeners_)) removeWithId:listener];
}

- (instancetype)init {
  OrgApacheLuceneSearchReferenceManager_init(self);
  return self;
}

- (void)dealloc {
  JreReleaseVolatile(&current_);
  RELEASE_(refreshLock_);
  RELEASE_(refreshListeners_);
  [super dealloc];
}

- (void)__javaClone {
  [super __javaClone];
  JreRetainVolatile(&current_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ensureOpen", NULL, "V", 0x2, NULL, NULL },
    { "swapReferenceWithId:", "swapReference", "V", 0x22, "Ljava.io.IOException;", "(TG;)V" },
    { "decRefWithId:", "decRef", "V", 0x404, "Ljava.io.IOException;", "(TG;)V" },
    { "refreshIfNeededWithId:", "refreshIfNeeded", "TG;", 0x404, "Ljava.io.IOException;", "(TG;)TG;" },
    { "tryIncRefWithId:", "tryIncRef", "Z", 0x404, "Ljava.io.IOException;", "(TG;)Z" },
    { "acquire", NULL, "TG;", 0x11, "Ljava.io.IOException;", "()TG;" },
    { "close", NULL, "V", 0x31, "Ljava.io.IOException;", NULL },
    { "getRefCountWithId:", "getRefCount", "I", 0x404, NULL, "(TG;)I" },
    { "afterClose", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "doMaybeRefresh", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "maybeRefresh", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "maybeRefreshBlocking", NULL, "V", 0x11, "Ljava.io.IOException;", NULL },
    { "afterMaybeRefresh", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "release__WithId:", "release", "V", 0x11, "Ljava.io.IOException;", "(TG;)V" },
    { "notifyRefreshListenersBefore", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "notifyRefreshListenersRefreshedWithBoolean:", "notifyRefreshListenersRefreshed", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "addListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:", "addListener", "V", 0x1, NULL, NULL },
    { "removeListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:", "removeListener", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "REFERENCE_MANAGER_IS_CLOSED_MSG_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneSearchReferenceManager_REFERENCE_MANAGER_IS_CLOSED_MSG_, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x44, "TG;", NULL, "TG;", .constantValue.asLong = 0 },
    { "refreshLock_", NULL, 0x12, "Ljava.util.concurrent.locks.Lock;", NULL, NULL, .constantValue.asLong = 0 },
    { "refreshListeners_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/search/ReferenceManager$RefreshListener;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.ReferenceManager$RefreshListener;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchReferenceManager = { 2, "ReferenceManager", "org.apache.lucene.search", NULL, 0x401, 19, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, "<G:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Closeable;" };
  return &_OrgApacheLuceneSearchReferenceManager;
}

@end

void OrgApacheLuceneSearchReferenceManager_ensureOpen(OrgApacheLuceneSearchReferenceManager *self) {
  if (JreLoadVolatileId(&self->current_) == nil) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(OrgApacheLuceneSearchReferenceManager_REFERENCE_MANAGER_IS_CLOSED_MSG_) autorelease];
  }
}

void OrgApacheLuceneSearchReferenceManager_swapReferenceWithId_(OrgApacheLuceneSearchReferenceManager *self, id newReference) {
  @synchronized(self) {
    OrgApacheLuceneSearchReferenceManager_ensureOpen(self);
    id oldReference = JreLoadVolatileId(&self->current_);
    JreVolatileStrongAssign(&self->current_, newReference);
    OrgApacheLuceneSearchReferenceManager_release__WithId_(self, oldReference);
  }
}

id OrgApacheLuceneSearchReferenceManager_acquire(OrgApacheLuceneSearchReferenceManager *self) {
  id ref;
  do {
    if ((ref = JreLoadVolatileId(&self->current_)) == nil) {
      @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(OrgApacheLuceneSearchReferenceManager_REFERENCE_MANAGER_IS_CLOSED_MSG_) autorelease];
    }
    if ([self tryIncRefWithId:ref]) {
      return ref;
    }
    if ([self getRefCountWithId:ref] == 0 && JreLoadVolatileId(&self->current_) == ref) {
      JreAssert((ref != nil), (@"org/apache/lucene/search/ReferenceManager.java:104 condition failed: assert ref != null;"));
      @throw [new_JavaLangIllegalStateException_initWithNSString_(@"The managed reference has already closed - this is likely a bug when the reference count is modified outside of the ReferenceManager") autorelease];
    }
  }
  while (YES);
}

void OrgApacheLuceneSearchReferenceManager_doMaybeRefresh(OrgApacheLuceneSearchReferenceManager *self) {
  [((id<JavaUtilConcurrentLocksLock>) nil_chk(self->refreshLock_)) lock];
  jboolean refreshed = NO;
  @try {
    id reference = OrgApacheLuceneSearchReferenceManager_acquire(self);
    @try {
      OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersBefore(self);
      id newReference = [self refreshIfNeededWithId:reference];
      if (newReference != nil) {
        JreAssert((newReference != reference), (@"refreshIfNeeded should return null if refresh wasn't needed"));
        @try {
          OrgApacheLuceneSearchReferenceManager_swapReferenceWithId_(self, newReference);
          refreshed = YES;
        }
        @finally {
          if (!refreshed) {
            OrgApacheLuceneSearchReferenceManager_release__WithId_(self, newReference);
          }
        }
      }
    }
    @finally {
      OrgApacheLuceneSearchReferenceManager_release__WithId_(self, reference);
      OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersRefreshedWithBoolean_(self, refreshed);
    }
    [self afterMaybeRefresh];
  }
  @finally {
    [self->refreshLock_ unlock];
  }
}

void OrgApacheLuceneSearchReferenceManager_release__WithId_(OrgApacheLuceneSearchReferenceManager *self, id reference) {
  JreAssert((reference != nil), (@"org/apache/lucene/search/ReferenceManager.java:273 condition failed: assert reference != null;"));
  [self decRefWithId:reference];
}

void OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersBefore(OrgApacheLuceneSearchReferenceManager *self) {
  for (id<OrgApacheLuceneSearchReferenceManager_RefreshListener> __strong refreshListener in nil_chk(self->refreshListeners_)) {
    [((id<OrgApacheLuceneSearchReferenceManager_RefreshListener>) nil_chk(refreshListener)) beforeRefresh];
  }
}

void OrgApacheLuceneSearchReferenceManager_notifyRefreshListenersRefreshedWithBoolean_(OrgApacheLuceneSearchReferenceManager *self, jboolean didRefresh) {
  for (id<OrgApacheLuceneSearchReferenceManager_RefreshListener> __strong refreshListener in nil_chk(self->refreshListeners_)) {
    [((id<OrgApacheLuceneSearchReferenceManager_RefreshListener>) nil_chk(refreshListener)) afterRefreshWithBoolean:didRefresh];
  }
}

void OrgApacheLuceneSearchReferenceManager_init(OrgApacheLuceneSearchReferenceManager *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->refreshLock_, new_JavaUtilConcurrentLocksReentrantLock_init());
  JreStrongAssignAndConsume(&self->refreshListeners_, new_JavaUtilConcurrentCopyOnWriteArrayList_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchReferenceManager)

@implementation OrgApacheLuceneSearchReferenceManager_RefreshListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "beforeRefresh", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "afterRefreshWithBoolean:", "afterRefresh", "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchReferenceManager_RefreshListener = { 2, "RefreshListener", "org.apache.lucene.search", "ReferenceManager", 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchReferenceManager_RefreshListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchReferenceManager_RefreshListener)
