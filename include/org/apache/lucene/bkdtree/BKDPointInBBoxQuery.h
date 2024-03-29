//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/BKDPointInBBoxQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneBkdtreeBKDPointInBBoxQuery_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery || defined(INCLUDE_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery))
#define OrgApacheLuceneBkdtreeBKDPointInBBoxQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief Finds all previously indexed points that fall within the specified boundings box.
 <p>The field must be indexed with <code>BKDTreeDocValuesFormat</code>, and <code>BKDPointField</code> added per document.
   <p><b>NOTE</b>: for fastest performance, this allocates FixedBitSet(maxDoc) for each segment.  The score of each hit is the query boost.
 */
@interface OrgApacheLuceneBkdtreeBKDPointInBBoxQuery : OrgApacheLuceneSearchQuery {
 @public
  NSString *field_;
  jdouble minLat_;
  jdouble maxLat_;
  jdouble minLon_;
  jdouble maxLon_;
}

#pragma mark Public

/*!
 @brief Matches all points &gt;= minLon, minLat (inclusive) and &lt; maxLon, maxLat (exclusive).
 */
- (instancetype __nonnull)initWithNSString:(NSString *)field
                                withDouble:(jdouble)minLat
                                withDouble:(jdouble)maxLat
                                withDouble:(jdouble)minLon
                                withDouble:(jdouble)maxLon;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeBKDPointInBBoxQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDPointInBBoxQuery, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeBKDPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneBkdtreeBKDPointInBBoxQuery *self, NSString *field, jdouble minLat, jdouble maxLat, jdouble minLon, jdouble maxLon);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDPointInBBoxQuery *new_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(NSString *field, jdouble minLat, jdouble maxLat, jdouble minLon, jdouble maxLon) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDPointInBBoxQuery *create_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(NSString *field, jdouble minLat, jdouble maxLat, jdouble minLon, jdouble maxLon);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDPointInBBoxQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDPointInBBoxQuery")
