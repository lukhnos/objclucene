//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/PrintStreamInfoStream.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/util/InfoStream.h"
#include "org/apache/lucene/util/PrintStreamInfoStream.h"
#include "org/lukhnos/portmobile/file/attribute/FileTime.h"

static JavaUtilConcurrentAtomicAtomicInteger *OrgApacheLuceneUtilPrintStreamInfoStream_MESSAGE_ID_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPrintStreamInfoStream, MESSAGE_ID_, JavaUtilConcurrentAtomicAtomicInteger *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPrintStreamInfoStream)

@implementation OrgApacheLuceneUtilPrintStreamInfoStream

- (instancetype)initWithJavaIoPrintStream:(JavaIoPrintStream *)stream {
  OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(self, stream);
  return self;
}

- (instancetype)initWithJavaIoPrintStream:(JavaIoPrintStream *)stream
                                  withInt:(jint)messageID {
  OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(self, stream, messageID);
  return self;
}

- (void)messageWithNSString:(NSString *)component
               withNSString:(NSString *)message {
  [((JavaIoPrintStream *) nil_chk(stream_)) printlnWithNSString:JreStrcat("$CI$$$$$$", component, ' ', messageID_, @" [", [self getTimestamp], @"; ", [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getName], @"]: ", message)];
}

- (jboolean)isEnabledWithNSString:(NSString *)component {
  return YES;
}

- (void)close {
  if (![self isSystemStream]) {
    [((JavaIoPrintStream *) nil_chk(stream_)) close];
  }
}

- (jboolean)isSystemStream {
  return stream_ == JreLoadStatic(JavaLangSystem, out_) || stream_ == JreLoadStatic(JavaLangSystem, err_);
}

- (NSString *)getTimestamp {
  return [((OrgLukhnosPortmobileFileAttributeFileTime *) nil_chk(OrgLukhnosPortmobileFileAttributeFileTime_fromMillisWithLong_(JavaLangSystem_currentTimeMillis()))) description];
}

- (void)dealloc {
  RELEASE_(stream_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPrintStreamInfoStream class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPrintStreamInfoStream_MESSAGE_ID_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPrintStreamInfoStream)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoPrintStream:", "PrintStreamInfoStream", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoPrintStream:withInt:", "PrintStreamInfoStream", NULL, 0x1, NULL, NULL },
    { "messageWithNSString:withNSString:", "message", "V", 0x1, NULL, NULL },
    { "isEnabledWithNSString:", "isEnabled", "Z", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isSystemStream", NULL, "Z", 0x1, NULL, NULL },
    { "getTimestamp", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_ID_", NULL, 0x1a, "Ljava.util.concurrent.atomic.AtomicInteger;", &OrgApacheLuceneUtilPrintStreamInfoStream_MESSAGE_ID_, NULL, .constantValue.asLong = 0 },
    { "messageID_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "stream_", NULL, 0x14, "Ljava.io.PrintStream;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPrintStreamInfoStream = { 2, "PrintStreamInfoStream", "org.apache.lucene.util", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPrintStreamInfoStream;
}

@end

void OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(OrgApacheLuceneUtilPrintStreamInfoStream *self, JavaIoPrintStream *stream) {
  OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(self, stream, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(OrgApacheLuceneUtilPrintStreamInfoStream_MESSAGE_ID_)) getAndIncrement]);
}

OrgApacheLuceneUtilPrintStreamInfoStream *new_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(JavaIoPrintStream *stream) {
  OrgApacheLuceneUtilPrintStreamInfoStream *self = [OrgApacheLuceneUtilPrintStreamInfoStream alloc];
  OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(self, stream);
  return self;
}

void OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(OrgApacheLuceneUtilPrintStreamInfoStream *self, JavaIoPrintStream *stream, jint messageID) {
  OrgApacheLuceneUtilInfoStream_init(self);
  JreStrongAssign(&self->stream_, stream);
  self->messageID_ = messageID;
}

OrgApacheLuceneUtilPrintStreamInfoStream *new_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(JavaIoPrintStream *stream, jint messageID) {
  OrgApacheLuceneUtilPrintStreamInfoStream *self = [OrgApacheLuceneUtilPrintStreamInfoStream alloc];
  OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(self, stream, messageID);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPrintStreamInfoStream)
