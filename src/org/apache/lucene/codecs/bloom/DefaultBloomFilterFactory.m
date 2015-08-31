//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/bloom/DefaultBloomFilterFactory.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/bloom/BloomFilterFactory.h"
#include "org/apache/lucene/codecs/bloom/DefaultBloomFilterFactory.h"
#include "org/apache/lucene/codecs/bloom/FuzzySet.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"

@implementation OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory

- (OrgApacheLuceneCodecsBloomFuzzySet *)getSetForFieldWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                              withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info {
  return OrgApacheLuceneCodecsBloomFuzzySet_createSetBasedOnQualityWithInt_withFloat_([((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) maxDoc], 0.10f);
}

- (jboolean)isSaturatedWithOrgApacheLuceneCodecsBloomFuzzySet:(OrgApacheLuceneCodecsBloomFuzzySet *)bloomFilter
                            withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return [((OrgApacheLuceneCodecsBloomFuzzySet *) nil_chk(bloomFilter)) getSaturation] > 0.9f;
}

- (instancetype)init {
  OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSetForFieldWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneIndexFieldInfo:", "getSetForField", "Lorg.apache.lucene.codecs.bloom.FuzzySet;", 0x1, NULL, NULL },
    { "isSaturatedWithOrgApacheLuceneCodecsBloomFuzzySet:withOrgApacheLuceneIndexFieldInfo:", "isSaturated", "Z", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory = { 2, "DefaultBloomFilterFactory", "org.apache.lucene.codecs.bloom", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory;
}

@end

void OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init(OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory *self) {
  OrgApacheLuceneCodecsBloomBloomFilterFactory_init(self);
}

OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory *new_OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init() {
  OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory *self = [OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory alloc];
  OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory)