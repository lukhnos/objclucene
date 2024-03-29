//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/QueryCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchQueryCache")
#ifdef RESTRICT_OrgApacheLuceneSearchQueryCache
#define INCLUDE_ALL_OrgApacheLuceneSearchQueryCache 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchQueryCache 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchQueryCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchQueryCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchQueryCache || defined(INCLUDE_OrgApacheLuceneSearchQueryCache))
#define OrgApacheLuceneSearchQueryCache_

@class OrgApacheLuceneSearchWeight;
@protocol OrgApacheLuceneSearchQueryCachingPolicy;

/*!
 @brief A cache for queries.
 - seealso: LRUQueryCache
 */
@protocol OrgApacheLuceneSearchQueryCache < JavaObject >

/*!
 @brief Return a wrapper around the provided <code>weight</code> that will cache
  matching docs per-segment accordingly to the given <code>policy</code>.
 NOTE: The returned weight will only be equivalent if scores are not needed.
 - seealso: Collector#needsScores()
 */
- (OrgApacheLuceneSearchWeight *)doCacheWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                            withOrgApacheLuceneSearchQueryCachingPolicy:(id<OrgApacheLuceneSearchQueryCachingPolicy>)policy;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryCache)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchQueryCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchQueryCache")
