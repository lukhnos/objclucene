//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesWriter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/index/DocValuesWriter.h"
#include "org/apache/lucene/index/SegmentWriteState.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/DocValuesWriter must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneIndexDocValuesWriter

- (instancetype)initPackagePrivate {
  OrgApacheLuceneIndexDocValuesWriter_initPackagePrivate(self);
  return self;
}

- (void)finishWithInt:(jint)numDoc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
            withOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)consumer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 2, 3, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(finishWithInt:);
  methods[2].selector = @selector(flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "finish", "I", "flush", "LOrgApacheLuceneIndexSegmentWriteState;LOrgApacheLuceneCodecsDocValuesConsumer;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocValuesWriter = { "DocValuesWriter", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x400, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocValuesWriter;
}

@end

void OrgApacheLuceneIndexDocValuesWriter_initPackagePrivate(OrgApacheLuceneIndexDocValuesWriter *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocValuesWriter)
