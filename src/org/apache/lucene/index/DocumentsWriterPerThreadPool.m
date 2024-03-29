//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterPerThreadPool.java
//

#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/locks/ReentrantLock.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/DocumentsWriterPerThreadPool.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/DocumentsWriterPerThreadPool must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexDocumentsWriterPerThreadPool () {
 @public
  id<JavaUtilList> threadStates_;
  id<JavaUtilList> freeList_;
  jboolean aborted_;
}

/*!
 @brief Returns a new <code>ThreadState</code> iff any new state is available otherwise 
 <code>null</code>.
 <p>
  NOTE: the returned <code>ThreadState</code> is already locked iff non- 
 <code>null</code>.
 @return a new <code>ThreadState</code> iff any new state is available otherwise
          <code>null</code>
 */
- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)newThreadState OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThreadPool, threadStates_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThreadPool, freeList_, id<JavaUtilList>)

__attribute__((unused)) static OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *OrgApacheLuceneIndexDocumentsWriterPerThreadPool_newThreadState(OrgApacheLuceneIndexDocumentsWriterPerThreadPool *self);

@interface OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState ()

- (void)reset;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_reset(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *self);

@implementation OrgApacheLuceneIndexDocumentsWriterPerThreadPool

- (instancetype)initPackagePrivate {
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_initPackagePrivate(self);
  return self;
}

- (jint)getActiveThreadStateCount {
  @synchronized(self) {
    return [((id<JavaUtilList>) nil_chk(threadStates_)) size];
  }
}

- (void)setAbort {
  @synchronized(self) {
    aborted_ = true;
  }
}

- (void)clearAbort {
  @synchronized(self) {
    aborted_ = false;
    [self java_notifyAll];
  }
}

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)newThreadState {
  return OrgApacheLuceneIndexDocumentsWriterPerThreadPool_newThreadState(self);
}

- (OrgApacheLuceneIndexDocumentsWriterPerThread *)resetWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)threadState {
  JreAssert([((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(threadState)) isHeldByCurrentThread], @"org/apache/lucene/index/DocumentsWriterPerThreadPool.java:155 condition failed: assert threadState.isHeldByCurrentThread();");
  OrgApacheLuceneIndexDocumentsWriterPerThread *dwpt = threadState->dwpt_;
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_reset(threadState);
  return dwpt;
}

- (void)recycleWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)dwpt {
}

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)getAndLockWithJavaLangThread:(JavaLangThread *)requestingThread
                                                       withOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)documentsWriter {
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *threadState = nil;
  @synchronized(self) {
    if ([((id<JavaUtilList>) nil_chk(freeList_)) isEmpty]) {
      return OrgApacheLuceneIndexDocumentsWriterPerThreadPool_newThreadState(self);
    }
    else {
      threadState = JreRetainedLocalValue([freeList_ removeWithInt:[freeList_ size] - 1]);
      if (((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(threadState))->dwpt_ == nil) {
        for (jint i = 0; i < [freeList_ size]; i++) {
          OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *ts = JreRetainedLocalValue([freeList_ getWithInt:i]);
          if (((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(ts))->dwpt_ != nil) {
            [freeList_ setWithInt:i withId:threadState];
            threadState = JreRetainedLocalValue(ts);
            break;
          }
        }
      }
    }
  }
  [threadState lock];
  return threadState;
}

- (void)release__WithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)state {
  [((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(state)) unlock];
  @synchronized(self) {
    [((id<JavaUtilList>) nil_chk(freeList_)) addWithId:state];
    [self java_notifyAll];
  }
}

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)getThreadStateWithInt:(jint)ord {
  @synchronized(self) {
    return JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(threadStates_)) getWithInt:ord]);
  }
}

