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

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesCustomScoreProvider;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneQueriesCustomScoreQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneQueriesCustomScoreQuery *)clone;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchQuery *)getSubQuery;

- (NSUInteger)hash;

- (NSString *)name;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneQueriesCustomScoreProvider *)getCustomScoreProviderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesCustomScoreQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_init(OrgApacheLuceneQueriesCustomScoreQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesCustomScoreQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesCustomScoreQuery_INCLUDE_ALL")
