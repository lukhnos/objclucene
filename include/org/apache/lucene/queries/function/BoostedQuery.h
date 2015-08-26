//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/BoostedQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionBoostedQuery_RESTRICT
#define OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionBoostedQuery_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionBoostedQuery_) && (OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionBoostedQuery_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneQueriesFunctionBoostedQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)boostVal;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchQuery *)getQuery;

- (OrgApacheLuceneQueriesFunctionValueSource *)getValueSource;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionBoostedQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery *self, OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionValueSource *boostVal);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionBoostedQuery *new_OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionValueSource *boostVal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionBoostedQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionBoostedQuery_INCLUDE_ALL")
