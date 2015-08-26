//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoMergePolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/MergeTrigger.h"
#include "org/apache/lucene/index/NoMergePolicy.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentInfos.h"

@interface OrgApacheLuceneIndexNoMergePolicy ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexNoMergePolicy_init(OrgApacheLuceneIndexNoMergePolicy *self);

__attribute__((unused)) static OrgApacheLuceneIndexNoMergePolicy *new_OrgApacheLuceneIndexNoMergePolicy_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexNoMergePolicy)

OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_INSTANCE_;

@implementation OrgApacheLuceneIndexNoMergePolicy

- (instancetype)init {
  OrgApacheLuceneIndexNoMergePolicy_init(self);
  return self;
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexMergeTriggerEnum:(OrgApacheLuceneIndexMergeTriggerEnum *)mergeTrigger
                                                                      withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                       withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return nil;
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge
                                                                         withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return nil;
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return nil;
}

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                      withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)newSegment
                            withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(newSegment))->info_)) getUseCompoundFile];
}

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return JavaLangLong_MAX_VALUE;
}

- (NSString *)description {
  return @"NoMergePolicy";
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexNoMergePolicy class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexNoMergePolicy_INSTANCE_, new_OrgApacheLuceneIndexNoMergePolicy_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexNoMergePolicy)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NoMergePolicy", NULL, 0x2, NULL, NULL },
    { "findMergesWithOrgApacheLuceneIndexMergeTriggerEnum:withOrgApacheLuceneIndexSegmentInfos:withOrgApacheLuceneIndexIndexWriter:", "findMerges", "Lorg.apache.lucene.index.MergePolicy$MergeSpecification;", 0x1, NULL, NULL },
    { "findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:withInt:withJavaUtilMap:withOrgApacheLuceneIndexIndexWriter:", "findForcedMerges", "Lorg.apache.lucene.index.MergePolicy$MergeSpecification;", 0x1, NULL, NULL },
    { "findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:withOrgApacheLuceneIndexIndexWriter:", "findForcedDeletesMerges", "Lorg.apache.lucene.index.MergePolicy$MergeSpecification;", 0x1, NULL, NULL },
    { "useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:withOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneIndexIndexWriter:", "useCompoundFile", "Z", 0x1, NULL, NULL },
    { "sizeWithOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneIndexIndexWriter:", "size", "J", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lorg.apache.lucene.index.MergePolicy;", &OrgApacheLuceneIndexNoMergePolicy_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNoMergePolicy = { 2, "NoMergePolicy", "org.apache.lucene.index", NULL, 0x11, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexNoMergePolicy;
}

@end

void OrgApacheLuceneIndexNoMergePolicy_init(OrgApacheLuceneIndexNoMergePolicy *self) {
  OrgApacheLuceneIndexMergePolicy_init(self);
}

OrgApacheLuceneIndexNoMergePolicy *new_OrgApacheLuceneIndexNoMergePolicy_init() {
  OrgApacheLuceneIndexNoMergePolicy *self = [OrgApacheLuceneIndexNoMergePolicy alloc];
  OrgApacheLuceneIndexNoMergePolicy_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNoMergePolicy)
