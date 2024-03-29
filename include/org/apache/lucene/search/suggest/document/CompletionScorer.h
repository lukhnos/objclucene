//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionScorer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionScorer || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionScorer))
#define OrgApacheLuceneSearchSuggestDocumentCompletionScorer_

#define RESTRICT_OrgApacheLuceneSearchBulkScorer 1
#define INCLUDE_OrgApacheLuceneSearchBulkScorer 1
#include "org/apache/lucene/search/BulkScorer.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneSearchSuggestDocumentCompletionWeight;
@class OrgApacheLuceneSearchSuggestDocumentNRTSuggester;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@protocol OrgApacheLuceneSearchLeafCollector;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Expert: Responsible for executing the query against an
  appropriate suggester and collecting the results
  via a collector.
 <code>score(LeafCollector, Bits, int, int)</code> is called
  for each leaf reader. 
 <code>accept(int,Bits)</code> and <code>score(float, float)</code>
  is called for every matched completion (i.e. document)
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionScorer : OrgApacheLuceneSearchBulkScorer {
 @public
  /*!
   @brief weight that created this scorer
   */
  OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight_;
  OrgApacheLuceneIndexLeafReader *reader_;
  jboolean filtered_;
  OrgApacheLuceneUtilAutomatonAutomaton *automaton_;
}

#pragma mark Public

/*!
 @brief Returns true if a document with <code>docID</code> is accepted,
  false if the docID maps to a deleted
  document or has been filtered out
 @param liveDocs the <code>Bits</code>  representing live docs, or possibly
                   <code>null</code>  if all docs are live
 */
- (jboolean)acceptWithInt:(jint)docID
withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs;

- (jlong)cost;

/*!
 @brief Returns the score for a matched completion
  based on the query time boost and the
  index time weight.
 */
- (jfloat)scoreWithFloat:(jfloat)weight
               withFloat:(jfloat)boost;

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max;

#pragma mark Protected

/*!
 @brief Creates a scorer for a field-specific <code>suggester</code> scoped by <code>acceptDocs</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight:(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *)weight
                                  withOrgApacheLuceneSearchSuggestDocumentNRTSuggester:(OrgApacheLuceneSearchSuggestDocumentNRTSuggester *)suggester
                                                    withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)filterDocs
                                                                           withBoolean:(jboolean)filtered
                                             withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, weight_, OrgApacheLuceneSearchSuggestDocumentCompletionWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, reader_, OrgApacheLuceneIndexLeafReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, automaton_, OrgApacheLuceneUtilAutomatonAutomaton *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionScorer_initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight_withOrgApacheLuceneSearchSuggestDocumentNRTSuggester_withOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withBoolean_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionScorer *self, OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> filterDocs, jboolean filtered, OrgApacheLuceneUtilAutomatonAutomaton *automaton);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionScorer *new_OrgApacheLuceneSearchSuggestDocumentCompletionScorer_initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight_withOrgApacheLuceneSearchSuggestDocumentNRTSuggester_withOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withBoolean_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> filterDocs, jboolean filtered, OrgApacheLuceneUtilAutomatonAutomaton *automaton) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionScorer *create_OrgApacheLuceneSearchSuggestDocumentCompletionScorer_initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight_withOrgApacheLuceneSearchSuggestDocumentNRTSuggester_withOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withBoolean_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> filterDocs, jboolean filtered, OrgApacheLuceneUtilAutomatonAutomaton *automaton);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionScorer")
