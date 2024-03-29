//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/IBSimilarity.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Distribution.h"
#include "org/apache/lucene/search/similarities/IBSimilarity.h"
#include "org/apache/lucene/search/similarities/Lambda.h"
#include "org/apache/lucene/search/similarities/Normalization.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/IBSimilarity must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSimilaritiesIBSimilarity

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesDistribution:(OrgApacheLuceneSearchSimilaritiesDistribution *)distribution
                          withOrgApacheLuceneSearchSimilaritiesLambda:(OrgApacheLuceneSearchSimilaritiesLambda *)lambda
                   withOrgApacheLuceneSearchSimilaritiesNormalization:(OrgApacheLuceneSearchSimilaritiesNormalization *)normalization {
  OrgApacheLuceneSearchSimilaritiesIBSimilarity_initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_(self, distribution, lambda, normalization);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen {
  return [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] * [((OrgApacheLuceneSearchSimilaritiesDistribution *) nil_chk(distribution_)) scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:[((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:freq withFloat:docLen] withFloat:[((OrgApacheLuceneSearchSimilaritiesLambda *) nil_chk(lambda_)) lambdaWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats]];
}

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen {
  if ([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] != 1.0f) {
    [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([stats getTotalBoost], @"boost", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  }
  OrgApacheLuceneSearchExplanation *normExpl = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:freq withFloat:docLen]);
  OrgApacheLuceneSearchExplanation *lambdaExpl = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesLambda *) nil_chk(lambda_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats]);
  [((id<JavaUtilList>) nil_chk(subs)) addWithId:normExpl];
  [subs addWithId:lambdaExpl];
  [subs addWithId:[((OrgApacheLuceneSearchSimilaritiesDistribution *) nil_chk(distribution_)) explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:[((OrgApacheLuceneSearchExplanation *) nil_chk(normExpl)) getValue] withFloat:[((OrgApacheLuceneSearchExplanation *) nil_chk(lambdaExpl)) getValue]]];
}

- (NSString *)description {
  return JreStrcat("$$C$$", @"IB ", [((OrgApacheLuceneSearchSimilaritiesDistribution *) nil_chk(distribution_)) description], '-', [((OrgApacheLuceneSearchSimilaritiesLambda *) nil_chk(lambda_)) description], [((OrgApacheLuceneSearchSimilaritiesNormalization *) nil_chk(normalization_)) description]);
}

- (OrgApacheLuceneSearchSimilaritiesDistribution *)getDistribution {
  return distribution_;
}

- (OrgApacheLuceneSearchSimilaritiesLambda *)getLambda {
  return lambda_;
}

- (OrgApacheLuceneSearchSimilaritiesNormalization *)getNormalization {
  return normalization_;
}

- (void)dealloc {
  RELEASE_(distribution_);
  RELEASE_(lambda_);
  RELEASE_(normalization_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, -1, 5, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesDistribution;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesLambda;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesNormalization;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSimilaritiesDistribution:withOrgApacheLuceneSearchSimilaritiesLambda:withOrgApacheLuceneSearchSimilaritiesNormalization:);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:);
  methods[2].selector = @selector(explainWithJavaUtilList:withOrgApacheLuceneSearchSimilaritiesBasicStats:withInt:withFloat:withFloat:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(getDistribution);
  methods[5].selector = @selector(getLambda);
  methods[6].selector = @selector(getNormalization);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "distribution_", "LOrgApacheLuceneSearchSimilaritiesDistribution;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "lambda_", "LOrgApacheLuceneSearchSimilaritiesLambda;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "normalization_", "LOrgApacheLuceneSearchSimilaritiesNormalization;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSimilaritiesDistribution;LOrgApacheLuceneSearchSimilaritiesLambda;LOrgApacheLuceneSearchSimilaritiesNormalization;", "score", "LOrgApacheLuceneSearchSimilaritiesBasicStats;FF", "explain", "LJavaUtilList;LOrgApacheLuceneSearchSimilaritiesBasicStats;IFF", "(Ljava/util/List<Lorg/apache/lucene/search/Explanation;>;Lorg/apache/lucene/search/similarities/BasicStats;IFF)V", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesIBSimilarity = { "IBSimilarity", "org.apache.lucene.search.similarities", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesIBSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesIBSimilarity_initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesIBSimilarity *self, OrgApacheLuceneSearchSimilaritiesDistribution *distribution, OrgApacheLuceneSearchSimilaritiesLambda *lambda, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) {
  OrgApacheLuceneSearchSimilaritiesSimilarityBase_init(self);
  JreStrongAssign(&self->distribution_, distribution);
  JreStrongAssign(&self->lambda_, lambda);
  JreStrongAssign(&self->normalization_, normalization);
}

OrgApacheLuceneSearchSimilaritiesIBSimilarity *new_OrgApacheLuceneSearchSimilaritiesIBSimilarity_initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesDistribution *distribution, OrgApacheLuceneSearchSimilaritiesLambda *lambda, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesIBSimilarity, initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_, distribution, lambda, normalization)
}

OrgApacheLuceneSearchSimilaritiesIBSimilarity *create_OrgApacheLuceneSearchSimilaritiesIBSimilarity_initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesDistribution *distribution, OrgApacheLuceneSearchSimilaritiesLambda *lambda, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesIBSimilarity, initWithOrgApacheLuceneSearchSimilaritiesDistribution_withOrgApacheLuceneSearchSimilaritiesLambda_withOrgApacheLuceneSearchSimilaritiesNormalization_, distribution, lambda, normalization)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesIBSimilarity)
