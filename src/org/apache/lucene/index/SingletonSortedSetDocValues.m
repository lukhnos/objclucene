//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingletonSortedSetDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/RandomAccessOrds.h"
#include "org/apache/lucene/index/SingletonSortedSetDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneIndexSingletonSortedSetDocValues () {
 @public
  OrgApacheLuceneIndexSortedDocValues *in_;
  jlong currentOrd_;
  jlong ord_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingletonSortedSetDocValues, in_, OrgApacheLuceneIndexSortedDocValues *)

@implementation OrgApacheLuceneIndexSingletonSortedSetDocValues

- (instancetype)initWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)inArg {
  OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(self, inArg);
  return self;
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValues {
  return in_;
}

- (jlong)nextOrd {
  jlong v = currentOrd_;
  currentOrd_ = OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS;
  return v;
}

- (void)setDocumentWithInt:(jint)docID {
  currentOrd_ = ord_ = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(in_)) getOrdWithInt:docID];
}

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(in_)) lookupOrdWithInt:(jint) ord];
}

- (jlong)getValueCount {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(in_)) getValueCount];
}

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(in_)) lookupTermWithOrgApacheLuceneUtilBytesRef:key];
}

- (jlong)ordAtWithInt:(jint)index {
  return ord_;
}

- (jint)cardinality {
  return (jint) (JreURShift64(ord_, 63)) ^ 1;
}

- (OrgApacheLuceneIndexTermsEnum *)termsEnum {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(in_)) termsEnum];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSortedDocValues:", "SingletonSortedSetDocValues", NULL, 0x1, NULL, NULL },
    { "getSortedDocValues", NULL, "Lorg.apache.lucene.index.SortedDocValues;", 0x1, NULL, NULL },
    { "nextOrd", NULL, "J", 0x1, NULL, NULL },
    { "setDocumentWithInt:", "setDocument", "V", 0x1, NULL, NULL },
    { "lookupOrdWithLong:", "lookupOrd", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "getValueCount", NULL, "J", 0x1, NULL, NULL },
    { "lookupTermWithOrgApacheLuceneUtilBytesRef:", "lookupTerm", "J", 0x1, NULL, NULL },
    { "ordAtWithInt:", "ordAt", "J", 0x1, NULL, NULL },
    { "cardinality", NULL, "I", 0x1, NULL, NULL },
    { "termsEnum", NULL, "Lorg.apache.lucene.index.TermsEnum;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x12, "Lorg.apache.lucene.index.SortedDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentOrd_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "ord_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSingletonSortedSetDocValues = { 2, "SingletonSortedSetDocValues", "org.apache.lucene.index", NULL, 0x10, 10, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSingletonSortedSetDocValues;
}

@end

void OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSingletonSortedSetDocValues *self, OrgApacheLuceneIndexSortedDocValues *inArg) {
  OrgApacheLuceneIndexRandomAccessOrds_init(self);
  JreStrongAssign(&self->in_, inArg);
  JreAssert((OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS == -1), (@"org/apache/lucene/index/SingletonSortedSetDocValues.java:36 condition failed: assert NO_MORE_ORDS == -1;"));
}

OrgApacheLuceneIndexSingletonSortedSetDocValues *new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *inArg) {
  OrgApacheLuceneIndexSingletonSortedSetDocValues *self = [OrgApacheLuceneIndexSingletonSortedSetDocValues alloc];
  OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSingletonSortedSetDocValues)
