//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/DistanceRewriteQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery))
#define OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 1
#include "org/apache/lucene/queryparser/surround/query/RewriteQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneQueryparserSurroundQueryDistanceQuery;
@class OrgApacheLuceneQueryparserSurroundQuerySrndQuery;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery : OrgApacheLuceneQueryparserSurroundQueryRewriteQuery

#pragma mark Public

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery:(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *)srndQuery
                                                                                        withNSString:(NSString *)fieldName
                                        withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)arg0
                                                                                    withNSString:(NSString *)arg1
                                    withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *self, OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *new_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *create_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery")
