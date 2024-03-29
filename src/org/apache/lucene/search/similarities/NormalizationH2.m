//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/NormalizationH2.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Normalization.h"
#include "org/apache/lucene/search/similarities/NormalizationH2.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/NormalizationH2 must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSimilaritiesNormalizationH2 () {
 @public
  jfloat c_;
}

@end

@implementation OrgApacheLuceneSearchSimilaritiesNormalizationH2

- (instancetype)initWithFloat:(jfloat)c {
  OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(self, c);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesNormalizationH2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                   withFloat:(jfloat)tf
                                                   withFloat:(jfloat)len {
  return (jfloat) (tf * OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(1 + c_ * [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getAvgFieldLength] / len));
}

- (NSString *)description {
  return @"2";
}

- (jfloat)getC {
  return c_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithFloat:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(getC);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "c_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "F", "tfn", "LOrgApacheLuceneSearchSimilaritiesBasicStats;FF", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesNormalizationH2 = { "NormalizationH2", "org.apache.lucene.search.similarities", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesNormalizationH2;
}

@end

void OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(OrgApacheLuceneSearchSimilaritiesNormalizationH2 *self, jfloat c) {
  OrgApacheLuceneSearchSimilaritiesNormalization_init(self);
  self->c_ = c;
}

OrgApacheLuceneSearchSimilaritiesNormalizationH2 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(jfloat c) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH2, initWithFloat_, c)
}

OrgApacheLuceneSearchSimilaritiesNormalizationH2 *create_OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(jfloat c) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH2, initWithFloat_, c)
}

void OrgApacheLuceneSearchSimilaritiesNormalizationH2_init(OrgApacheLuceneSearchSimilaritiesNormalizationH2 *self) {
  OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(self, 1);
}

OrgApacheLuceneSearchSimilaritiesNormalizationH2 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH2, init)
}

OrgApacheLuceneSearchSimilaritiesNormalizationH2 *create_OrgApacheLuceneSearchSimilaritiesNormalizationH2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH2, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesNormalizationH2)
