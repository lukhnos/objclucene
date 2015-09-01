//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LogMergePolicy.java
//

#include "J2ObjC_source.h"
#include "java/lang/Comparable.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/LogMergePolicy.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel : NSObject < JavaLangComparable >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)

__attribute__((unused)) static void OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *self);

__attribute__((unused)) static OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *new_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)

@implementation OrgApacheLuceneIndexLogMergePolicy

- (instancetype)init {
  OrgApacheLuceneIndexLogMergePolicy_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LEVEL_LOG_SPAN", "LEVEL_LOG_SPAN", 0x19, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneIndexLogMergePolicy_LEVEL_LOG_SPAN },
    { "DEFAULT_MERGE_FACTOR", "DEFAULT_MERGE_FACTOR", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MERGE_FACTOR },
    { "DEFAULT_MAX_MERGE_DOCS", "DEFAULT_MAX_MERGE_DOCS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MAX_MERGE_DOCS },
    { "DEFAULT_NO_CFS_RATIO", "DEFAULT_NO_CFS_RATIO", 0x19, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_NO_CFS_RATIO },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.LogMergePolicy$SegmentInfoAndLevel;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLogMergePolicy = { 2, "LogMergePolicy", "org.apache.lucene.index", NULL, 0x401, 1, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexLogMergePolicy;
}

@end

void OrgApacheLuceneIndexLogMergePolicy_init(OrgApacheLuceneIndexLogMergePolicy *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLogMergePolicy)

@implementation OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel

- (instancetype)init {
  OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel = { 2, "SegmentInfoAndLevel", "org.apache.lucene.index", "LogMergePolicy", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/index/LogMergePolicy$SegmentInfoAndLevel;>;" };
  return &_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel;
}

@end

void OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *new_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init() {
  OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *self = [OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel alloc];
  OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)
