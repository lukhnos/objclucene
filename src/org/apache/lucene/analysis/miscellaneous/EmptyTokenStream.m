//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/EmptyTokenStream.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/EmptyTokenStream.h"

@implementation OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream

- (jboolean)incrementToken {
  return NO;
}

- (instancetype)init {
  OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "incrementToken", NULL, "Z", 0x11, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream = { 2, "EmptyTokenStream", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream_init(OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream *self) {
  OrgApacheLuceneAnalysisTokenStream_init(self);
}

OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream *new_OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream_init() {
  OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream *self = [OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream alloc];
  OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousEmptyTokenStream)
