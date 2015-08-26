//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/OfflineLatLonWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedOutputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/bkdtree/BKDTreeWriter.h"
#include "org/apache/lucene/bkdtree/LatLonReader.h"
#include "org/apache/lucene/bkdtree/OfflineLatLonReader.h"
#include "org/apache/lucene/bkdtree/OfflineLatLonWriter.h"
#include "org/apache/lucene/store/ByteArrayDataOutput.h"
#include "org/apache/lucene/store/OutputStreamDataOutput.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneBkdtreeOfflineLatLonWriter () {
 @public
  jlong countWritten_;
}

@end

@implementation OrgApacheLuceneBkdtreeOfflineLatLonWriter

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempDir
                                            withLong:(jlong)count {
  OrgApacheLuceneBkdtreeOfflineLatLonWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(self, tempDir, count);
  return self;
}

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID {
  [((OrgApacheLuceneStoreOutputStreamDataOutput *) nil_chk(out_)) writeIntWithInt:latEnc];
  [out_ writeIntWithInt:lonEnc];
  [out_ writeLongWithLong:ord];
  [out_ writeIntWithInt:docID];
  countWritten_++;
}

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start {
  return [new_OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(tempFile_, start, count_ - start) autorelease];
}

- (void)close {
  [((OrgApacheLuceneStoreOutputStreamDataOutput *) nil_chk(out_)) close];
  if (count_ != countWritten_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$J$J", @"wrote ", countWritten_, @" values, but expected ", count_)) autorelease];
  }
}

- (void)destroy {
  OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ tempFile_ } count:1 type:OrgLukhnosPortmobileFilePath_class_()]);
}

- (NSString *)description {
  return JreStrcat("$J$@C", @"OfflineLatLonWriter(count=", count_, @" tempFile=", tempFile_, ')');
}

- (void)dealloc {
  RELEASE_(tempFile_);
  RELEASE_(scratchBytes_);
  RELEASE_(scratchBytesOutput_);
  RELEASE_(out_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgLukhnosPortmobileFilePath:withLong:", "OfflineLatLonWriter", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "appendWithInt:withInt:withLong:withInt:", "append", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getReaderWithLong:", "getReader", "Lorg.apache.lucene.bkdtree.LatLonReader;", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "destroy", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tempFile_", NULL, 0x10, "Lorg.lukhnos.portmobile.file.Path;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratchBytes_", NULL, 0x10, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "scratchBytesOutput_", NULL, 0x10, "Lorg.apache.lucene.store.ByteArrayDataOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "out_", NULL, 0x10, "Lorg.apache.lucene.store.OutputStreamDataOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "countWritten_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeOfflineLatLonWriter = { 2, "OfflineLatLonWriter", "org.apache.lucene.bkdtree", NULL, 0x10, 6, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeOfflineLatLonWriter;
}

@end

void OrgApacheLuceneBkdtreeOfflineLatLonWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(OrgApacheLuceneBkdtreeOfflineLatLonWriter *self, OrgLukhnosPortmobileFilePath *tempDir, jlong count) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratchBytes_, [IOSByteArray newArrayWithLength:OrgApacheLuceneBkdtreeBKDTreeWriter_BYTES_PER_DOC]);
  JreStrongAssignAndConsume(&self->scratchBytesOutput_, new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(self->scratchBytes_));
  JreStrongAssign(&self->tempFile_, OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(tempDir, JreStrcat("$JC", @"size", count, '.'), @""));
  JreStrongAssignAndConsume(&self->out_, new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_([new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(self->tempFile_)) autorelease]));
  self->count_ = count;
}

OrgApacheLuceneBkdtreeOfflineLatLonWriter *new_OrgApacheLuceneBkdtreeOfflineLatLonWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(OrgLukhnosPortmobileFilePath *tempDir, jlong count) {
  OrgApacheLuceneBkdtreeOfflineLatLonWriter *self = [OrgApacheLuceneBkdtreeOfflineLatLonWriter alloc];
  OrgApacheLuceneBkdtreeOfflineLatLonWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(self, tempDir, count);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeOfflineLatLonWriter)
