//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SleepingLockWrapper.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FilterDirectory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockObtainFailedException.h"
#include "org/apache/lucene/store/SleepingLockWrapper.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/SleepingLockWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreSleepingLockWrapper () {
 @public
  jlong lockWaitTimeout_;
  jlong pollInterval_;
}

@end

jlong OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL = 1000;

@implementation OrgApacheLuceneStoreSleepingLockWrapper

+ (jlong)LOCK_OBTAIN_WAIT_FOREVER {
  return OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER;
}

+ (jlong)DEFAULT_POLL_INTERVAL {
  return OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL;
}

+ (void)setDEFAULT_POLL_INTERVAL:(jlong)value {
  OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL = value;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                             withLong:(jlong)lockWaitTimeout {
  OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(self, delegate, lockWaitTimeout);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                             withLong:(jlong)lockWaitTimeout
                                             withLong:(jlong)pollInterval {
  OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(self, delegate, lockWaitTimeout, pollInterval);
  return self;
}

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)lockName {
  OrgApacheLuceneStoreLockObtainFailedException *failureReason = nil;
  jlong maxSleepCount = JreLongDiv(lockWaitTimeout_, pollInterval_);
  jlong sleepCount = 0;
  do {
    @try {
      return [((OrgApacheLuceneStoreDirectory *) nil_chk(in_)) obtainLockWithNSString:lockName];
    }
    @catch (OrgApacheLuceneStoreLockObtainFailedException *failed) {
      if (failureReason == nil) {
        failureReason = failed;
      }
    }
    @try {
      JavaLangThread_sleepWithLong_(pollInterval_);
    }
    @catch (JavaLangInterruptedException *ie) {
      @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
    }
  }
  while (sleepCount++ < maxSleepCount || lockWaitTimeout_ == OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER);
  NSString *reason = JreStrcat("$$", @"Lock obtain timed out: ", [self description]);
  if (failureReason != nil) {
    JreStrAppend(&reason, "$@", @": ", failureReason);
  }
  @throw create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(reason, failureReason);
}

- (NSString *)description {
  return JreStrcat("$@C", @"SleepingLockWrapper(", in_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreDirectory:withLong:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDirectory:withLong:withLong:);
  methods[2].selector = @selector(obtainLockWithNSString:);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOCK_OBTAIN_WAIT_FOREVER", "J", .constantValue.asLong = OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_POLL_INTERVAL", "J", .constantValue.asLong = 0, 0x9, -1, 6, -1, -1 },
    { "lockWaitTimeout_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "pollInterval_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreDirectory;J", "LOrgApacheLuceneStoreDirectory;JJ", "obtainLock", "LNSString;", "LJavaIoIOException;", "toString", &OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSleepingLockWrapper = { "SleepingLockWrapper", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x11, 4, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSleepingLockWrapper;
}

@end

void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout) {
  OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(self, delegate, lockWaitTimeout, OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL);
}

OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSleepingLockWrapper, initWithOrgApacheLuceneStoreDirectory_withLong_, delegate, lockWaitTimeout)
}

OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSleepingLockWrapper, initWithOrgApacheLuceneStoreDirectory_withLong_, delegate, lockWaitTimeout)
}

void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval) {
  OrgApacheLuceneStoreFilterDirectory_initWithOrgApacheLuceneStoreDirectory_(self, delegate);
  self->lockWaitTimeout_ = lockWaitTimeout;
  self->pollInterval_ = pollInterval;
  if (lockWaitTimeout < 0 && lockWaitTimeout != OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$JC", @"lockWaitTimeout should be LOCK_OBTAIN_WAIT_FOREVER or a non-negative number (got ", lockWaitTimeout, ')'));
  }
  if (pollInterval < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$JC", @"pollInterval must be a non-negative number (got ", pollInterval, ')'));
  }
}

OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSleepingLockWrapper, initWithOrgApacheLuceneStoreDirectory_withLong_withLong_, delegate, lockWaitTimeout, pollInterval)
}

OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSleepingLockWrapper, initWithOrgApacheLuceneStoreDirectory_withLong_withLong_, delegate, lockWaitTimeout, pollInterval)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSleepingLockWrapper)
