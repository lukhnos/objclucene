//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConjunctionScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/ConjunctionDISI.h"
#include "org/apache/lucene/search/ConjunctionScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchConjunctionScorer () {
 @public
  OrgApacheLuceneSearchConjunctionDISI *disi_;
  IOSObjectArray *scorers_;
  jfloat coord_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConjunctionScorer, disi_, OrgApacheLuceneSearchConjunctionDISI *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConjunctionScorer, scorers_, IOSObjectArray *)

@implementation OrgApacheLuceneSearchConjunctionScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                   withJavaUtilList:(id<JavaUtilList>)required
                                   withJavaUtilList:(id<JavaUtilList>)scorers {
  OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_(self, weight, required, scorers);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                   withJavaUtilList:(id<JavaUtilList>)required
                                   withJavaUtilList:(id<JavaUtilList>)scorers
                                          withFloat:(jfloat)coord {
  OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(self, weight, required, scorers, coord);
  return self;
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(disi_)) asTwoPhaseIterator];
}

- (jint)advanceWithInt:(jint)target {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(disi_)) advanceWithInt:target];
}

- (jint)docID {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(disi_)) docID];
}

- (jint)nextDoc {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(disi_)) nextDoc];
}

- (jfloat)score {
  jdouble sum = 0.0;
  {
    IOSObjectArray *a__ = scorers_;
    OrgApacheLuceneSearchScorer * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchScorer * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchScorer *scorer = *b__++;
      JrePlusAssignDoubleD(&sum, [((OrgApacheLuceneSearchScorer *) nil_chk(scorer)) score]);
    }
  }
  return coord_ * (jfloat) sum;
}

- (jint)freq {
  return ((IOSObjectArray *) nil_chk(scorers_))->size_;
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(disi_)) cost];
}

- (id<JavaUtilCollection>)getChildren {
  JavaUtilArrayList *children = create_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = scorers_;
    OrgApacheLuceneSearchScorer * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchScorer * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchScorer *scorer = *b__++;
      [children addWithId:create_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(scorer, @"MUST")];
    }
  }
  return children;
}

- (void)dealloc {
  RELEASE_(disi_);
  RELEASE_(scorers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withJavaUtilList:withJavaUtilList:", "ConjunctionScorer", NULL, 0x0, NULL, "(Lorg/apache/lucene/search/Weight;Ljava/util/List<+Lorg/apache/lucene/search/DocIdSetIterator;>;Ljava/util/List<Lorg/apache/lucene/search/Scorer;>;)V" },
    { "initWithOrgApacheLuceneSearchWeight:withJavaUtilList:withJavaUtilList:withFloat:", "ConjunctionScorer", NULL, 0x0, NULL, "(Lorg/apache/lucene/search/Weight;Ljava/util/List<+Lorg/apache/lucene/search/DocIdSetIterator;>;Ljava/util/List<Lorg/apache/lucene/search/Scorer;>;F)V" },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/search/Scorer$ChildScorer;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "disi_", NULL, 0x12, "Lorg.apache.lucene.search.ConjunctionDISI;", NULL, NULL, .constantValue.asLong = 0 },
    { "scorers_", NULL, 0x12, "[Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "coord_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.ConjunctionScorer$DocsAndFreqs;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConjunctionScorer = { 2, "ConjunctionScorer", "org.apache.lucene.search", NULL, 0x0, 10, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchConjunctionScorer;
}

@end

void OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneSearchConjunctionScorer *self, OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers) {
  OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(self, weight, required, scorers, 1.0f);
}

OrgApacheLuceneSearchConjunctionScorer *new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConjunctionScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_, weight, required, scorers)
}

OrgApacheLuceneSearchConjunctionScorer *create_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConjunctionScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_, weight, required, scorers)
}

void OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(OrgApacheLuceneSearchConjunctionScorer *self, OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers, jfloat coord) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  JreAssert(([((id<JavaUtilList>) nil_chk(required)) containsAllWithJavaUtilCollection:scorers]), (@"org/apache/lucene/search/ConjunctionScorer.java:39 condition failed: assert required.containsAll(scorers);"));
  self->coord_ = coord;
  JreStrongAssign(&self->disi_, OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(required));
  JreStrongAssign(&self->scorers_, [((id<JavaUtilList>) nil_chk(scorers)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[scorers size] type:OrgApacheLuceneSearchScorer_class_()]]);
}

OrgApacheLuceneSearchConjunctionScorer *new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers, jfloat coord) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConjunctionScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_, weight, required, scorers, coord)
}

OrgApacheLuceneSearchConjunctionScorer *create_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> required, id<JavaUtilList> scorers, jfloat coord) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConjunctionScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_, weight, required, scorers, coord)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConjunctionScorer)

@implementation OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs

- (instancetype)initWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc {
  RELEASE_(iterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchDocIdSetIterator:", "DocsAndFreqs", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cost_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "iterator_", NULL, 0x10, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs = { 2, "DocsAndFreqs", "org.apache.lucene.search", "ConjunctionScorer", 0x18, 1, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs;
}

@end

void OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs *self, OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  NSObject_init(self);
  self->doc_ = -1;
  JreStrongAssign(&self->iterator_, iterator);
  self->cost_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iterator)) cost];
}

OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs *new_OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs, initWithOrgApacheLuceneSearchDocIdSetIterator_, iterator)
}

OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs *create_OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs, initWithOrgApacheLuceneSearchDocIdSetIterator_, iterator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs)
