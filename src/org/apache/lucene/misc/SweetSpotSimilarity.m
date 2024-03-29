//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/SweetSpotSimilarity.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/misc/SweetSpotSimilarity.h"
#include "org/apache/lucene/search/similarities/DefaultSimilarity.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/misc/SweetSpotSimilarity must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneMiscSweetSpotSimilarity () {
 @public
  jint ln_min_;
  jint ln_max_;
  jfloat ln_steep_;
  jfloat tf_base_;
  jfloat tf_min_;
  jfloat tf_hyper_min_;
  jfloat tf_hyper_max_;
  jdouble tf_hyper_base_;
  jfloat tf_hyper_xoffset_;
}

@end

@implementation OrgApacheLuceneMiscSweetSpotSimilarity

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneMiscSweetSpotSimilarity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setBaselineTfFactorsWithFloat:(jfloat)base
                            withFloat:(jfloat)min {
  tf_min_ = min;
  tf_base_ = base;
}

- (void)setHyperbolicTfFactorsWithFloat:(jfloat)min
                              withFloat:(jfloat)max
                             withDouble:(jdouble)base
                              withFloat:(jfloat)xoffset {
  tf_hyper_min_ = min;
  tf_hyper_max_ = max;
  tf_hyper_base_ = base;
  tf_hyper_xoffset_ = xoffset;
}

- (void)setLengthNormFactorsWithInt:(jint)min
                            withInt:(jint)max
                          withFloat:(jfloat)steepness
                        withBoolean:(jboolean)discountOverlaps {
  self->ln_min_ = min;
  self->ln_max_ = max;
  self->ln_steep_ = steepness;
  self->discountOverlaps_ = discountOverlaps;
}

- (jfloat)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  jint numTokens;
  if (discountOverlaps_) numTokens = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength] - [state getNumOverlap];
  else numTokens = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength];
  return [state getBoost] * [self computeLengthNormWithInt:numTokens];
}

- (jfloat)computeLengthNormWithInt:(jint)numTerms {
  jint l = ln_min_;
  jint h = ln_max_;
  jfloat s = ln_steep_;
  return (jfloat) (1.0f / JavaLangMath_sqrtWithDouble_((s * (jfloat) (JavaLangMath_absWithInt_(numTerms - l) + JavaLangMath_absWithInt_(numTerms - h) - (h - l))) + 1.0f));
}

- (jfloat)tfWithFloat:(jfloat)freq {
  return [self baselineTfWithFloat:freq];
}

- (jfloat)baselineTfWithFloat:(jfloat)freq {
  if (0.0f == freq) return 0.0f;
  return (freq <= tf_min_) ? tf_base_ : (jfloat) JavaLangMath_sqrtWithDouble_(freq + (tf_base_ * tf_base_) - tf_min_);
}

- (jfloat)hyperbolicTfWithFloat:(jfloat)freq {
  if (0.0f == freq) return 0.0f;
  jfloat min = tf_hyper_min_;
  jfloat max = tf_hyper_max_;
  jdouble base = tf_hyper_base_;
  jfloat xoffset = tf_hyper_xoffset_;
  jdouble x = (jdouble) (freq - xoffset);
  jfloat result = min + (jfloat) ((max - min) / 2.0f * (((JavaLangMath_powWithDouble_withDouble_(base, x) - JavaLangMath_powWithDouble_withDouble_(base, -x)) / (JavaLangMath_powWithDouble_withDouble_(base, x) + JavaLangMath_powWithDouble_withDouble_(base, -x))) + 1.0));
  return JavaLangFloat_isNaNWithFloat_(result) ? max : result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 12, 11, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 13, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setBaselineTfFactorsWithFloat:withFloat:);
  methods[2].selector = @selector(setHyperbolicTfFactorsWithFloat:withFloat:withDouble:withFloat:);
  methods[3].selector = @selector(setLengthNormFactorsWithInt:withInt:withFloat:withBoolean:);
  methods[4].selector = @selector(lengthNormWithOrgApacheLuceneIndexFieldInvertState:);
  methods[5].selector = @selector(computeLengthNormWithInt:);
  methods[6].selector = @selector(tfWithFloat:);
  methods[7].selector = @selector(baselineTfWithFloat:);
  methods[8].selector = @selector(hyperbolicTfWithFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ln_min_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ln_max_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ln_steep_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_base_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_min_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_hyper_min_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_hyper_max_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_hyper_base_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tf_hyper_xoffset_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setBaselineTfFactors", "FF", "setHyperbolicTfFactors", "FFDF", "setLengthNormFactors", "IIFZ", "lengthNorm", "LOrgApacheLuceneIndexFieldInvertState;", "computeLengthNorm", "I", "tf", "F", "baselineTf", "hyperbolicTf" };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscSweetSpotSimilarity = { "SweetSpotSimilarity", "org.apache.lucene.misc", ptrTable, methods, fields, 7, 0x1, 9, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneMiscSweetSpotSimilarity;
}

@end

void OrgApacheLuceneMiscSweetSpotSimilarity_init(OrgApacheLuceneMiscSweetSpotSimilarity *self) {
  OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(self);
  self->ln_min_ = 1;
  self->ln_max_ = 1;
  self->ln_steep_ = 0.5f;
  self->tf_base_ = 0.0f;
  self->tf_min_ = 0.0f;
  self->tf_hyper_min_ = 0.0f;
  self->tf_hyper_max_ = 2.0f;
  self->tf_hyper_base_ = 1.3;
  self->tf_hyper_xoffset_ = 10.0f;
}

OrgApacheLuceneMiscSweetSpotSimilarity *new_OrgApacheLuceneMiscSweetSpotSimilarity_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscSweetSpotSimilarity, init)
}

OrgApacheLuceneMiscSweetSpotSimilarity *create_OrgApacheLuceneMiscSweetSpotSimilarity_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscSweetSpotSimilarity, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscSweetSpotSimilarity)
