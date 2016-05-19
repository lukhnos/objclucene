//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/OfflineSliceWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedOutputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/rangetree/OfflineSliceReader.h"
#include "org/apache/lucene/rangetree/OfflineSliceWriter.h"
#include "org/apache/lucene/rangetree/RangeTreeWriter.h"
#include "org/apache/lucene/rangetree/SliceReader.h"
#include "org/apache/lucene/store/ByteArrayDataOutput.h"
#include "org/apache/lucene/store/OutputStreamDataOutput.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneRangetreeOfflineSliceWriter () {
 @public
  jlong countWritten_;
}

@end

@implementation OrgApacheLuceneRangetreeOfflineSliceWriter

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempDir
                                            withLong:(jlong)count {
  OrgApacheLuceneRangetreeOfflineSliceWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(self, tempDir, count);
  return self;
}

- (void)appendWithLong:(jlong)value
              withLong:(jlong)ord
               withInt:(jint)docID {
  [((OrgApacheLuceneStoreOutputStreamDataOutput *) nil_chk(out_)) writeLongWithLong:value];
  [out_ writeLongWithLong:ord];
  [out_ writeIntWithInt:docID];
  countWritten_++;
}

- (id<OrgApacheLuceneRangetreeSliceReader>)getReaderWithLong:(jlong)start {
  return create_OrgApacheLuceneRangetreeOfflineSliceReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(tempFile_, start, count_ - start);
}

- (void)close {
  [((OrgApacheLuceneStoreOutputStreamDataOutput *) nil_chk(out_)) close];
  if (count_ != countWritten_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$J$J", @"wrote ", countWritten_, @" values, but expected ", count_));
  }
}

- (void)destroy {
  OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ tempFile_ } count:1 type:OrgLukhnosPortmobileFilePath_class_()]);
}

- (NSString *)description {
  return JreStrcat("$J$@C", @"OfflineSliceWriter(count=", count_, @" tempFile=", tempFile_, ')');
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
    { "initWithOrgLukhnosPortmobileFilePath:withLong:", "OfflineSliceWriter", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "appendWithLong:withLong:withInt:", "append", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getReaderWithLong:", "getReader", "Lorg.apache.lucene.rangetree.SliceReader;", 0x1, "Ljava.io.IOException;", NULL },
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
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeOfflineSliceWriter = { 2, "OfflineSliceWriter", "org.apache.lucene.rangetree", NULL, 0x10, 6, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeOfflineSliceWriter;
}

@end

void OrgApacheLuceneRangetreeOfflineSliceWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(OrgApacheLuceneRangetreeOfflineSliceWriter *self, OrgLukhnosPortmobileFilePath *tempDir, jlong count) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratchBytes_, [IOSByteArray newArrayWithLength:OrgApacheLuceneRangetreeRangeTreeWriter_BYTES_PER_DOC]);
  JreStrongAssignAndConsume(&self->scratchBytesOutput_, new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(self->scratchBytes_));
  JreStrongAssign(&self->tempFile_, OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(tempDir, JreStrcat("$JC", @"size", count, '.'), @""));
  JreStrongAssignAndConsume(&self->out_, new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(create_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(self->tempFile_))));
  self->count_ = count;
}

OrgApacheLuceneRangetreeOfflineSliceWriter *new_OrgApacheLuceneRangetreeOfflineSliceWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(OrgLukhnosPortmobileFilePath *tempDir, jlong count) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeOfflineSliceWriter, initWithOrgLukhnosPortmobileFilePath_withLong_, tempDir, count)
}

OrgApacheLuceneRangetreeOfflineSliceWriter *create_OrgApacheLuceneRangetreeOfflineSliceWriter_initWithOrgLukhnosPortmobileFilePath_withLong_(OrgLukhnosPortmobileFilePath *tempDir, jlong count) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeOfflineSliceWriter, initWithOrgLukhnosPortmobileFilePath_withLong_, tempDir, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeOfflineSliceWriter)
