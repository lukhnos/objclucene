//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DistributionLL.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Distribution.h"
#include "org/apache/lucene/search/similarities/DistributionLL.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/DistributionLL must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSimilaritiesDistributionLL

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesDistributionLL_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn
                                                     withFloat:(jfloat)lambda {
  return (jfloat) -JavaLangMath_logWithDouble_(lambda / (tfn + lambda));
}

- (NSString *)description {
  return @"LL";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "score", "LOrgApacheLuceneSearchSimilaritiesBasicStats;FF", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesDistributionLL = { "DistributionLL", "org.apache.lucene.search.similarities", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesDistributionLL;
}

@end

void OrgApacheLuceneSearchSimilaritiesDistributionLL_init(OrgApacheLuceneSearchSimilaritiesDistributionLL *self) {
  OrgApacheLuceneSearchSimilaritiesDistribution_init(self);
}

OrgApacheLuceneSearchSimilaritiesDistributionLL *new_OrgApacheLuceneSearchSimilaritiesDistributionLL_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesDistributionLL, init)
}

OrgApacheLuceneSearchSimilaritiesDistributionLL *create_OrgApacheLuceneSearchSimilaritiesDistributionLL_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesDistributionLL, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesDistributionLL)
