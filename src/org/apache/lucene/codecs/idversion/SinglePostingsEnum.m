//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/SinglePostingsEnum.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/idversion/IDVersionPostingsFormat.h"
#include "org/apache/lucene/codecs/idversion/SinglePostingsEnum.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneCodecsIdversionSinglePostingsEnum () {
 @public
  jint doc_;
  jint pos_;
  jint singleDocID_;
  jlong version__;
  OrgApacheLuceneUtilBytesRef *payload_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionSinglePostingsEnum, payload_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneCodecsIdversionSinglePostingsEnum

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsIdversionSinglePostingsEnum_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)resetWithInt:(jint)singleDocID
            withLong:(jlong)version_ {
  doc_ = -1;
  self->singleDocID_ = singleDocID;
  self->version__ = version_;
}

- (jint)nextDoc {
  if (doc_ == -1) {
    doc_ = singleDocID_;
  }
  else {
    doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  pos_ = -1;
  return doc_;
}

- (jint)docID {
  return doc_;
}

- (jint)advanceWithInt:(jint)target {
  if (doc_ == -1 && target <= singleDocID_) {
    doc_ = singleDocID_;
    pos_ = -1;
  }
  else {
    doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  return doc_;
}

- (jlong)cost {
  return 1;
}

- (jint)freq {
  return 1;
}

- (jint)nextPosition {
  JreAssert((pos_ == -1), (@"org/apache/lucene/codecs/idversion/SinglePostingsEnum.java:82 condition failed: assert pos == -1;"));
  pos_ = 0;
  OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_longToBytesWithLong_withOrgApacheLuceneUtilBytesRef_(version__, payload_);
  return pos_;
}

- (OrgApacheLuceneUtilBytesRef *)getPayload {
  return payload_;
}

- (jint)startOffset {
  return -1;
}

- (jint)endOffset {
  return -1;
}

- (void)dealloc {
  RELEASE_(payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SinglePostingsEnum", NULL, 0x1, NULL, NULL },
    { "resetWithInt:withLong:", "reset", "V", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "advanceWithInt:", "advance", "I", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, NULL, NULL },
    { "nextPosition", NULL, "I", 0x1, NULL, NULL },
    { "getPayload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "startOffset", NULL, "I", 0x1, NULL, NULL },
    { "endOffset", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "doc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "singleDocID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "version__", "version", 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "payload_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsIdversionSinglePostingsEnum = { 2, "SinglePostingsEnum", "org.apache.lucene.codecs.idversion", NULL, 0x0, 11, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsIdversionSinglePostingsEnum;
}

@end

void OrgApacheLuceneCodecsIdversionSinglePostingsEnum_init(OrgApacheLuceneCodecsIdversionSinglePostingsEnum *self) {
  OrgApacheLuceneIndexPostingsEnum_init(self);
  JreStrongAssignAndConsume(&self->payload_, new_OrgApacheLuceneUtilBytesRef_initWithInt_(8));
  self->payload_->length_ = 8;
}

OrgApacheLuceneCodecsIdversionSinglePostingsEnum *new_OrgApacheLuceneCodecsIdversionSinglePostingsEnum_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsIdversionSinglePostingsEnum, init)
}

OrgApacheLuceneCodecsIdversionSinglePostingsEnum *create_OrgApacheLuceneCodecsIdversionSinglePostingsEnum_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsIdversionSinglePostingsEnum, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsIdversionSinglePostingsEnum)
