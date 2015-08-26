//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueStr.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueStr.h"

@implementation OrgApacheLuceneUtilMutableMutableValueStr

- (id)toObject {
  JreAssert((exists_ || 0 == [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) length]), (@"org/apache/lucene/util/mutable/MutableValueStr.java:33 condition failed: assert exists || 0 == value.length();"));
  return exists_ ? [((OrgApacheLuceneUtilBytesRef *) nil_chk([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) get])) utf8ToString] : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueStr *s = (OrgApacheLuceneUtilMutableMutableValueStr *) check_class_cast(source, [OrgApacheLuceneUtilMutableMutableValueStr class]);
  exists_ = ((OrgApacheLuceneUtilMutableMutableValueStr *) nil_chk(s))->exists_;
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:s->value_];
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueStr *v = [new_OrgApacheLuceneUtilMutableMutableValueStr_init() autorelease];
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(v->value_)) copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:value_];
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert((exists_ || 0 == [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) length]), (@"org/apache/lucene/util/mutable/MutableValueStr.java:54 condition failed: assert exists || 0 == value.length();"));
  OrgApacheLuceneUtilMutableMutableValueStr *b = (OrgApacheLuceneUtilMutableMutableValueStr *) check_class_cast(other, [OrgApacheLuceneUtilMutableMutableValueStr class]);
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) get])) isEqual:[((OrgApacheLuceneUtilMutableMutableValueStr *) nil_chk(b))->value_ get]] && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert((exists_ || 0 == [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) length]), (@"org/apache/lucene/util/mutable/MutableValueStr.java:61 condition failed: assert exists || 0 == value.length();"));
  OrgApacheLuceneUtilMutableMutableValueStr *b = (OrgApacheLuceneUtilMutableMutableValueStr *) check_class_cast(other, [OrgApacheLuceneUtilMutableMutableValueStr class]);
  jint c = [((OrgApacheLuceneUtilBytesRef *) nil_chk([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) get])) compareToWithId:[((OrgApacheLuceneUtilMutableMutableValueStr *) nil_chk(b))->value_ get]];
  if (c != 0) return c;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert((exists_ || 0 == [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) length]), (@"org/apache/lucene/util/mutable/MutableValueStr.java:72 condition failed: assert exists || 0 == value.length();"));
  return ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) get])) hash]);
}

- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueStr_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toObject", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "copy__WithOrgApacheLuceneUtilMutableMutableValue:", "copy", "V", 0x1, NULL, NULL },
    { "duplicate", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "equalsSameTypeWithId:", "equalsSameType", "Z", 0x1, NULL, NULL },
    { "compareSameTypeWithId:", "compareSameType", "I", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "value_", NULL, 0x1, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueStr = { 2, "MutableValueStr", "org.apache.lucene.util.mutable", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilMutableMutableValueStr;
}

@end

void OrgApacheLuceneUtilMutableMutableValueStr_init(OrgApacheLuceneUtilMutableMutableValueStr *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
  JreStrongAssignAndConsume(&self->value_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneUtilMutableMutableValueStr *new_OrgApacheLuceneUtilMutableMutableValueStr_init() {
  OrgApacheLuceneUtilMutableMutableValueStr *self = [OrgApacheLuceneUtilMutableMutableValueStr alloc];
  OrgApacheLuceneUtilMutableMutableValueStr_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueStr)
