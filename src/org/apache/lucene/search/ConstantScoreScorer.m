//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConstantScoreScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/search/ConstantScoreScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchConstantScoreScorer () {
 @public
  jfloat score_;
  OrgApacheLuceneSearchTwoPhaseIterator *twoPhaseIterator_;
  OrgApacheLuceneSearchDocIdSetIterator *disi_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreScorer, twoPhaseIterator_, OrgApacheLuceneSearchTwoPhaseIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreScorer, disi_, OrgApacheLuceneSearchDocIdSetIterator *)

@implementation OrgApacheLuceneSearchConstantScoreScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                          withFloat:(jfloat)score
          withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi {
  OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, weight, score, disi);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                          withFloat:(jfloat)score
          withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)twoPhaseIterator {
  OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(self, weight, score, twoPhaseIterator);
  return self;
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  return twoPhaseIterator_;
}

- (jfloat)score {
  return score_;
}

- (jint)freq {
  return 1;
}

- (jint)docID {
  return [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi_)) docID];
}

- (jint)nextDoc {
  return [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi_)) nextDoc];
}

- (jint)advanceWithInt:(jint)target {
  return [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi_)) advanceWithInt:target];
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi_)) cost];
}

- (void)dealloc {
  RELEASE_(twoPhaseIterator_);
  RELEASE_(disi_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withFloat:withOrgApacheLuceneSearchDocIdSetIterator:", "ConstantScoreScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchWeight:withFloat:withOrgApacheLuceneSearchTwoPhaseIterator:", "ConstantScoreScorer", NULL, 0x1, NULL, NULL },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "score_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "twoPhaseIterator_", NULL, 0x12, "Lorg.apache.lucene.search.TwoPhaseIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "disi_", NULL, 0x12, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreScorer = { 2, "ConstantScoreScorer", "org.apache.lucene.search", NULL, 0x11, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchConstantScoreScorer;
}

@end

void OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchConstantScoreScorer *self, OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchDocIdSetIterator *disi) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  self->score_ = score;
  JreStrongAssign(&self->twoPhaseIterator_, nil);
  JreStrongAssign(&self->disi_, disi);
}

OrgApacheLuceneSearchConstantScoreScorer *new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchDocIdSetIterator *disi) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_, weight, score, disi)
}

OrgApacheLuceneSearchConstantScoreScorer *create_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchDocIdSetIterator *disi) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_, weight, score, disi)
}

void OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(OrgApacheLuceneSearchConstantScoreScorer *self, OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchTwoPhaseIterator *twoPhaseIterator) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  self->score_ = score;
  JreStrongAssign(&self->twoPhaseIterator_, twoPhaseIterator);
  JreStrongAssign(&self->disi_, OrgApacheLuceneSearchTwoPhaseIterator_asDocIdSetIteratorWithOrgApacheLuceneSearchTwoPhaseIterator_(twoPhaseIterator));
}

OrgApacheLuceneSearchConstantScoreScorer *new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchTwoPhaseIterator *twoPhaseIterator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_, weight, score, twoPhaseIterator)
}

OrgApacheLuceneSearchConstantScoreScorer *create_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(OrgApacheLuceneSearchWeight *weight, jfloat score, OrgApacheLuceneSearchTwoPhaseIterator *twoPhaseIterator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_, weight, score, twoPhaseIterator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreScorer)
