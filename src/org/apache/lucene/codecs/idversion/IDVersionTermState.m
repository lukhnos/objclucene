//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionTermState.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/idversion/IDVersionTermState.h"
#include "org/apache/lucene/index/TermState.h"

@implementation OrgApacheLuceneCodecsIdversionIDVersionTermState

- (OrgApacheLuceneCodecsIdversionIDVersionTermState *)clone {
  OrgApacheLuceneCodecsIdversionIDVersionTermState *other = create_OrgApacheLuceneCodecsIdversionIDVersionTermState_init();
  [other copyFromWithOrgApacheLuceneIndexTermState:self];
  return other;
}

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)_other {
  [super copyFromWithOrgApacheLuceneIndexTermState:_other];
  OrgApacheLuceneCodecsIdversionIDVersionTermState *other = (OrgApacheLuceneCodecsIdversionIDVersionTermState *) cast_chk(_other, [OrgApacheLuceneCodecsIdversionIDVersionTermState class]);
  idVersion_ = ((OrgApacheLuceneCodecsIdversionIDVersionTermState *) nil_chk(other))->idVersion_;
  docID_ = other->docID_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsIdversionIDVersionTermState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "clone", NULL, "Lorg.apache.lucene.codecs.idversion.IDVersionTermState;", 0x1, NULL, NULL },
    { "copyFromWithOrgApacheLuceneIndexTermState:", "copyFrom", "V", 0x1, NULL, NULL },
    { "init", "IDVersionTermState", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "idVersion_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docID_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsIdversionIDVersionTermState = { 2, "IDVersionTermState", "org.apache.lucene.codecs.idversion", NULL, 0x10, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsIdversionIDVersionTermState;
}

@end

void OrgApacheLuceneCodecsIdversionIDVersionTermState_init(OrgApacheLuceneCodecsIdversionIDVersionTermState *self) {
  OrgApacheLuceneCodecsBlockTermState_init(self);
}

OrgApacheLuceneCodecsIdversionIDVersionTermState *new_OrgApacheLuceneCodecsIdversionIDVersionTermState_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsIdversionIDVersionTermState, init)
}

OrgApacheLuceneCodecsIdversionIDVersionTermState *create_OrgApacheLuceneCodecsIdversionIDVersionTermState_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsIdversionIDVersionTermState, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsIdversionIDVersionTermState)
