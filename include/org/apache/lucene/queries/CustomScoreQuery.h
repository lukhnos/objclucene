//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/CustomScoreQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL")
#if OrgApacheLuceneQueriesCustomScoreQuery_RESTRICT
#define OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesCustomScoreQuery_RESTRICT

#if !defined (_OrgApacheLuceneQueriesCustomScoreQuery_) && (OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL || OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE)
#define _OrgApacheLuceneQueriesCustomScoreQuery_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesCustomScoreProvider;
@class OrgApacheLuceneQueriesFunctionFunctionQuery;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneQueriesCustomScoreQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery;

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
   withOrgApacheLuceneQueriesFunctionFunctionQuery:(OrgApacheLuceneQueriesFunctionFunctionQuery *)scoringQuery;

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
withOrgApacheLuceneQueriesFunctionFunctionQueryArray:(IOSObjectArray *)scoringQueries;

- (OrgApacheLuceneQueriesCustomScoreQuery *)clone;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (IOSObjectArray *)getScoringQueries;

- (OrgApacheLuceneSearchQuery *)getSubQuery;

- (NSUInteger)hash;

- (jboolean)isStrict;

- (NSString *)name;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (void)setStrictWithBoolean:(jboolean)strict;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneQueriesCustomScoreProvider *)getCustomScoreProviderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesCustomScoreQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *subQuery) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQuery_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionFunctionQuery *scoringQuery);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQuery_(OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionFunctionQuery *scoringQuery) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQueryArray_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery, IOSObjectArray *scoringQueries);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQueryArray_(OrgApacheLuceneSearchQuery *subQuery, IOSObjectArray *scoringQueries) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesCustomScoreQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL")
