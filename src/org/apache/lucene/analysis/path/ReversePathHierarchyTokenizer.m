//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/path/ReversePathHierarchyTokenizer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/path/ReversePathHierarchyTokenizer.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer

- (instancetype)init {
  OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_DELIMITER", "DEFAULT_DELIMITER", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_DEFAULT_DELIMITER },
    { "DEFAULT_SKIP", "DEFAULT_SKIP", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_DEFAULT_SKIP },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer = { 2, "ReversePathHierarchyTokenizer", "org.apache.lucene.analysis.path", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer;
}

@end

void OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_init(OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_init() {
  OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer)
