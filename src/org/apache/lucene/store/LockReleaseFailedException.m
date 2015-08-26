//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockReleaseFailedException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/store/LockReleaseFailedException.h"

@implementation OrgApacheLuceneStoreLockReleaseFailedException

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "LockReleaseFailedException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withJavaLangThrowable:", "LockReleaseFailedException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockReleaseFailedException = { 2, "LockReleaseFailedException", "org.apache.lucene.store", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreLockReleaseFailedException;
}

@end

void OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(OrgApacheLuceneStoreLockReleaseFailedException *self, NSString *message) {
  JavaIoIOException_initWithNSString_(self, message);
}

OrgApacheLuceneStoreLockReleaseFailedException *new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(NSString *message) {
  OrgApacheLuceneStoreLockReleaseFailedException *self = [OrgApacheLuceneStoreLockReleaseFailedException alloc];
  OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(self, message);
  return self;
}

void OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneStoreLockReleaseFailedException *self, NSString *message, JavaLangThrowable *cause) {
  JavaIoIOException_initWithNSString_withJavaLangThrowable_(self, message, cause);
}

OrgApacheLuceneStoreLockReleaseFailedException *new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  OrgApacheLuceneStoreLockReleaseFailedException *self = [OrgApacheLuceneStoreLockReleaseFailedException alloc];
  OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockReleaseFailedException)
