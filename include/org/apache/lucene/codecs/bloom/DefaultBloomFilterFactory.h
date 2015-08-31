//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/bloom/DefaultBloomFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_RESTRICT
#define OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_) && (OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE_ALL || OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE)
#define _OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_

#define OrgApacheLuceneCodecsBloomBloomFilterFactory_RESTRICT 1
#define OrgApacheLuceneCodecsBloomBloomFilterFactory_INCLUDE 1
#include "org/apache/lucene/codecs/bloom/BloomFilterFactory.h"

@class OrgApacheLuceneCodecsBloomFuzzySet;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory : OrgApacheLuceneCodecsBloomBloomFilterFactory

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneCodecsBloomFuzzySet *)getSetForFieldWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                              withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info;

- (jboolean)isSaturatedWithOrgApacheLuceneCodecsBloomFuzzySet:(OrgApacheLuceneCodecsBloomFuzzySet *)bloomFilter
                            withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init(OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory *new_OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsBloomDefaultBloomFilterFactory_INCLUDE_ALL")