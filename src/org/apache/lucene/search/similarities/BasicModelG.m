//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelG.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicModelG.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@implementation OrgApacheLuceneSearchSimilaritiesBasicModelG

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesBasicModelG_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  jdouble F = [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalTermFreq] + 1;
  jdouble N = [stats getNumberOfDocuments];
  jdouble lambda = F / (N + F);
  return (jfloat) (OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(lambda + 1) + tfn * OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_((1 + lambda) / lambda));
}

- (NSString *)description {
  return @"G";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BasicModelG", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesBasicModelG = { 2, "BasicModelG", "org.apache.lucene.search.similarities", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesBasicModelG;
}

@end

void OrgApacheLuceneSearchSimilaritiesBasicModelG_init(OrgApacheLuceneSearchSimilaritiesBasicModelG *self) {
  OrgApacheLuceneSearchSimilaritiesBasicModel_init(self);
}

OrgApacheLuceneSearchSimilaritiesBasicModelG *new_OrgApacheLuceneSearchSimilaritiesBasicModelG_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelG, init)
}

OrgApacheLuceneSearchSimilaritiesBasicModelG *create_OrgApacheLuceneSearchSimilaritiesBasicModelG_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelG, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesBasicModelG)
