//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/SegmentInfoFormat.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/SegmentInfoFormat.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"

@implementation OrgApacheLuceneCodecsSegmentInfoFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsSegmentInfoFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexSegmentInfo *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                              withNSString:(NSString *)segmentName
                                                             withByteArray:(IOSByteArray *)segmentID
                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)ioContext {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SegmentInfoFormat", NULL, 0x4, NULL, NULL },
    { "readWithOrgApacheLuceneStoreDirectory:withNSString:withByteArray:withOrgApacheLuceneStoreIOContext:", "read", "Lorg.apache.lucene.index.SegmentInfo;", 0x401, "Ljava.io.IOException;", NULL },
    { "writeWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:", "write", "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsSegmentInfoFormat = { 2, "SegmentInfoFormat", "org.apache.lucene.codecs", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsSegmentInfoFormat;
}

@end

void OrgApacheLuceneCodecsSegmentInfoFormat_init(OrgApacheLuceneCodecsSegmentInfoFormat *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsSegmentInfoFormat)
