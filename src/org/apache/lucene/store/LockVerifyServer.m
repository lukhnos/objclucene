//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockVerifyServer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Error.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/net/InetSocketAddress.h"
#include "java/net/ServerSocket.h"
#include "java/net/Socket.h"
#include "java/net/SocketAddress.h"
#include "java/util/concurrent/CountDownLatch.h"
#include "org/apache/lucene/store/LockVerifyServer.h"
#include "org/apache/lucene/util/IOUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/LockVerifyServer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreLockVerifyServer_1 : JavaLangThread {
 @public
  JavaNetSocket *val$cs_;
  JavaUtilConcurrentCountDownLatch *val$startingGun_;
  id val$localLock_;
  IOSIntArray *val$lockedID_;
}

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)capture$0
 withJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$1
                               withId:(id)capture$2
                         withIntArray:(IOSIntArray *)capture$3;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockVerifyServer_1)

__attribute__((unused)) static void OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(OrgApacheLuceneStoreLockVerifyServer_1 *self, JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3);

__attribute__((unused)) static OrgApacheLuceneStoreLockVerifyServer_1 *new_OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreLockVerifyServer_1 *create_OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3);

@implementation OrgApacheLuceneStoreLockVerifyServer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreLockVerifyServer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneStoreLockVerifyServer_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "main", "[LNSString;", "LJavaLangException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockVerifyServer = { "LockVerifyServer", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreLockVerifyServer;
}

@end

void OrgApacheLuceneStoreLockVerifyServer_init(OrgApacheLuceneStoreLockVerifyServer *self) {
  NSObject_init(self);
}

OrgApacheLuceneStoreLockVerifyServer *new_OrgApacheLuceneStoreLockVerifyServer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockVerifyServer, init)
}

OrgApacheLuceneStoreLockVerifyServer *create_OrgApacheLuceneStoreLockVerifyServer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockVerifyServer, init)
}

void OrgApacheLuceneStoreLockVerifyServer_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneStoreLockVerifyServer_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ != 2) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Usage: java org.apache.lucene.store.LockVerifyServer bindToIp clients\n"];
    JavaLangSystem_exitWithInt_(1);
  }
  jint arg = 0;
  NSString *hostname = IOSObjectArray_Get(args, arg++);
  jint maxClients = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(args, arg++));
  {
    JavaNetServerSocket *s = create_JavaNetServerSocket_init();
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      [s setReuseAddressWithBoolean:true];
      [s setSoTimeoutWithInt:30000];
      [s bindWithJavaNetSocketAddress:create_JavaNetInetSocketAddress_initWithNSString_withInt_(hostname, 0)];
      JavaNetInetSocketAddress *localAddr = (JavaNetInetSocketAddress *) cast_chk([s getLocalSocketAddress], [JavaNetInetSocketAddress class]);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@$", @"Listening on ", localAddr, @"...")];
      JavaLangSystem_setPropertyWithNSString_withNSString_(@"lockverifyserver.port", JavaLangInteger_toStringWithInt_([((JavaNetInetSocketAddress *) nil_chk(localAddr)) getPort]));
      id localLock = create_NSObject_init();
      IOSIntArray *lockedID = [IOSIntArray arrayWithLength:1];
      *IOSIntArray_GetRef(lockedID, 0) = -1;
      JavaUtilConcurrentCountDownLatch *startingGun = create_JavaUtilConcurrentCountDownLatch_initWithInt_(1);
      IOSObjectArray *threads = [IOSObjectArray arrayWithLength:maxClients type:JavaLangThread_class_()];
      for (jint count = 0; count < maxClients; count++) {
        JavaNetSocket *cs = [s accept];
        IOSObjectArray_SetAndConsume(threads, count, new_OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(cs, startingGun, localLock, lockedID));
        [((JavaLangThread *) nil_chk(IOSObjectArray_Get(threads, count))) start];
      }
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"All clients started, fire gun..."];
      [startingGun countDown];
      {
        IOSObjectArray *a__ = threads;
        JavaLangThread * const *b__ = a__->buffer_;
        JavaLangThread * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          JavaLangThread *t = *b__++;
          [((JavaLangThread *) nil_chk(t)) join];
        }
      }
      JavaLangSystem_clearPropertyWithNSString_(@"lockverifyserver.port");
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Server terminated."];
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (s != nil) {
        if (__primaryException1 != nil) {
          @try {
            [s close];
          }
          @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        }
        else {
          [s close];
        }
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockVerifyServer)

