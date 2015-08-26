//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/OutputStreamDataOutput.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/OutputStreamDataOutput.h"

@interface OrgApacheLuceneStoreOutputStreamDataOutput () {
 @public
  JavaIoOutputStream *os_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreOutputStreamDataOutput, os_, JavaIoOutputStream *)

@implementation OrgApacheLuceneStoreOutputStreamDataOutput

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os {
  OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(self, os);
  return self;
}

- (void)writeByteWithByte:(jbyte)b {
  [((JavaIoOutputStream *) nil_chk(os_)) writeWithInt:b];
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  [((JavaIoOutputStream *) nil_chk(os_)) writeWithByteArray:b withInt:offset withInt:length];
}

- (void)close {
  [((JavaIoOutputStream *) nil_chk(os_)) close];
}

- (void)dealloc {
  RELEASE_(os_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoOutputStream:", "OutputStreamDataOutput", NULL, 0x1, NULL, NULL },
    { "writeByteWithByte:", "writeByte", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "os_", NULL, 0x12, "Ljava.io.OutputStream;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreOutputStreamDataOutput = { 2, "OutputStreamDataOutput", "org.apache.lucene.store", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreOutputStreamDataOutput;
}

@end

void OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(OrgApacheLuceneStoreOutputStreamDataOutput *self, JavaIoOutputStream *os) {
  OrgApacheLuceneStoreDataOutput_init(self);
  JreStrongAssign(&self->os_, os);
}

OrgApacheLuceneStoreOutputStreamDataOutput *new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(JavaIoOutputStream *os) {
  OrgApacheLuceneStoreOutputStreamDataOutput *self = [OrgApacheLuceneStoreOutputStreamDataOutput alloc];
  OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(self, os);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreOutputStreamDataOutput)
