//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/HitQueue.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/search/HitQueue.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@implementation OrgApacheLuceneSearchHitQueue

- (instancetype)initWithInt:(jint)size
                withBoolean:(jboolean)prePopulate {
  OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(self, size, prePopulate);
  return self;
}

- (OrgApacheLuceneSearchScoreDoc *)getSentinelObject {
  return [new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(JavaLangInteger_MAX_VALUE, JavaLangFloat_NEGATIVE_INFINITY) autorelease];
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchScoreDoc *)hitA
                    withId:(OrgApacheLuceneSearchScoreDoc *)hitB {
  if (((OrgApacheLuceneSearchScoreDoc *) nil_chk(hitA))->score_ == ((OrgApacheLuceneSearchScoreDoc *) nil_chk(hitB))->score_) return hitA->doc_ > hitB->doc_;
  else return hitA->score_ < hitB->score_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withBoolean:", "HitQueue", NULL, 0x0, NULL, NULL },
    { "getSentinelObject", NULL, "Lorg.apache.lucene.search.ScoreDoc;", 0x4, NULL, NULL },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x14, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.ScoreDoc;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHitQueue = { 2, "HitQueue", "org.apache.lucene.search", NULL, 0x10, 3, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/ScoreDoc;>;" };
  return &_OrgApacheLuceneSearchHitQueue;
}

@end

void OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(OrgApacheLuceneSearchHitQueue *self, jint size, jboolean prePopulate) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(self, size, prePopulate);
}

OrgApacheLuceneSearchHitQueue *new_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(jint size, jboolean prePopulate) {
  OrgApacheLuceneSearchHitQueue *self = [OrgApacheLuceneSearchHitQueue alloc];
  OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(self, size, prePopulate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHitQueue)