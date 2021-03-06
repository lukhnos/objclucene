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

#if !defined (OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery))
#define OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 1
#include "org/apache/lucene/queryparser/surround/query/RewriteQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneQueryparserSurroundQueryDistanceQuery;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery : OrgApacheLuceneQueryparserSurroundQueryRewriteQuery

#pragma mark Public

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery:(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *)srndQuery
                                                                withNSString:(NSString *)fieldName
                withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *self, OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *new_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery *create_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery")
