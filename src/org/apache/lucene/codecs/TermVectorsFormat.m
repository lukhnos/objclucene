//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/TermVectorsFormat.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/TermVectorsFormat.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/codecs/TermVectorsWriter.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/TermVectorsFormat must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneCodecsTermVectorsFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsTermVectorsFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneCodecsTermVectorsReader *)vectorsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsTermVectorsWriter *)vectorsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsTermVectorsReader;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsTermVectorsWriter;", 0x401, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(vectorsReaderWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneIndexFieldInfos:withOrgApacheLuceneStoreIOContext:);
  methods[2].selector = @selector(vectorsWriterWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "vectorsReader", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;LOrgApacheLuceneIndexFieldInfos;LOrgApacheLuceneStoreIOContext;", "LJavaIoIOException;", "vectorsWriter", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;LOrgApacheLuceneStoreIOContext;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsTermVectorsFormat = { "TermVectorsFormat", "org.apache.lucene.codecs", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsTermVectorsFormat;
}

@end

void OrgApacheLuceneCodecsTermVectorsFormat_init(OrgApacheLuceneCodecsTermVectorsFormat *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsTermVectorsFormat)
