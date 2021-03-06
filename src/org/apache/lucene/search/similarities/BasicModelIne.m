//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelIne.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicModelIne.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@implementation OrgApacheLuceneSearchSimilaritiesBasicModelIne

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesBasicModelIne_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  jlong N = [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getNumberOfDocuments];
  jlong F = [stats getTotalTermFreq];
  jdouble ne = N * (1 - JavaLangMath_powWithDouble_withDouble_((N - 1) / (jdouble) N, F));
  return tfn * (jfloat) (OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_((N + 1) / (ne + 0.5)));
}

- (NSString *)description {
  return @"I(ne)";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BasicModelIne", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesBasicModelIne = { 2, "BasicModelIne", "org.apache.lucene.search.similarities", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesBasicModelIne;
}

@end

void OrgApacheLuceneSearchSimilaritiesBasicModelIne_init(OrgApacheLuceneSearchSimilaritiesBasicModelIne *self) {
  OrgApacheLuceneSearchSimilaritiesBasicModel_init(self);
}

OrgApacheLuceneSearchSimilaritiesBasicModelIne *new_OrgApacheLuceneSearchSimilaritiesBasicModelIne_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelIne, init)
}

OrgApacheLuceneSearchSimilaritiesBasicModelIne *create_OrgApacheLuceneSearchSimilaritiesBasicModelIne_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelIne, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesBasicModelIne)
