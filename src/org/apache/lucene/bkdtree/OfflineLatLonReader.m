//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/OfflineLatLonReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/bkdtree/BKDTreeWriter.h"
#include "org/apache/lucene/bkdtree/OfflineLatLonReader.h"
#include "org/apache/lucene/store/InputStreamDataInput.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneBkdtreeOfflineLatLonReader () {
 @public
  jint latEnc_;
  jint lonEnc_;
  jlong ord_;
  jint docID_;
}

@end

@implementation OrgApacheLuceneBkdtreeOfflineLatLonReader

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempFile
                                            withLong:(jlong)start
                                            withLong:(jlong)count {
  OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(self, tempFile, start, count);
  return self;
}

- (jboolean)next {
  if (countLeft_ == 0) {
    return false;
  }
  countLeft_--;
  latEnc_ = [((OrgApacheLuceneStoreInputStreamDataInput *) nil_chk(in_)) readInt];
  lonEnc_ = [in_ readInt];
  ord_ = [in_ readLong];
  docID_ = [in_ readInt];
  return true;
}

- (jint)latEnc {
  return latEnc_;
}

- (jint)lonEnc {
  return lonEnc_;
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgLukhnosPortmobileFilePath:withLong:withLong:", "OfflineLatLonReader", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "next", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "latEnc", NULL, "I", 0x1, NULL, NULL },
    { "lonEnc", NULL, "I", 0x1, NULL, NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.InputStreamDataInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "countLeft_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "latEnc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lonEnc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ord_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeOfflineLatLonReader = { 2, "OfflineLatLonReader", "org.apache.lucene.bkdtree", NULL, 0x10, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeOfflineLatLonReader;
}

@end

void OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgApacheLuceneBkdtreeOfflineLatLonReader *self, OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  NSObject_init(self);
  JavaIoInputStream *fis = OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(tempFile);
  jlong seekFP = start * OrgApacheLuceneBkdtreeBKDTreeWriter_BYTES_PER_DOC;
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

OrgApacheLuceneBkdtreeOfflineLatLonReader *new_OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneBkdtreeOfflineLatLonReader, initWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

OrgApacheLuceneBkdtreeOfflineLatLonReader *create_OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneBkdtreeOfflineLatLonReader, initWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeOfflineLatLonReader)
