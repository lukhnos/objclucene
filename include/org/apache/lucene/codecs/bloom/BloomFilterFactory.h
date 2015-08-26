//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/bloom/BloomFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneCodecsBloomBloomFilterFactory_RESTRICT
#define OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsBloomBloomFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneCodecsBloomBloomFilterFactory_) && (OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE_ALL || OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE)
#define _OrgApacheLuceneCodecsBloomBloomFilterFactory_

@class OrgApacheLuceneCodecsBloomFuzzySet;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneCodecsBloomBloomFilterFactory : NSObject

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneCodecsBloomFuzzySet *)downsizeWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                           withOrgApacheLuceneCodecsBloomFuzzySet:(OrgApacheLuceneCodecsBloomFuzzySet *)initialSet;

- (OrgApacheLuceneCodecsBloomFuzzySet *)getSetForFieldWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                              withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info;

- (jboolean)isSaturatedWithOrgApacheLuceneCodecsBloomFuzzySet:(OrgApacheLuceneCodecsBloomFuzzySet *)bloomFilter
                            withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBloomBloomFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBloomBloomFilterFactory_init(OrgApacheLuceneCodecsBloomBloomFilterFactory *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBloomBloomFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE_ALL")
