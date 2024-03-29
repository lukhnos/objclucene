//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MatchAllDocsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchMatchAllDocsQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchMatchAllDocsQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchMatchAllDocsQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery || defined(INCLUDE_OrgApacheLuceneSearchMatchAllDocsQuery))
#define OrgApacheLuceneSearchMatchAllDocsQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief A query that matches all documents.
 */
@interface OrgApacheLuceneSearchMatchAllDocsQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMatchAllDocsQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMatchAllDocsQuery_init(OrgApacheLuceneSearchMatchAllDocsQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *new_OrgApacheLuceneSearchMatchAllDocsQuery_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *create_OrgApacheLuceneSearchMatchAllDocsQuery_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMatchAllDocsQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery")
