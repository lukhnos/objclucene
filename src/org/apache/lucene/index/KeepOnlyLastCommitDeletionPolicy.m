//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/KeepOnlyLastCommitDeletionPolicy.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"
#include "org/apache/lucene/index/KeepOnlyLastCommitDeletionPolicy.h"

@implementation OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy

- (instancetype)init {
  OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy_init(self);
  return self;
}

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits {
  [self onCommitWithJavaUtilList:commits];
}

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits {
  jint size = [((id<JavaUtilList>) nil_chk(commits)) size];
  for (jint i = 0; i < size - 1; i++) {
    [((OrgApacheLuceneIndexIndexCommit *) nil_chk([commits getWithInt:i])) delete__];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "KeepOnlyLastCommitDeletionPolicy", NULL, 0x1, NULL, NULL },
    { "onInitWithJavaUtilList:", "onInit", "V", 0x1, NULL, NULL },
    { "onCommitWithJavaUtilList:", "onCommit", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy = { 2, "KeepOnlyLastCommitDeletionPolicy", "org.apache.lucene.index", NULL, 0x11, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy;
}

@end

void OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy_init(OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy *self) {
  OrgApacheLuceneIndexIndexDeletionPolicy_init(self);
}

OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy *new_OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy_init() {
  OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy *self = [OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy alloc];
  OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy)
