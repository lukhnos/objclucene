//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisjunctionMaxScorer.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/DisjunctionMaxScorer.h"
#include "org/apache/lucene/search/DisjunctionScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DisjunctionMaxScorer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchDisjunctionMaxScorer () {
 @public
  jfloat tieBreakerMultiplier_;
}

@end

@implementation OrgApacheLuceneSearchDisjunctionMaxScorer

- (instancetype)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                                        withFloat:(jfloat)tieBreakerMultiplier
                                                 withJavaUtilList:(id<JavaUtilList>)subScorers
                                                      withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchDisjunctionMaxScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(self, weight, tieBreakerMultiplier, subScorers, needsScores);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)topList {
  jfloat scoreSum = 0;
  jfloat scoreMax = 0;
  for (OrgApacheLuceneSearchDisiWrapper *w = JreRetainedLocalValue(topList); w != nil; w = w->next_) {
    jfloat subScore = [((OrgApacheLuceneSearchScorer *) nil_chk(w->iterator_)) score];
    JrePlusAssignFloatF(&scoreSum, subScore);
    if (subScore > scoreMax) {
      scoreMax = subScore;
    }
  }
  return scoreMax + (scoreSum - scoreMax) * tieBreakerMultiplier_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "F", 0x4, 2, 3, 4, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneSearchWeight:withFloat:withJavaUtilList:withBoolean:);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchDisiWrapper:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tieBreakerMultiplier_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;FLJavaUtilList;Z", "(Lorg/apache/lucene/search/Weight;FLjava/util/List<Lorg/apache/lucene/search/Scorer;>;Z)V", "score", "LOrgApacheLuceneSearchDisiWrapper;", "LJavaIoIOException;", "(Lorg/apache/lucene/search/DisiWrapper<Lorg/apache/lucene/search/Scorer;>;)F" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxScorer = { "DisjunctionMaxScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchDisjunctionMaxScorer;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchDisjunctionMaxScorer *self, OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  OrgApacheLuceneSearchDisjunctionScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, weight, subScorers, needsScores);
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
}

OrgApacheLuceneSearchDisjunctionMaxScorer *new_OrgApacheLuceneSearchDisjunctionMaxScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxScorer, initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_, weight, tieBreakerMultiplier, subScorers, needsScores)
}

OrgApacheLuceneSearchDisjunctionMaxScorer *create_OrgApacheLuceneSearchDisjunctionMaxScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxScorer, initPackagePrivateWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_, weight, tieBreakerMultiplier, subScorers, needsScores)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxScorer)
