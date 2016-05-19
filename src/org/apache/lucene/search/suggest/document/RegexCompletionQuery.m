//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/RegexCompletionQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/suggest/BitsProducer.h"
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"
#include "org/apache/lucene/search/suggest/document/CompletionWeight.h"
#include "org/apache/lucene/search/suggest/document/RegexCompletionQuery.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/RegExp.h"

@interface OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery () {
 @public
  jint flags_;
  jint maxDeterminizedStates_;
}

@end

@implementation OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
    withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, filter);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
                                         withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(self, term, flags, maxDeterminizedStates);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
                                         withInt:(jint)maxDeterminizedStates
    withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, flags, maxDeterminizedStates, filter);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchSuggestDocumentCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_(self, [create_OrgApacheLuceneUtilAutomatonRegExp_initWithNSString_withInt_([((OrgApacheLuceneIndexTerm *) nil_chk([self getTerm])) text], flags_) toAutomatonWithInt:maxDeterminizedStates_]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerm:", "RegexCompletionQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSuggestBitsProducer:", "RegexCompletionQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withInt:withInt:", "RegexCompletionQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withInt:withInt:withOrgApacheLuceneSearchSuggestBitsProducer:", "RegexCompletionQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "flags_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDeterminizedStates_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery = { 2, "RegexCompletionQuery", "org.apache.lucene.search.suggest.document", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery;
}

@end

void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, nil);
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, OrgApacheLuceneUtilAutomatonRegExp_ALL, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES, filter);
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_, term, filter)
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_, term, filter)
}

void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, flags, maxDeterminizedStates, nil);
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_, term, flags, maxDeterminizedStates)
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_, term, flags, maxDeterminizedStates)
}

void OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  OrgApacheLuceneSearchSuggestDocumentCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, filter);
  self->flags_ = flags;
  self->maxDeterminizedStates_ = maxDeterminizedStates;
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_, term, flags, maxDeterminizedStates, filter)
}

OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_withOrgApacheLuceneSearchSuggestBitsProducer_, term, flags, maxDeterminizedStates, filter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentRegexCompletionQuery)
