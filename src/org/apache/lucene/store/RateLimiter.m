//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RateLimiter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "org/apache/lucene/store/RateLimiter.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

#define OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_MIN_PAUSE_CHECK_MSEC 5

@interface OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter () {
 @public
  volatile_jdouble mbPerSec_;
  volatile_jlong minPauseCheckBytes_;
  jlong lastNS_;
}

@end

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter, MIN_PAUSE_CHECK_MSEC, jint)

@implementation OrgApacheLuceneStoreRateLimiter

- (void)setMBPerSecWithDouble:(jdouble)mbPerSec {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jdouble)getMBPerSec {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)pauseWithLong:(jlong)bytes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getMinPauseCheckBytes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (instancetype)init {
  OrgApacheLuceneStoreRateLimiter_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setMBPerSecWithDouble:", "setMBPerSec", "V", 0x401, NULL, NULL },
    { "getMBPerSec", NULL, "D", 0x401, NULL, NULL },
    { "pauseWithLong:", "pause", "J", 0x401, "Ljava.io.IOException;", NULL },
    { "getMinPauseCheckBytes", NULL, "J", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.store.RateLimiter$SimpleRateLimiter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRateLimiter = { 2, "RateLimiter", "org.apache.lucene.store", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneStoreRateLimiter;
}

@end

void OrgApacheLuceneStoreRateLimiter_init(OrgApacheLuceneStoreRateLimiter *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRateLimiter)

@implementation OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter

- (instancetype)initWithDouble:(jdouble)mbPerSec {
  OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_initWithDouble_(self, mbPerSec);
  return self;
}

- (void)setMBPerSecWithDouble:(jdouble)mbPerSec {
  JreAssignVolatileDouble(&self->mbPerSec_, mbPerSec);
  JreAssignVolatileLong(&minPauseCheckBytes_, JreFpToLong(((OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_MIN_PAUSE_CHECK_MSEC / 1000.0) * mbPerSec * 1024 * 1024)));
}

- (jlong)getMinPauseCheckBytes {
  return JreLoadVolatileLong(&minPauseCheckBytes_);
}

- (jdouble)getMBPerSec {
  return JreLoadVolatileDouble(&self->mbPerSec_);
}

- (jlong)pauseWithLong:(jlong)bytes {
  jlong startNS = JavaLangSystem_nanoTime();
  jdouble secondsToPause = (bytes / 1024. / 1024.) / JreLoadVolatileDouble(&mbPerSec_);
  jlong targetNS;
  @synchronized(self) {
    targetNS = lastNS_ + JreFpToLong((1000000000 * secondsToPause));
    if (startNS >= targetNS) {
      lastNS_ = startNS;
      return 0;
    }
    lastNS_ = targetNS;
  }
  jlong curNS = startNS;
  while (YES) {
    jlong pauseNS = targetNS - curNS;
    if (pauseNS > 0) {
      @try {
        jint sleepNS;
        jint sleepMS;
        if (pauseNS > 100000LL * JavaLangInteger_MAX_VALUE) {
          sleepMS = JavaLangInteger_MAX_VALUE;
          sleepNS = 0;
        }
        else {
          sleepMS = (jint) (pauseNS / 1000000);
          sleepNS = (jint) (pauseNS % 1000000);
        }
        JavaLangThread_sleepWithLong_withInt_(sleepMS, sleepNS);
      }
      @catch (JavaLangInterruptedException *ie) {
        @throw [new_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie) autorelease];
      }
      curNS = JavaLangSystem_nanoTime();
      continue;
    }
    break;
  }
  return curNS - startNS;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:", "SimpleRateLimiter", NULL, 0x1, NULL, NULL },
    { "setMBPerSecWithDouble:", "setMBPerSec", "V", 0x1, NULL, NULL },
    { "getMinPauseCheckBytes", NULL, "J", 0x1, NULL, NULL },
    { "getMBPerSec", NULL, "D", 0x1, NULL, NULL },
    { "pauseWithLong:", "pause", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_PAUSE_CHECK_MSEC", "MIN_PAUSE_CHECK_MSEC", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_MIN_PAUSE_CHECK_MSEC },
    { "mbPerSec_", NULL, 0x42, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "minPauseCheckBytes_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastNS_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter = { 2, "SimpleRateLimiter", "org.apache.lucene.store", "RateLimiter", 0x9, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter;
}

@end

void OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_initWithDouble_(OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter *self, jdouble mbPerSec) {
  OrgApacheLuceneStoreRateLimiter_init(self);
  [self setMBPerSecWithDouble:mbPerSec];
  self->lastNS_ = JavaLangSystem_nanoTime();
}

OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter *new_OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_initWithDouble_(jdouble mbPerSec) {
  OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter *self = [OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter alloc];
  OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter_initWithDouble_(self, mbPerSec);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter)