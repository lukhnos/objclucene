//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/PositionSpan.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/highlight/PositionSpan.h"

@implementation OrgApacheLuceneSearchHighlightPositionSpan

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end {
  OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(self, start, end);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "PositionSpan", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "start_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightPositionSpan = { 2, "PositionSpan", "org.apache.lucene.search.highlight", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightPositionSpan;
}

@end

void OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(OrgApacheLuceneSearchHighlightPositionSpan *self, jint start, jint end) {
  NSObject_init(self);
  self->start_ = start;
  self->end_ = end;
}

OrgApacheLuceneSearchHighlightPositionSpan *new_OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(jint start, jint end) {
  OrgApacheLuceneSearchHighlightPositionSpan *self = [OrgApacheLuceneSearchHighlightPositionSpan alloc];
  OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(self, start, end);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightPositionSpan)
