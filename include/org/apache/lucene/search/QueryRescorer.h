//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/QueryRescorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchQueryRescorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchQueryRescorer_RESTRICT
#define OrgApacheLuceneSearchQueryRescorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchQueryRescorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchQueryRescorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchQueryRescorer_) && (OrgApacheLuceneSearchQueryRescorer_INCLUDE_ALL || OrgApacheLuceneSearchQueryRescorer_INCLUDE)
#define _OrgApacheLuceneSearchQueryRescorer_

#define OrgApacheLuceneSearchRescorer_RESTRICT 1
#define OrgApacheLuceneSearchRescorer_INCLUDE 1
#include "org/apache/lucene/search/Rescorer.h"

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchTopDocs;

@interface OrgApacheLuceneSearchQueryRescorer : OrgApacheLuceneSearchRescorer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                               withOrgApacheLuceneSearchExplanation:(OrgApacheLuceneSearchExplanation *)firstPassExplanation
                                                                            withInt:(jint)docID;

- (OrgApacheLuceneSearchTopDocs *)rescoreWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                               withOrgApacheLuceneSearchTopDocs:(OrgApacheLuceneSearchTopDocs *)firstPassTopDocs
                                                                        withInt:(jint)topN;

+ (OrgApacheLuceneSearchTopDocs *)rescoreWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                               withOrgApacheLuceneSearchTopDocs:(OrgApacheLuceneSearchTopDocs *)topDocs
                                                 withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                     withDouble:(jdouble)weight
                                                                        withInt:(jint)topN;

#pragma mark Protected

- (jfloat)combineWithFloat:(jfloat)firstPassScore
               withBoolean:(jboolean)secondPassMatches
                 withFloat:(jfloat)secondPassScore;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryRescorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchQueryRescorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQueryRescorer *self, OrgApacheLuceneSearchQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchTopDocs *OrgApacheLuceneSearchQueryRescorer_rescoreWithOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchTopDocs_withOrgApacheLuceneSearchQuery_withDouble_withInt_(OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchTopDocs *topDocs, OrgApacheLuceneSearchQuery *query, jdouble weight, jint topN);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchQueryRescorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchQueryRescorer_INCLUDE_ALL")
