//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/NormalizationH3.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Normalization.h"
#include "org/apache/lucene/search/similarities/NormalizationH3.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/NormalizationH3 must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSimilaritiesNormalizationH3 () {
 @public
  jfloat mu_;
}

@end

@implementation OrgApacheLuceneSearchSimilaritiesNormalizationH3

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesNormalizationH3_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithFloat:(jfloat)mu {
  OrgApacheLuceneSearchSimilaritiesNormalizationH3_initWithFloat_(self, mu);
  return self;
}

- (jfloat)tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                   withFloat:(jfloat)tf
                                                   withFloat:(jfloat)len {
  return (tf + mu_ * (([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalTermFreq] + 1.0f) / ([stats getNumberOfFieldTokens] + 1.0f))) / (len + mu_) * mu_;
}

- (NSString *)description {
  return JreStrcat("$FC", @"3(", mu_, ')');
}

- (jfloat)getMu {
  return mu_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithFloat:);
  methods[2].selector = @selector(tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(getMu);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mu_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "F", "tfn", "LOrgApacheLuceneSearchSimilaritiesBasicStats;FF", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesNormalizationH3 = { "NormalizationH3", "org.apache.lucene.search.similarities", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesNormalizationH3;
}

@end

void OrgApacheLuceneSearchSimilaritiesNormalizationH3_init(OrgApacheLuceneSearchSimilaritiesNormalizationH3 *self) {
  OrgApacheLuceneSearchSimilaritiesNormalizationH3_initWithFloat_(self, 800.0f);
}

OrgApacheLuceneSearchSimilaritiesNormalizationH3 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH3_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH3, init)
}

OrgApacheLuceneSearchSimilaritiesNormalizationH3 *create_OrgApacheLuceneSearchSimilaritiesNormalizationH3_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH3, init)
}

void OrgApacheLuceneSearchSimilaritiesNormalizationH3_initWithFloat_(OrgApacheLuceneSearchSimilaritiesNormalizationH3 *self, jfloat mu) {
  OrgApacheLuceneSearchSimilaritiesNormalization_init(self);
  self->mu_ = mu;
}

OrgApacheLuceneSearchSimilaritiesNormalizationH3 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH3_initWithFloat_(jfloat mu) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH3, initWithFloat_, mu)
}

OrgApacheLuceneSearchSimilaritiesNormalizationH3 *create_OrgApacheLuceneSearchSimilaritiesNormalizationH3_initWithFloat_(jfloat mu) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesNormalizationH3, initWithFloat_, mu)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesNormalizationH3)
