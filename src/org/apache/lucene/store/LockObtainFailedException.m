//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockObtainFailedException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/store/LockObtainFailedException.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/LockObtainFailedException must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneStoreLockObtainFailedException

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockObtainFailedException = { "LockObtainFailedException", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreLockObtainFailedException;
}

@end

void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message) {
  JavaIoIOException_initWithNSString_(self, message);
}

OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_, message)
}

OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_, message)
}

void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message, JavaLangThrowable *cause) {
  JavaIoIOException_initWithNSString_withJavaLangThrowable_(self, message, cause);
}

OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_withJavaLangThrowable_, message, cause)
}

OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_withJavaLangThrowable_, message, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockObtainFailedException)