- (jint)getMaxThreadStates {
  @synchronized(self) {
    return [((id<JavaUtilList>) nil_chk(threadStates_)) size];
  }
}

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)minContendedThreadState {
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *minThreadState = nil;
  for (OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState * __strong state in nil_chk(threadStates_)) {
    if (minThreadState == nil || [((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(state)) getQueueLength] < [minThreadState getQueueLength]) {
      minThreadState = state;
    }
  }
  return minThreadState;
}

- (void)dealloc {
  RELEASE_(threadStates_);
  RELEASE_(freeList_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;", 0x22, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThread;", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;", 0x20, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(getActiveThreadStateCount);
  methods[2].selector = @selector(setAbort);
  methods[3].selector = @selector(clearAbort);
  methods[4].selector = @selector(newThreadState);
  methods[5].selector = @selector(resetWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:);
  methods[6].selector = @selector(recycleWithOrgApacheLuceneIndexDocumentsWriterPerThread:);
  methods[7].selector = @selector(getAndLockWithJavaLangThread:withOrgApacheLuceneIndexDocumentsWriter:);
  methods[8].selector = @selector(release__WithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:);
  methods[9].selector = @selector(getThreadStateWithInt:);
  methods[10].selector = @selector(getMaxThreadStates);
  methods[11].selector = @selector(minContendedThreadState);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "threadStates_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "freeList_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "aborted_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "reset", "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;", "recycle", "LOrgApacheLuceneIndexDocumentsWriterPerThread;", "getAndLock", "LJavaLangThread;LOrgApacheLuceneIndexDocumentsWriter;", "release", "getThreadState", "I", "Ljava/util/List<Lorg/apache/lucene/index/DocumentsWriterPerThreadPool$ThreadState;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterPerThreadPool = { "DocumentsWriterPerThreadPool", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 12, 3, -1, 1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocumentsWriterPerThreadPool;
}

@end

void OrgApacheLuceneIndexDocumentsWriterPerThreadPool_initPackagePrivate(OrgApacheLuceneIndexDocumentsWriterPerThreadPool *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->threadStates_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->freeList_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneIndexDocumentsWriterPerThreadPool *new_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterPerThreadPool, initPackagePrivate)
}

OrgApacheLuceneIndexDocumentsWriterPerThreadPool *create_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterPerThreadPool, initPackagePrivate)
}

OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *OrgApacheLuceneIndexDocumentsWriterPerThreadPool_newThreadState(OrgApacheLuceneIndexDocumentsWriterPerThreadPool *self) {
  @synchronized(self) {
    while (self->aborted_) {
      @try {
        [self java_wait];
      }
      @catch (JavaLangInterruptedException *ie) {
        @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
      }
    }
    OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *threadState = create_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(nil);
    [threadState lock];
    [((id<JavaUtilList>) nil_chk(self->threadStates_)) addWithId:threadState];
    return JreRetainedLocalValue(threadState);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterPerThreadPool)

@implementation OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)dpwt {
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(self, dpwt);
  return self;
}

- (void)reset {
  OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_reset(self);
}

- (jboolean)isInitialized {
  JreAssert([self isHeldByCurrentThread], @"org/apache/lucene/index/DocumentsWriterPerThreadPool.java:76 condition failed: assert this.isHeldByCurrentThread();");
  return dwpt_ != nil;
}

- (jlong)getBytesUsedPerThread {
  JreAssert([self isHeldByCurrentThread], @"org/apache/lucene/index/DocumentsWriterPerThreadPool.java:85 condition failed: assert this.isHeldByCurrentThread();");
  return bytesUsed_;
}

- (OrgApacheLuceneIndexDocumentsWriterPerThread *)getDocumentsWriterPerThread {
  JreAssert([self isHeldByCurrentThread], @"org/apache/lucene/index/DocumentsWriterPerThreadPool.java:94 condition failed: assert this.isHeldByCurrentThread();");
  return dwpt_;
}

- (jboolean)isFlushPending {
  return JreLoadVolatileBoolean(&flushPending_);
}

- (void)dealloc {
  RELEASE_(dwpt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriterPerThread;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriterPerThread:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(isInitialized);
  methods[3].selector = @selector(getBytesUsedPerThread);
  methods[4].selector = @selector(getDocumentsWriterPerThread);
  methods[5].selector = @selector(isFlushPending);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dwpt_", "LOrgApacheLuceneIndexDocumentsWriterPerThread;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "flushPending_", "Z", .constantValue.asLong = 0, 0x40, -1, -1, -1, -1 },
    { "bytesUsed_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriterPerThread;", "LOrgApacheLuceneIndexDocumentsWriterPerThreadPool;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState = { "ThreadState", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x18, 6, 3, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState;
}

@end

void OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *self, OrgApacheLuceneIndexDocumentsWriterPerThread *dpwt) {
  JavaUtilConcurrentLocksReentrantLock_init(self);
  JreAssignVolatileBoolean(&self->flushPending_, false);
  self->bytesUsed_ = 0;
  JreStrongAssign(&self->dwpt_, dpwt);
}

OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *new_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *dpwt) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState, initWithOrgApacheLuceneIndexDocumentsWriterPerThread_, dpwt)
}

OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *create_OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *dpwt) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState, initWithOrgApacheLuceneIndexDocumentsWriterPerThread_, dpwt)
}

void OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState_reset(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *self) {
  JreAssert([self isHeldByCurrentThread], @"org/apache/lucene/index/DocumentsWriterPerThreadPool.java:69 condition failed: assert this.isHeldByCurrentThread();");
  JreStrongAssign(&self->dwpt_, nil);
  self->bytesUsed_ = 0;
  JreAssignVolatileBoolean(&self->flushPending_, false);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState)
