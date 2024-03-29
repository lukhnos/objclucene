//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/RewriteQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundQueryRewriteQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery))
#define OrgApacheLuceneQueryparserSurroundQueryRewriteQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneQueryparserSurroundQuerySrndQuery;

@interface OrgApacheLuceneQueryparserSurroundQueryRewriteQuery : OrgApacheLuceneSearchQuery {
 @public
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery *srndQuery_;
  NSString *fieldName_;
  OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)srndQuery
                                                                                    withNSString:(NSString *)fieldName
                                    withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery, srndQuery_, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery, fieldName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery, qf_, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryRewriteQuery_initPackagePrivateWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery *self, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery")
