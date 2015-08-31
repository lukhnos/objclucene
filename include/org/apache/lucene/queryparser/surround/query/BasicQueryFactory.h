//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/BasicQueryFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_RESTRICT
#define OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_) && (OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_

@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchSpansSpanTermQuery;
@class OrgApacheLuceneSearchTermQuery;

@interface OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)maxBasicQueries;

- (jboolean)isEqual:(id)obj;

- (jint)getMaxBasicQueries;

- (jint)getNrQueriesMade;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchSpansSpanTermQuery *)newSpanTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchTermQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

#pragma mark Protected

- (void)checkMax;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self, jint maxBasicQueries);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *new_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(jint maxBasicQueries) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *new_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_INCLUDE_ALL")