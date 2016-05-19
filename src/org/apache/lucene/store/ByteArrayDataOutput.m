//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ByteArrayDataOutput.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/ByteArrayDataOutput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneStoreByteArrayDataOutput () {
 @public
  IOSByteArray *bytes_;
  jint pos_;
  jint limit_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteArrayDataOutput, bytes_, IOSByteArray *)

@implementation OrgApacheLuceneStoreByteArrayDataOutput

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(self, bytes);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)len {
  OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(self, bytes, offset, len);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreByteArrayDataOutput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)resetWithByteArray:(IOSByteArray *)bytes {
  [self resetWithByteArray:bytes withInt:0 withInt:((IOSByteArray *) nil_chk(bytes))->size_];
}

- (void)resetWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)offset
                   withInt:(jint)len {
  JreStrongAssign(&self->bytes_, bytes);
  pos_ = offset;
  limit_ = offset + len;
}

- (jint)getPosition {
  return pos_;
}

- (void)writeByteWithByte:(jbyte)b {
  JreAssert((pos_ < limit_), (@"org/apache/lucene/store/ByteArrayDataOutput.java:62 condition failed: assert pos < limit;"));
  *IOSByteArray_GetRef(nil_chk(bytes_), pos_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  JreAssert((pos_ + length <= limit_), (@"org/apache/lucene/store/ByteArrayDataOutput.java:68 condition failed: assert pos + length <= limit;"));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, bytes_, pos_, length);
  pos_ += length;
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "ByteArrayDataOutput", NULL, 0x1, NULL, NULL },
    { "initWithByteArray:withInt:withInt:", "ByteArrayDataOutput", NULL, 0x1, NULL, NULL },
    { "init", "ByteArrayDataOutput", NULL, 0x1, NULL, NULL },
    { "resetWithByteArray:", "reset", "V", 0x1, NULL, NULL },
    { "resetWithByteArray:withInt:withInt:", "reset", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "I", 0x1, NULL, NULL },
    { "writeByteWithByte:", "writeByte", "V", 0x1, NULL, NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "limit_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreByteArrayDataOutput = { 2, "ByteArrayDataOutput", "org.apache.lucene.store", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreByteArrayDataOutput;
}

@end

void OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(OrgApacheLuceneStoreByteArrayDataOutput *self, IOSByteArray *bytes) {
  OrgApacheLuceneStoreDataOutput_init(self);
  [self resetWithByteArray:bytes];
}

OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, initWithByteArray_, bytes)
}

OrgApacheLuceneStoreByteArrayDataOutput *create_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, initWithByteArray_, bytes)
}

void OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(OrgApacheLuceneStoreByteArrayDataOutput *self, IOSByteArray *bytes, jint offset, jint len) {
  OrgApacheLuceneStoreDataOutput_init(self);
  [self resetWithByteArray:bytes withInt:offset withInt:len];
}

OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, initWithByteArray_withInt_withInt_, bytes, offset, len)
}

OrgApacheLuceneStoreByteArrayDataOutput *create_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, initWithByteArray_withInt_withInt_, bytes, offset, len)
}

void OrgApacheLuceneStoreByteArrayDataOutput_init(OrgApacheLuceneStoreByteArrayDataOutput *self) {
  OrgApacheLuceneStoreDataOutput_init(self);
  [self resetWithByteArray:JreLoadStatic(OrgApacheLuceneUtilBytesRef, EMPTY_BYTES)];
}

OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, init)
}

OrgApacheLuceneStoreByteArrayDataOutput *create_OrgApacheLuceneStoreByteArrayDataOutput_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreByteArrayDataOutput, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreByteArrayDataOutput)
