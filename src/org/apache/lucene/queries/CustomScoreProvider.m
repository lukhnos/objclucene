//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/CustomScoreProvider.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/CustomScoreProvider.h"
#include "org/apache/lucene/search/Explanation.h"

@implementation OrgApacheLuceneQueriesCustomScoreProvider

- (instancetype)initWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneQueriesCustomScoreProvider_initWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
  return self;
}

- (jfloat)customScoreWithInt:(jint)doc
                   withFloat:(jfloat)subQueryScore
              withFloatArray:(IOSFloatArray *)valSrcScores {
  if (((IOSFloatArray *) nil_chk(valSrcScores))->size_ == 1) {
    return [self customScoreWithInt:doc withFloat:subQueryScore withFloat:IOSFloatArray_Get(valSrcScores, 0)];
  }
  if (valSrcScores->size_ == 0) {
    return [self customScoreWithInt:doc withFloat:subQueryScore withFloat:1];
  }
  jfloat score = subQueryScore;
  {
    IOSFloatArray *a__ = valSrcScores;
    jfloat const *b__ = a__->buffer_;
    jfloat const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jfloat valSrcScore = *b__++;
      JreTimesAssignFloatF(&score, valSrcScore);
    }
  }
  return score;
}

- (jfloat)customScoreWithInt:(jint)doc
                   withFloat:(jfloat)subQueryScore
                   withFloat:(jfloat)valSrcScore {
  return subQueryScore * valSrcScore;
}

- (OrgApacheLuceneSearchExplanation *)customExplainWithInt:(jint)doc
                      withOrgApacheLuceneSearchExplanation:(OrgApacheLuceneSearchExplanation *)subQueryExpl
                 withOrgApacheLuceneSearchExplanationArray:(IOSObjectArray *)valSrcExpls {
  if (((IOSObjectArray *) nil_chk(valSrcExpls))->size_ == 1) {
    return [self customExplainWithInt:doc withOrgApacheLuceneSearchExplanation:subQueryExpl withOrgApacheLuceneSearchExplanation:IOSObjectArray_Get(valSrcExpls, 0)];
  }
  if (valSrcExpls->size_ == 0) {
    return subQueryExpl;
  }
  jfloat valSrcScore = 1;
  {
    IOSObjectArray *a__ = valSrcExpls;
    OrgApacheLuceneSearchExplanation * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchExplanation * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchExplanation *valSrcExpl = *b__++;
      JreTimesAssignFloatF(&valSrcScore, [((OrgApacheLuceneSearchExplanation *) nil_chk(valSrcExpl)) getValue]);
    }
  }
  id<JavaUtilList> subs = [new_JavaUtilArrayList_init() autorelease];
  [subs addWithId:subQueryExpl];
  {
    IOSObjectArray *a__ = valSrcExpls;
    OrgApacheLuceneSearchExplanation * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchExplanation * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchExplanation *valSrcExpl = *b__++;
      [subs addWithId:valSrcExpl];
    }
  }
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(valSrcScore * [((OrgApacheLuceneSearchExplanation *) nil_chk(subQueryExpl)) getValue], @"custom score: product of:", subs);
}

- (OrgApacheLuceneSearchExplanation *)customExplainWithInt:(jint)doc
                      withOrgApacheLuceneSearchExplanation:(OrgApacheLuceneSearchExplanation *)subQueryExpl
                      withOrgApacheLuceneSearchExplanation:(OrgApacheLuceneSearchExplanation *)valSrcExpl {
  jfloat valSrcScore = 1;
  if (valSrcExpl != nil) {
    JreTimesAssignFloatF(&valSrcScore, [valSrcExpl getValue]);
  }
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(valSrcScore * [((OrgApacheLuceneSearchExplanation *) nil_chk(subQueryExpl)) getValue], @"custom score: product of:", [IOSObjectArray arrayWithObjects:(id[]){ subQueryExpl, valSrcExpl } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexLeafReaderContext:", "CustomScoreProvider", NULL, 0x1, NULL, NULL },
    { "customScoreWithInt:withFloat:withFloatArray:", "customScore", "F", 0x1, "Ljava.io.IOException;", NULL },
    { "customScoreWithInt:withFloat:withFloat:", "customScore", "F", 0x1, "Ljava.io.IOException;", NULL },
    { "customExplainWithInt:withOrgApacheLuceneSearchExplanation:withOrgApacheLuceneSearchExplanationArray:", "customExplain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
    { "customExplainWithInt:withOrgApacheLuceneSearchExplanation:withOrgApacheLuceneSearchExplanation:", "customExplain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "context_", NULL, 0x14, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesCustomScoreProvider = { 2, "CustomScoreProvider", "org.apache.lucene.queries", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesCustomScoreProvider;
}

@end

void OrgApacheLuceneQueriesCustomScoreProvider_initWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneQueriesCustomScoreProvider *self, OrgApacheLuceneIndexLeafReaderContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->context_, context);
}

OrgApacheLuceneQueriesCustomScoreProvider *new_OrgApacheLuceneQueriesCustomScoreProvider_initWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneIndexLeafReaderContext *context) {
  OrgApacheLuceneQueriesCustomScoreProvider *self = [OrgApacheLuceneQueriesCustomScoreProvider alloc];
  OrgApacheLuceneQueriesCustomScoreProvider_initWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesCustomScoreProvider)
