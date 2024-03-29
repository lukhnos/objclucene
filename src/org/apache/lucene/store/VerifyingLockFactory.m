//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/VerifyingLockFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/VerifyingLockFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/VerifyingLockFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock : OrgApacheLuceneStoreLock {
 @public
  OrgApacheLuceneStoreVerifyingLockFactory *this$0_;
  OrgApacheLuceneStoreLock *lock_;
}

- (instancetype)initWithOrgApacheLuceneStoreVerifyingLockFactory:(OrgApacheLuceneStoreVerifyingLockFactory *)outer$
                                    withOrgApacheLuceneStoreLock:(OrgApacheLuceneStoreLock *)lock;

- (void)ensureValid;

- (void)close;

- (void)verifyWithByte:(jbyte)message;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock, lock_, OrgApacheLuceneStoreLock *)

__attribute__((unused)) static void OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *self, OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock);

__attribute__((unused)) static OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *new_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *create_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock);

__attribute__((unused)) static void OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_verifyWithByte_(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *self, jbyte message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock)

@implementation OrgApacheLuceneStoreVerifyingLockFactory

- (instancetype)initWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lf
                                  withJavaIoInputStream:(JavaIoInputStream *)inArg
                                 withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(self, lf, inArg, outArg);
  return self;
}

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName {
  return create_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(self, [((OrgApacheLuceneStoreLockFactory *) nil_chk(lf_)) obtainLockWithOrgApacheLuceneStoreDirectory:dir withNSString:lockName]);
}

- (void)dealloc {
  RELEASE_(lf_);
  RELEASE_(in_);
  RELEASE_(out_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 2, 3, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreLockFactory:withJavaIoInputStream:withJavaIoOutputStream:);
  methods[1].selector = @selector(obtainLockWithOrgApacheLuceneStoreDirectory:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lf_", "LOrgApacheLuceneStoreLockFactory;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "in_", "LJavaIoInputStream;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "out_", "LJavaIoOutputStream;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreLockFactory;LJavaIoInputStream;LJavaIoOutputStream;", "LJavaIoIOException;", "obtainLock", "LOrgApacheLuceneStoreDirectory;LNSString;", "LOrgApacheLuceneStoreVerifyingLockFactory_CheckedLock;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreVerifyingLockFactory = { "VerifyingLockFactory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneStoreVerifyingLockFactory;
}

@end

void OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreVerifyingLockFactory *self, OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg) {
  OrgApacheLuceneStoreLockFactory_init(self);
  JreStrongAssign(&self->lf_, lf);
  JreStrongAssign(&self->in_, inArg);
  JreStrongAssign(&self->out_, outArg);
}

OrgApacheLuceneStoreVerifyingLockFactory *new_OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreVerifyingLockFactory, initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_, lf, inArg, outArg)
}

OrgApacheLuceneStoreVerifyingLockFactory *create_OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreVerifyingLockFactory, initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_, lf, inArg, outArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreVerifyingLockFactory)

@implementation OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock

- (instancetype)initWithOrgApacheLuceneStoreVerifyingLockFactory:(OrgApacheLuceneStoreVerifyingLockFactory *)outer$
                                    withOrgApacheLuceneStoreLock:(OrgApacheLuceneStoreLock *)lock {
  OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(self, outer$, lock);
  return self;
}

- (void)ensureValid {
  [((OrgApacheLuceneStoreLock *) nil_chk(lock_)) ensureValid];
}

- (void)close {
  OrgApacheLuceneStoreLock *l = lock_;
  JavaLangThrowable *__primaryException1 = nil;
  @try {
    [((OrgApacheLuceneStoreLock *) nil_chk(l)) ensureValid];
    OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_verifyWithByte_(self, (jbyte) 0);
  }
  @catch (JavaLangThrowable *e) {
    __primaryException1 = e;
    @throw e;
  }
  @finally {
    if (l != nil) {
      if (__primaryException1 != nil) {
        @try {
          [l close];
        }
        @catch (JavaLangThrowable *e) {
          [__primaryException1 addSuppressedWithJavaLangThrowable:e];
        }
      }
      else {
        [l close];
      }
    }
  }
}

- (void)verifyWithByte:(jbyte)message {
  OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_verifyWithByte_(self, message);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(lock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreVerifyingLockFactory:withOrgApacheLuceneStoreLock:);
  methods[1].selector = @selector(ensureValid);
  methods[2].selector = @selector(close);
  methods[3].selector = @selector(verifyWithByte:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneStoreVerifyingLockFactory;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "lock_", "LOrgApacheLuceneStoreLock;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreVerifyingLockFactory;LOrgApacheLuceneStoreLock;", "LJavaIoIOException;", "verify", "B", "LOrgApacheLuceneStoreVerifyingLockFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock = { "CheckedLock", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x2, 4, 2, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock;
}

@end

void OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *self, OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneStoreLock_init(self);
  JreStrongAssign(&self->lock_, lock);
  OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_verifyWithByte_(self, (jbyte) 1);
}

OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *new_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock, initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_, outer$, lock)
}

OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *create_OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreVerifyingLockFactory *outer$, OrgApacheLuceneStoreLock *lock) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock, initWithOrgApacheLuceneStoreVerifyingLockFactory_withOrgApacheLuceneStoreLock_, outer$, lock)
}

void OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock_verifyWithByte_(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock *self, jbyte message) {
  [((JavaIoOutputStream *) nil_chk(self->this$0_->out_)) writeWithInt:message];
  [self->this$0_->out_ flush];
  jint ret = [((JavaIoInputStream *) nil_chk(self->this$0_->in_)) read];
  if (ret < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"Lock server died because of locking error.");
  }
  if (ret != message) {
    @throw create_JavaIoIOException_initWithNSString_(@"Protocol violation.");
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreVerifyingLockFactory_CheckedLock)
