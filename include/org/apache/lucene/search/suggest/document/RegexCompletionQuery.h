//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/RegexCompletionQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_RESTRICT
#define OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_) && (OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE_ALL || OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE)
#define _OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_

#define OrgApacheLuceneSearchSuggestDocumentCompletionQuery_RESTRICT 1
#define OrgApacheLuceneSearchSuggestDocumentCompletionQuery_INCLUDE 1
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"

@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSuggestBitsProducer;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery : OrgApacheLuceneSearchSuggestDocumentCompletionQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
    withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
                                         withInt:(jint)maxDeterminizedStates;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
                                         withInt:(jint)maxDeterminizedStates
    withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates, OrgApacheLuceneSearchSuggestBitsProducer *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates, OrgApacheLuceneSearchSuggestBitsProducer *filter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_INCLUDE_ALL")
