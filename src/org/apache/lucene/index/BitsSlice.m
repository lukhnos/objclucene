//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BitsSlice.java
//

#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/index/BitsSlice.h"
#include "org/apache/lucene/index/ReaderSlice.h"
#include "org/apache/lucene/util/Bits.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/BitsSlice must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexBitsSlice () {
 @public
  id<OrgApacheLuceneUtilBits> parent_;
  jint start_;
  jint length_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBitsSlice, parent_, id<OrgApacheLuceneUtilBits>)

@implementation OrgApacheLuceneIndexBitsSlice

- (instancetype)initPackagePrivateWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)parent
                          withOrgApacheLuceneIndexReaderSlice:(OrgApacheLuceneIndexReaderSlice *)slice {
  OrgApacheLuceneIndexBitsSlice_initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_(self, parent, slice);
  return self;
}

- (jboolean)getWithInt:(jint)doc {
  if (doc >= length_) {
    @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$I", @"doc ", doc, @" is out of bounds 0 .. ", (length_ - 1)));
  }
  JreAssert(doc < length_, JreStrcat("$I$I", @"doc=", doc, @" length=", length_));
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(parent_)) getWithInt:doc + start_];
}

- (jint)length {
  return length_;
}

- (void)dealloc {
  RELEASE_(parent_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneUtilBits:withOrgApacheLuceneIndexReaderSlice:);
  methods[1].selector = @selector(getWithInt:);
  methods[2].selector = @selector(length);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "parent_", "LOrgApacheLuceneUtilBits;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "start_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilBits;LOrgApacheLuceneIndexReaderSlice;", "get", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBitsSlice = { "BitsSlice", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 3, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexBitsSlice;
}

@end

void OrgApacheLuceneIndexBitsSlice_initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_(OrgApacheLuceneIndexBitsSlice *self, id<OrgApacheLuceneUtilBits> parent, OrgApacheLuceneIndexReaderSlice *slice) {
  NSObject_init(self);
  JreStrongAssign(&self->parent_, parent);
  self->start_ = ((OrgApacheLuceneIndexReaderSlice *) nil_chk(slice))->start_;
  self->length_ = slice->length_;
  JreAssert(self->length_ >= 0, JreStrcat("$I", @"length=", self->length_));
}

OrgApacheLuceneIndexBitsSlice *new_OrgApacheLuceneIndexBitsSlice_initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_(id<OrgApacheLuceneUtilBits> parent, OrgApacheLuceneIndexReaderSlice *slice) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexBitsSlice, initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_, parent, slice)
}

OrgApacheLuceneIndexBitsSlice *create_OrgApacheLuceneIndexBitsSlice_initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_(id<OrgApacheLuceneUtilBits> parent, OrgApacheLuceneIndexReaderSlice *slice) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexBitsSlice, initPackagePrivateWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexReaderSlice_, parent, slice)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBitsSlice)
