//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/CachingWrapperFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE_ALL")
#if OrgApacheLuceneSearchCachingWrapperFilter_RESTRICT
#define OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchCachingWrapperFilter_RESTRICT

#if !defined (_OrgApacheLuceneSearchCachingWrapperFilter_) && (OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE_ALL || OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE)
#define _OrgApacheLuceneSearchCachingWrapperFilter_

#define OrgApacheLuceneSearchFilter_RESTRICT 1
#define OrgApacheLuceneSearchFilter_INCLUDE 1
#include "org/apache/lucene/search/Filter.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@class OrgApacheLuceneSearchDocIdSetIterator;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneSearchFilterCachingPolicy;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchCachingWrapperFilter : OrgApacheLuceneSearchFilter < OrgApacheLuceneUtilAccountable > {
 @public
  jint hitCount_, missCount_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
       withOrgApacheLuceneSearchFilterCachingPolicy:(id<OrgApacheLuceneSearchFilterCachingPolicy>)policy;

- (jboolean)isEqual:(id)o;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (OrgApacheLuceneSearchFilter *)getFilter;

- (NSUInteger)hash;

- (jlong)ramBytesUsed;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchDocIdSet *)cacheImplWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                                   withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

- (OrgApacheLuceneSearchDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                 withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingWrapperFilter)

#endif

#pragma pop_macro("OrgApacheLuceneSearchCachingWrapperFilter_INCLUDE_ALL")
