//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/OfflineSliceReader.java
//

#include "J2ObjC_source.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/rangetree/OfflineSliceReader.h"
#include "org/apache/lucene/rangetree/RangeTreeWriter.h"
#include "org/apache/lucene/store/InputStreamDataInput.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/rangetree/OfflineSliceReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneRangetreeOfflineSliceReader () {
 @public
  jlong value_;
  jlong ord_;
  jint docID_;
}

@end

@implementation OrgApacheLuceneRangetreeOfflineSliceReader

- (instancetype)initPackagePrivateWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempFile
                                                          withLong:(jlong)start
                                                          withLong:(jlong)count {
  OrgApacheLuceneRangetreeOfflineSliceReader_initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_(self, tempFile, start, count);
  return self;
}

- (jboolean)next {
  if (countLeft_ == 0) {
    return false;
  }
  countLeft_--;
  value_ = [((OrgApacheLuceneStoreInputStreamDataInput *) nil_chk(in_)) readLong];
  ord_ = [in_ readLong];
  docID_ = [in_ readInt];
  return true;
}

- (jlong)value {
  return value_;
}

- (jlong)ord {
  return ord_;
}

- (jint)docID {
  return docID_;
}

- (void)close {
  [((OrgApacheLuceneStoreInputStreamDataInput *) nil_chk(in_)) close];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgLukhnosPortmobileFilePath:withLong:withLong:);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(value);
  methods[3].selector = @selector(ord);
  methods[4].selector = @selector(docID);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneStoreInputStreamDataInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "countLeft_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "value_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ord_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docID_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgLukhnosPortmobileFilePath;JJ", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeOfflineSliceReader = { "OfflineSliceReader", "org.apache.lucene.rangetree", ptrTable, methods, fields, 7, 0x10, 6, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneRangetreeOfflineSliceReader;
}

@end

void OrgApacheLuceneRangetreeOfflineSliceReader_initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgApacheLuceneRangetreeOfflineSliceReader *self, OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  NSObject_init(self);
  JavaIoInputStream *fis = OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(tempFile);
  jlong seekFP = start * OrgApacheLuceneRangetreeRangeTreeWriter_BYTES_PER_DOC;
  jlong skipped = 0;
  while (skipped < seekFP) {
    jlong inc = [((JavaIoInputStream *) nil_chk(fis)) skipWithLong:seekFP - skipped];
    skipped += inc;
    if (inc == 0) {
      @throw create_JavaLangRuntimeException_initWithNSString_(@"skip returned 0");
    }
  }
  JreStrongAssignAndConsume(&self->in_, new_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(create_JavaIoBufferedInputStream_initWithJavaIoInputStream_(fis)));
  self->countLeft_ = count;
}

OrgApacheLuceneRangetreeOfflineSliceReader *new_OrgApacheLuceneRangetreeOfflineSliceReader_initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeOfflineSliceReader, initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

OrgApacheLuceneRangetreeOfflineSliceReader *create_OrgApacheLuceneRangetreeOfflineSliceReader_initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeOfflineSliceReader, initPackagePrivateWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeOfflineSliceReader)
