//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelBE.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicModelBE.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/BasicModelBE must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSimilaritiesBasicModelBE ()

/*!
 @brief The <em>f</em> helper function defined for <em>B<sub>E</sub></em>.
 */
- (jdouble)fWithDouble:(jdouble)n
            withDouble:(jdouble)m;

@end

__attribute__((unused)) static jdouble OrgApacheLuceneSearchSimilaritiesBasicModelBE_fWithDouble_withDouble_(OrgApacheLuceneSearchSimilaritiesBasicModelBE *self, jdouble n, jdouble m);

@implementation OrgApacheLuceneSearchSimilaritiesBasicModelBE

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesBasicModelBE_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  jdouble F = [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalTermFreq] + 1 + tfn;
  jdouble N = F + [stats getNumberOfDocuments];
  return (jfloat) (-OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_((N - 1) * JavaLangMath_E) + OrgApacheLuceneSearchSimilaritiesBasicModelBE_fWithDouble_withDouble_(self, N + F - 1, N + F - tfn - 2) - OrgApacheLuceneSearchSimilaritiesBasicModelBE_fWithDouble_withDouble_(self, F, F - tfn));
}

- (jdouble)fWithDouble:(jdouble)n
            withDouble:(jdouble)m {
  return OrgApacheLuceneSearchSimilaritiesBasicModelBE_fWithDouble_withDouble_(self, n, m);
}

- (NSString *)description {
  return @"Be";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "D", 0x12, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:);
  methods[2].selector = @selector(fWithDouble:withDouble:);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "score", "LOrgApacheLuceneSearchSimilaritiesBasicStats;F", "f", "DD", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesBasicModelBE = { "BasicModelBE", "org.apache.lucene.search.similarities", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesBasicModelBE;
}

@end

void OrgApacheLuceneSearchSimilaritiesBasicModelBE_init(OrgApacheLuceneSearchSimilaritiesBasicModelBE *self) {
  OrgApacheLuceneSearchSimilaritiesBasicModel_init(self);
}

OrgApacheLuceneSearchSimilaritiesBasicModelBE *new_OrgApacheLuceneSearchSimilaritiesBasicModelBE_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelBE, init)
}

OrgApacheLuceneSearchSimilaritiesBasicModelBE *create_OrgApacheLuceneSearchSimilaritiesBasicModelBE_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelBE, init)
}

jdouble OrgApacheLuceneSearchSimilaritiesBasicModelBE_fWithDouble_withDouble_(OrgApacheLuceneSearchSimilaritiesBasicModelBE *self, jdouble n, jdouble m) {
  return (m + 0.5) * OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(n / m) + (n - m) * OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(n);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesBasicModelBE)
