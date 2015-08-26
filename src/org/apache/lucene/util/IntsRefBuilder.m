//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntsRefBuilder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@interface OrgApacheLuceneUtilIntsRefBuilder () {
 @public
  OrgApacheLuceneUtilIntsRef *ref_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntsRefBuilder, ref_, OrgApacheLuceneUtilIntsRef *)

@implementation OrgApacheLuceneUtilIntsRefBuilder

- (instancetype)init {
  OrgApacheLuceneUtilIntsRefBuilder_init(self);
  return self;
}

- (IOSIntArray *)ints {
  return ((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->ints_;
}

- (jint)length {
  return ((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->length_;
}

- (void)setLengthWithInt:(jint)length {
  ((OrgApacheLuceneUtilIntsRef *) nil_chk(self->ref_))->length_ = length;
}

- (void)clear {
  [self setLengthWithInt:0];
}

- (jint)intAtWithInt:(jint)offset {
  return IOSIntArray_Get(nil_chk(((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->ints_), offset);
}

- (void)setIntAtWithInt:(jint)offset
                withInt:(jint)b {
  *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->ints_), offset) = b;
}

- (void)appendWithInt:(jint)i {
  [self growWithInt:((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->length_ + 1];
  *IOSIntArray_GetRef(nil_chk(ref_->ints_), ref_->length_++) = i;
}

- (void)growWithInt:(jint)newLength {
  JreStrongAssign(&((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->ints_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(ref_->ints_, newLength));
}

- (void)copyIntsWithIntArray:(IOSIntArray *)otherInts
                     withInt:(jint)otherOffset
                     withInt:(jint)otherLength {
  [self growWithInt:otherLength];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(otherInts, otherOffset, ((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->ints_, 0, otherLength);
  ref_->length_ = otherLength;
}

- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)ints {
  [self copyIntsWithIntArray:((OrgApacheLuceneUtilIntsRef *) nil_chk(ints))->ints_ withInt:ints->offset_ withInt:ints->length_];
}

- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  [self growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_];
  ((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->length_ = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(bytes, ref_->ints_);
}

- (OrgApacheLuceneUtilIntsRef *)get {
  JreAssert((((OrgApacheLuceneUtilIntsRef *) nil_chk(ref_))->offset_ == 0), (@"Modifying the offset of the returned ref is illegal"));
  return ref_;
}

- (OrgApacheLuceneUtilIntsRef *)toIntsRef {
  return OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_([self get]);
}

- (jboolean)isEqual:(id)obj {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (NSUInteger)hash {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (void)dealloc {
  RELEASE_(ref_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IntsRefBuilder", NULL, 0x1, NULL, NULL },
    { "ints", NULL, "[I", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "setLengthWithInt:", "setLength", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "intAtWithInt:", "intAt", "I", 0x1, NULL, NULL },
    { "setIntAtWithInt:withInt:", "setIntAt", "V", 0x1, NULL, NULL },
    { "appendWithInt:", "append", "V", 0x1, NULL, NULL },
    { "growWithInt:", "grow", "V", 0x1, NULL, NULL },
    { "copyIntsWithIntArray:withInt:withInt:", "copyInts", "V", 0x1, NULL, NULL },
    { "copyIntsWithOrgApacheLuceneUtilIntsRef:", "copyInts", "V", 0x1, NULL, NULL },
    { "copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:", "copyUTF8Bytes", "V", 0x1, NULL, NULL },
    { "get", NULL, "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "toIntsRef", NULL, "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", NULL, 0x12, "Lorg.apache.lucene.util.IntsRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntsRefBuilder = { 2, "IntsRefBuilder", "org.apache.lucene.util", NULL, 0x1, 16, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIntsRefBuilder;
}

@end

void OrgApacheLuceneUtilIntsRefBuilder_init(OrgApacheLuceneUtilIntsRefBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ref_, new_OrgApacheLuceneUtilIntsRef_init());
}

OrgApacheLuceneUtilIntsRefBuilder *new_OrgApacheLuceneUtilIntsRefBuilder_init() {
  OrgApacheLuceneUtilIntsRefBuilder *self = [OrgApacheLuceneUtilIntsRefBuilder alloc];
  OrgApacheLuceneUtilIntsRefBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntsRefBuilder)
