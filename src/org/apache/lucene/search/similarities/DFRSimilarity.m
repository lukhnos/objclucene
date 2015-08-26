//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DFRSimilarity.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NullPointerException.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/AfterEffect.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/DFRSimilarity.h"
#include "org/apache/lucene/search/similarities/Normalization.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@implementation OrgApacheLuceneSearchSimilaritiesDFRSimilarity

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesBasicModel:(OrgApacheLuceneSearchSimilaritiesBasicModel *)basicModel
                   withOrgApacheLuceneSearchSimilaritiesAfterEffect:(OrgApacheLuceneSearchSimilaritiesAfterEffect *)afterEffect
                 withOrgApacheLuceneSearchSimilaritiesNormalization:(OrgApacheLuceneSearchSimilaritiesNormalization *)normalization {
  OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(self, basicModel, afterEffect, normalization);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen {
  jfloat tfn = [((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:freq withFloat:docLen];
  return [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] * [((OrgApacheLuceneSearchSimilaritiesBasicModel *) nil_chk(basicModel_)) scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:tfn] * [((OrgApacheLuceneSearchSimilaritiesAfterEffect *) nil_chk(afterEffect_)) scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:tfn];
}

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen {
  if ([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] != 1.0f) {
    [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([stats getTotalBoost], @"boost", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  }
  OrgApacheLuceneSearchExplanation *normExpl = [((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:freq withFloat:docLen];
  jfloat tfn = [((OrgApacheLuceneSearchExplanation *) nil_chk(normExpl)) getValue];
  [((id<JavaUtilList>) nil_chk(subs)) addWithId:normExpl];
  [subs addWithId:[((OrgApacheLuceneSearchSimilaritiesBasicModel *) nil_chk(basicModel_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:tfn]];
  [subs addWithId:[((OrgApacheLuceneSearchSimilaritiesAfterEffect *) nil_chk(afterEffect_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:tfn]];
}

- (NSString *)description {
  return JreStrcat("$$$$", @"DFR ", [((OrgApacheLuceneSearchSimilaritiesBasicModel *) nil_chk(basicModel_)) description], [((OrgApacheLuceneSearchSimilaritiesAfterEffect *) nil_chk(afterEffect_)) description], [((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) description]);
}

- (OrgApacheLuceneSearchSimilaritiesBasicModel *)getBasicModel {
  return basicModel_;
}

- (OrgApacheLuceneSearchSimilaritiesAfterEffect *)getAfterEffect {
  return afterEffect_;
}

- (OrgApacheLuceneSearchSimilaritiesNormalization *)getNormalization {
  return normalization_;
}

- (void)dealloc {
  RELEASE_(basicModel_);
  RELEASE_(afterEffect_);
  RELEASE_(normalization_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSimilaritiesBasicModel:withOrgApacheLuceneSearchSimilaritiesAfterEffect:withOrgApacheLuceneSearchSimilaritiesNormalization:", "DFRSimilarity", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:", "score", "F", 0x4, NULL, NULL },
    { "explainWithJavaUtilList:withOrgApacheLuceneSearchSimilaritiesBasicStats:withInt:withFloat:withFloat:", "explain", "V", 0x4, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getBasicModel", NULL, "Lorg.apache.lucene.search.similarities.BasicModel;", 0x1, NULL, NULL },
    { "getAfterEffect", NULL, "Lorg.apache.lucene.search.similarities.AfterEffect;", 0x1, NULL, NULL },
    { "getNormalization", NULL, "Lorg.apache.lucene.search.similarities.Normalization;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "basicModel_", NULL, 0x14, "Lorg.apache.lucene.search.similarities.BasicModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "afterEffect_", NULL, 0x14, "Lorg.apache.lucene.search.similarities.AfterEffect;", NULL, NULL, .constantValue.asLong = 0 },
    { "normalization_", NULL, 0x14, "Lorg.apache.lucene.search.similarities.Normalization;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesDFRSimilarity = { 2, "DFRSimilarity", "org.apache.lucene.search.similarities", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesDFRSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesDFRSimilarity *self, OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) {
  OrgApacheLuceneSearchSimilaritiesSimilarityBase_init(self);
  if (basicModel == nil || afterEffect == nil || normalization == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"null parameters not allowed.") autorelease];
  }
  JreStrongAssign(&self->basicModel_, basicModel);
  JreStrongAssign(&self->afterEffect_, afterEffect);
  JreStrongAssign(&self->normalization_, normalization);
}

OrgApacheLuceneSearchSimilaritiesDFRSimilarity *new_OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) {
  OrgApacheLuceneSearchSimilaritiesDFRSimilarity *self = [OrgApacheLuceneSearchSimilaritiesDFRSimilarity alloc];
  OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(self, basicModel, afterEffect, normalization);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesDFRSimilarity)
