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

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/ByteArrayDataOutput must not be compiled with ARC (-fobjc-arc)"
#endif

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
  JreAssert(pos_ < limit_, @"org/apache/lucene/store/ByteArrayDataOutput.java:62 condition failed: assert pos < limit;");
  *IOSByteArray_GetRef(nil_chk(bytes_), pos_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  JreAssert(pos_ + length <= limit_, @"org/apache/lucene/store/ByteArrayDataOutput.java:68 condition failed: assert pos + length <= limit;");
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, bytes_, pos_, length);
  pos_ += length;
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:);
  methods[1].selector = @selector(initWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(resetWithByteArray:);
  methods[4].selector = @selector(resetWithByteArray:withInt:withInt:);
  methods[5].selector = @selector(getPosition);
  methods[6].selector = @selector(writeByteWithByte:);
  methods[7].selector = @selector(writeBytesWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "limit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[B", "[BII", "reset", "writeByte", "B", "writeBytes" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreByteArrayDataOutput = { "ByteArrayDataOutput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
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
