//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BitSetIterator.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/BitSetIterator.h"
#include "org/apache/lucene/util/FixedBitSet.h"

@interface OrgApacheLuceneUtilBitSetIterator () {
 @public
  OrgApacheLuceneUtilBitSet *bits_;
  jint length_;
  jlong cost_;
  jint doc_;
}

+ (id)getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                            withIOSClass:(IOSClass *)clazz;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBitSetIterator, bits_, OrgApacheLuceneUtilBitSet *)

__attribute__((unused)) static id OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(OrgApacheLuceneSearchDocIdSetIterator *iterator, IOSClass *clazz);

@implementation OrgApacheLuceneUtilBitSetIterator

+ (id)getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                            withIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(iterator, clazz);
}

+ (OrgApacheLuceneUtilFixedBitSet *)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)bits
                                         withLong:(jlong)cost {
  OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(self, bits, cost);
  return self;
}

- (jint)docID {
  return doc_;
}

- (jint)nextDoc {
  return [self advanceWithInt:doc_ + 1];
}

- (jint)advanceWithInt:(jint)target {
  if (target >= length_) {
    return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  return doc_ = [((OrgApacheLuceneUtilBitSet *) nil_chk(bits_)) nextSetBitWithInt:target];
}

- (jlong)cost {
  return cost_;
}

- (void)dealloc {
  RELEASE_(bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:withIOSClass:", "getBitSet", "TT;", 0xa, NULL, "<T:Lorg/apache/lucene/util/BitSet;>(Lorg/apache/lucene/search/DocIdSetIterator;Ljava/lang/Class<+TT;>;)TT;" },
    { "getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:", "getFixedBitSetOrNull", "Lorg.apache.lucene.util.FixedBitSet;", 0x9, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:withLong:", "BitSetIterator", NULL, 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, NULL, NULL },
    { "advanceWithInt:", "advance", "I", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bits_", NULL, 0x12, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "cost_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSetIterator = { 2, "BitSetIterator", "org.apache.lucene.util", NULL, 0x1, 7, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilBitSetIterator;
}

@end

id OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(OrgApacheLuceneSearchDocIdSetIterator *iterator, IOSClass *clazz) {
  OrgApacheLuceneUtilBitSetIterator_initialize();
  if ([iterator isKindOfClass:[OrgApacheLuceneUtilBitSetIterator class]]) {
    OrgApacheLuceneUtilBitSet *bits = ((OrgApacheLuceneUtilBitSetIterator *) nil_chk(((OrgApacheLuceneUtilBitSetIterator *) check_class_cast(iterator, [OrgApacheLuceneUtilBitSetIterator class]))))->bits_;
    JreAssert((bits != nil), (@"org/apache/lucene/util/BitSetIterator.java:32 condition failed: assert bits != null;"));
    if ([((IOSClass *) nil_chk(clazz)) isInstance:bits]) {
      return [clazz cast:bits];
    }
  }
  return nil;
}

OrgApacheLuceneUtilFixedBitSet *OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  OrgApacheLuceneUtilBitSetIterator_initialize();
  return OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(iterator, OrgApacheLuceneUtilFixedBitSet_class_());
}

void OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(OrgApacheLuceneUtilBitSetIterator *self, OrgApacheLuceneUtilBitSet *bits, jlong cost) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  self->doc_ = -1;
  JreStrongAssign(&self->bits_, bits);
  self->length_ = [((OrgApacheLuceneUtilBitSet *) nil_chk(bits)) length];
  self->cost_ = cost;
}

OrgApacheLuceneUtilBitSetIterator *new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(OrgApacheLuceneUtilBitSet *bits, jlong cost) {
  OrgApacheLuceneUtilBitSetIterator *self = [OrgApacheLuceneUtilBitSetIterator alloc];
  OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(self, bits, cost);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSetIterator)
