//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexDeletionPolicy.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/IndexDeletionPolicy must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneIndexIndexDeletionPolicy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexIndexDeletionPolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x401, 4, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onInitWithJavaUtilList:);
  methods[2].selector = @selector(onCommitWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onInit", "LJavaUtilList;", "LJavaIoIOException;", "(Ljava/util/List<+Lorg/apache/lucene/index/IndexCommit;>;)V", "onCommit" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexDeletionPolicy = { "IndexDeletionPolicy", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIndexDeletionPolicy;
}

@end

void OrgApacheLuceneIndexIndexDeletionPolicy_init(OrgApacheLuceneIndexIndexDeletionPolicy *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexDeletionPolicy)
