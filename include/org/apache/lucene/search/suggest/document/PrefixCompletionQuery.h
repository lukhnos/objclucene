//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/PrefixCompletionQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_RESTRICT
#define OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_) && (OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE_ALL || OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE)
#define _OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_

#define OrgApacheLuceneSearchSuggestDocumentCompletionQuery_RESTRICT 1
#define OrgApacheLuceneSearchSuggestDocumentCompletionQuery_INCLUDE 1
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSuggestBitsProducer;
@class OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery : OrgApacheLuceneSearchSuggestDocumentCompletionQuery {
 @public
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *analyzer_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery, analyzer_, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_INCLUDE_ALL")