@implementation OrgApacheLuceneStoreLockVerifyServer_1

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)capture$0
 withJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$1
                               withId:(id)capture$2
                         withIntArray:(IOSIntArray *)capture$3 {
  OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

- (void)run {
  @try {
    JavaIoInputStream *in = [((JavaNetSocket *) nil_chk(val$cs_)) getInputStream];
    JavaLangThrowable *__primaryException2 = nil;
    @try {
      JavaIoOutputStream *os = [val$cs_ getOutputStream];
      JavaLangThrowable *__primaryException1 = nil;
      @try {
        jint id_ = [((JavaIoInputStream *) nil_chk(in)) read];
        if (id_ < 0) {
          @throw create_JavaIoIOException_initWithNSString_(@"Client closed connection before communication started.");
        }
        [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$startingGun_)) await];
        [((JavaIoOutputStream *) nil_chk(os)) writeWithInt:43];
        [os flush];
        while (true) {
          jint command = [in read];
          if (command < 0) {
            return;
          }
          @synchronized(val$localLock_) {
            jint currentLock = IOSIntArray_Get(nil_chk(val$lockedID_), 0);
            if (currentLock == -2) {
              return;
            }
            switch (command) {
              case 1:
              if (currentLock != -1) {
                *IOSIntArray_GetRef(val$lockedID_, 0) = -2;
                @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$", @"id ", id_, @" got lock, but ", currentLock, @" already holds the lock"));
              }
              *IOSIntArray_GetRef(val$lockedID_, 0) = id_;
              break;
              case 0:
              if (currentLock != id_) {
                *IOSIntArray_GetRef(val$lockedID_, 0) = -2;
                @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$", @"id ", id_, @" released the lock, but ", currentLock, @" is the one holding the lock"));
              }
              *IOSIntArray_GetRef(val$lockedID_, 0) = -1;
              break;
              default:
              @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I", @"Unrecognized command: ", command));
            }
            [os writeWithInt:command];
            [os flush];
          }
        }
      }
      @catch (JavaLangThrowable *e) {
        __primaryException1 = e;
        @throw e;
      }
      @finally {
        if (os != nil) {
          if (__primaryException1 != nil) {
            @try {
              [os close];
            }
            @catch (JavaLangThrowable *e) {
              [__primaryException1 addSuppressedWithJavaLangThrowable:e];
            }
          }
          else {
            [os close];
          }
        }
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException2 = e;
      @throw e;
    }
    @finally {
      if (in != nil) {
        if (__primaryException2 != nil) {
          @try {
            [in close];
          }
          @catch (JavaLangThrowable *e) {
            [__primaryException2 addSuppressedWithJavaLangThrowable:e];
          }
        }
        else {
          [in close];
        }
      }
    }
  }
  @catch (JavaLangRuntimeException *e) {
    @throw e;
  }
  @catch (JavaLangError *e) {
    @throw e;
  }
  @catch (JavaLangException *ioe) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ val$cs_ } count:1 type:JavaIoCloseable_class_()]);
  }
}

- (void)dealloc {
  RELEASE_(val$cs_);
  RELEASE_(val$startingGun_);
  RELEASE_(val$localLock_);
  RELEASE_(val$lockedID_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaNetSocket:withJavaUtilConcurrentCountDownLatch:withId:withIntArray:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$cs_", "LJavaNetSocket;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$startingGun_", "LJavaUtilConcurrentCountDownLatch;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$localLock_", "LNSObject;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$lockedID_", "[I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaNetSocket;LJavaUtilConcurrentCountDownLatch;LNSObject;[I", "LOrgApacheLuceneStoreLockVerifyServer;", "mainWithNSStringArray:" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockVerifyServer_1 = { "", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x8018, 2, 4, 1, -1, 2, -1, -1 };
  return &_OrgApacheLuceneStoreLockVerifyServer_1;
}

@end

void OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(OrgApacheLuceneStoreLockVerifyServer_1 *self, JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) {
  JreStrongAssign(&self->val$cs_, capture$0);
  JreStrongAssign(&self->val$startingGun_, capture$1);
  JreStrongAssign(&self->val$localLock_, capture$2);
  JreStrongAssign(&self->val$lockedID_, capture$3);
  JavaLangThread_init(self);
}

OrgApacheLuceneStoreLockVerifyServer_1 *new_OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockVerifyServer_1, initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_, capture$0, capture$1, capture$2, capture$3)
}

OrgApacheLuceneStoreLockVerifyServer_1 *create_OrgApacheLuceneStoreLockVerifyServer_1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockVerifyServer_1, initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_, capture$0, capture$1, capture$2, capture$3)
}
