//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/AfterEffectL.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/AfterEffect.h"
#include "org/apache/lucene/search/similarities/AfterEffectL.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"

__attribute__((unused)) static jfloat OrgApacheLuceneSearchSimilaritiesAfterEffectL_scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats_withFloat_(OrgApacheLuceneSearchSimilaritiesAfterEffectL *self, OrgApacheLuceneSearchSimilaritiesBasicStats *stats, jfloat tfn);

@implementation OrgApacheLuceneSearchSimilaritiesAfterEffectL

- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesAfterEffectL_init(self);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  return OrgApacheLuceneSearchSimilaritiesAfterEffectL_scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats_withFloat_(self, stats, tfn);
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(OrgApacheLuceneSearchSimilaritiesAfterEffectL_scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats_withFloat_(self, stats, tfn), JreStrcat("$$", [[self getClass] getSimpleName], @", computed from: "), [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(tfn, @"tfn", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]) } count:1 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (NSString *)description {
  return @"L";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AfterEffectL", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x11, NULL, NULL },
    { "explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesAfterEffectL = { 2, "AfterEffectL", "org.apache.lucene.search.similarities", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesAfterEffectL;
}

@end

void OrgApacheLuceneSearchSimilaritiesAfterEffectL_init(OrgApacheLuceneSearchSimilaritiesAfterEffectL *self) {
  OrgApacheLuceneSearchSimilaritiesAfterEffect_init(self);
}

OrgApacheLuceneSearchSimilaritiesAfterEffectL *new_OrgApacheLuceneSearchSimilaritiesAfterEffectL_init() {
  OrgApacheLuceneSearchSimilaritiesAfterEffectL *self = [OrgApacheLuceneSearchSimilaritiesAfterEffectL alloc];
  OrgApacheLuceneSearchSimilaritiesAfterEffectL_init(self);
  return self;
}

jfloat OrgApacheLuceneSearchSimilaritiesAfterEffectL_scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats_withFloat_(OrgApacheLuceneSearchSimilaritiesAfterEffectL *self, OrgApacheLuceneSearchSimilaritiesBasicStats *stats, jfloat tfn) {
  return 1 / (tfn + 1);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesAfterEffectL)
