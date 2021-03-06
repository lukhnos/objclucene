//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoMergeScheduler.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/MergeScheduler.h"
#include "org/apache/lucene/index/MergeTrigger.h"
#include "org/apache/lucene/index/NoMergeScheduler.h"

@interface OrgApacheLuceneIndexNoMergeScheduler ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexNoMergeScheduler_init(OrgApacheLuceneIndexNoMergeScheduler *self);

__attribute__((unused)) static OrgApacheLuceneIndexNoMergeScheduler *new_OrgApacheLuceneIndexNoMergeScheduler_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexNoMergeScheduler *create_OrgApacheLuceneIndexNoMergeScheduler_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexNoMergeScheduler)

OrgApacheLuceneIndexMergeScheduler *OrgApacheLuceneIndexNoMergeScheduler_INSTANCE;

@implementation OrgApacheLuceneIndexNoMergeScheduler

+ (OrgApacheLuceneIndexMergeScheduler *)INSTANCE {
  return OrgApacheLuceneIndexNoMergeScheduler_INSTANCE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexNoMergeScheduler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)close {
}

- (void)mergeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
            withOrgApacheLuceneIndexMergeTrigger:(OrgApacheLuceneIndexMergeTrigger *)trigger
                                     withBoolean:(jboolean)newMergesFound {
}

- (OrgApacheLuceneIndexMergeScheduler *)clone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexNoMergeScheduler class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexNoMergeScheduler_INSTANCE, new_OrgApacheLuceneIndexNoMergeScheduler_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexNoMergeScheduler)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NoMergeScheduler", NULL, 0x2, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "mergeWithOrgApacheLuceneIndexIndexWriter:withOrgApacheLuceneIndexMergeTrigger:withBoolean:", "merge", "V", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.index.MergeScheduler;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "INSTANCE", 0x19, "Lorg.apache.lucene.index.MergeScheduler;", &OrgApacheLuceneIndexNoMergeScheduler_INSTANCE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNoMergeScheduler = { 2, "NoMergeScheduler", "org.apache.lucene.index", NULL, 0x11, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexNoMergeScheduler;
}

@end

void OrgApacheLuceneIndexNoMergeScheduler_init(OrgApacheLuceneIndexNoMergeScheduler *self) {
  OrgApacheLuceneIndexMergeScheduler_init(self);
}

OrgApacheLuceneIndexNoMergeScheduler *new_OrgApacheLuceneIndexNoMergeScheduler_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNoMergeScheduler, init)
}

OrgApacheLuceneIndexNoMergeScheduler *create_OrgApacheLuceneIndexNoMergeScheduler_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNoMergeScheduler, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNoMergeScheduler)
