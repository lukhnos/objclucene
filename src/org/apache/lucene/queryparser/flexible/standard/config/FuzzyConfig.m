//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.h"
#include "org/apache/lucene/search/FuzzyQuery.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig () {
 @public
  jint prefixLength_;
  jfloat minSimilarity_;
}

@end

@implementation OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getPrefixLength {
  return prefixLength_;
}

- (void)setPrefixLengthWithInt:(jint)prefixLength {
  self->prefixLength_ = prefixLength;
}

- (jfloat)getMinSimilarity {
  return minSimilarity_;
}

- (void)setMinSimilarityWithFloat:(jfloat)minSimilarity {
  self->minSimilarity_ = minSimilarity;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FuzzyConfig", NULL, 0x1, NULL, NULL },
    { "getPrefixLength", NULL, "I", 0x1, NULL, NULL },
    { "setPrefixLengthWithInt:", "setPrefixLength", "V", 0x1, NULL, NULL },
    { "getMinSimilarity", NULL, "F", 0x1, NULL, NULL },
    { "setMinSimilarityWithFloat:", "setMinSimilarity", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "prefixLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minSimilarity_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig = { 2, "FuzzyConfig", "org.apache.lucene.queryparser.flexible.standard.config", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *self) {
  NSObject_init(self);
  self->prefixLength_ = OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength;
  self->minSimilarity_ = OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity;
}

OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *new_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig, init)
}

OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *create_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig)
