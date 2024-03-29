//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterStallControl.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocumentsWriterStallControl.h"
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"
#include "org/apache/lucene/util/InfoStream.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/DocumentsWriterStallControl must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexDocumentsWriterStallControl () {
 @public
  volatile_jboolean stalled_;
  jint numWaiting_;
  jboolean wasStalled_;
  id<JavaUtilMap> waiting_;
  OrgApacheLuceneUtilInfoStream *infoStream_;
}

- (void)incWaiters;

- (void)decrWaiters;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterStallControl, waiting_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterStallControl, infoStream_, OrgApacheLuceneUtilInfoStream *)

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self);

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self);

@implementation OrgApacheLuceneIndexDocumentsWriterStallControl

- (instancetype)initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig:(OrgApacheLuceneIndexLiveIndexWriterConfig *)iwc {
  OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(self, iwc);
  return self;
}

- (void)updateStalledWithBoolean:(jboolean)stalled {
  @synchronized(self) {
    JreAssignVolatileBoolean(&self->stalled_, stalled);
    if (stalled) {
      wasStalled_ = true;
    }
    [self java_notifyAll];
  }
}

- (void)waitIfStalled {
  if (JreLoadVolatileBoolean(&stalled_)) {
    @synchronized(self) {
      if (JreLoadVolatileBoolean(&stalled_)) {
        @try {
          OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(self);
          [self java_waitWithLong:1000];
          OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(self);
        }
        @catch (JavaLangInterruptedException *e) {
          @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(e);
        }
      }
    }
  }
}

- (jboolean)anyStalledThreads {
  return JreLoadVolatileBoolean(&stalled_);
}

- (void)incWaiters {
  OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(self);
}

- (void)decrWaiters {
  OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(self);
}

- (jboolean)hasBlocked {
  @synchronized(self) {
    return numWaiting_ > 0;
  }
}

- (jboolean)isHealthy {
  return !JreLoadVolatileBoolean(&stalled_);
}

- (jboolean)isThreadQueuedWithJavaLangThread:(JavaLangThread *)t {
  @synchronized(self) {
    return [((id<JavaUtilMap>) nil_chk(waiting_)) containsKeyWithId:t];
  }
}

- (jboolean)wasStalled {
  @synchronized(self) {
    return wasStalled_;
  }
}

- (void)dealloc {
  RELEASE_(waiting_);
  RELEASE_(infoStream_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x20, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x20, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x20, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig:);
  methods[1].selector = @selector(updateStalledWithBoolean:);
  methods[2].selector = @selector(waitIfStalled);
  methods[3].selector = @selector(anyStalledThreads);
  methods[4].selector = @selector(incWaiters);
  methods[5].selector = @selector(decrWaiters);
  methods[6].selector = @selector(hasBlocked);
  methods[7].selector = @selector(isHealthy);
  methods[8].selector = @selector(isThreadQueuedWithJavaLangThread:);
  methods[9].selector = @selector(wasStalled);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "stalled_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "numWaiting_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "wasStalled_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "waiting_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
    { "infoStream_", "LOrgApacheLuceneUtilInfoStream;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "stallStartNS_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexLiveIndexWriterConfig;", "updateStalled", "Z", "isThreadQueued", "LJavaLangThread;", "Ljava/util/Map<Ljava/lang/Thread;Ljava/lang/Boolean;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterStallControl = { "DocumentsWriterStallControl", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 10, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocumentsWriterStallControl;
}

@end

void OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexDocumentsWriterStallControl *self, OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->waiting_, new_JavaUtilIdentityHashMap_init());
  JreStrongAssign(&self->infoStream_, [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(iwc)) getInfoStream]);
}

OrgApacheLuceneIndexDocumentsWriterStallControl *new_OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterStallControl, initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_, iwc)
}

OrgApacheLuceneIndexDocumentsWriterStallControl *create_OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterStallControl, initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_, iwc)
}

void OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self) {
  self->stallStartNS_ = JavaLangSystem_nanoTime();
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(self->infoStream_)) isEnabledWithNSString:@"DW"] && self->numWaiting_ == 0) {
    [self->infoStream_ messageWithNSString:@"DW" withNSString:@"now stalling flushes"];
  }
  self->numWaiting_++;
  JreAssert([((id<JavaUtilMap>) nil_chk(self->waiting_)) putWithId:JavaLangThread_currentThread() withId:JreLoadStatic(JavaLangBoolean, TRUE)] == nil, @"org/apache/lucene/index/DocumentsWriterStallControl.java:104 condition failed: assert waiting.put(Thread.currentThread(), Boolean.TRUE) == null;");
  JreAssert(self->numWaiting_ > 0, @"org/apache/lucene/index/DocumentsWriterStallControl.java:105 condition failed: assert numWaiting > 0;");
}

void OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self) {
  self->numWaiting_--;
  JreAssert([((id<JavaUtilMap>) nil_chk(self->waiting_)) removeWithId:JavaLangThread_currentThread()] != nil, @"org/apache/lucene/index/DocumentsWriterStallControl.java:110 condition failed: assert waiting.remove(Thread.currentThread()) != null;");
  JreAssert(self->numWaiting_ >= 0, @"org/apache/lucene/index/DocumentsWriterStallControl.java:111 condition failed: assert numWaiting >= 0;");
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(self->infoStream_)) isEnabledWithNSString:@"DW"] && self->numWaiting_ == 0) {
    jlong stallEndNS = JavaLangSystem_nanoTime();
    [self->infoStream_ messageWithNSString:@"DW" withNSString:JreStrcat("$D$", @"done stalling flushes for ", ((stallEndNS - self->stallStartNS_) / 1000000.0), @" ms")];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterStallControl)
