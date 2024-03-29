//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/search/suggest/document/CompletionAnalyzer.h"
#include "org/apache/lucene/search/suggest/document/CompletionTokenStream.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/document/CompletionAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  /*!
   @brief Preserve separation between tokens
  when converting to an automaton
 <p>
  Defaults to <code>true</code>
   */
  jboolean preserveSep_;
  /*!
   @brief Preserve position increments for tokens
  when converting to an automaton
 <p>
  Defaults to <code>true</code>
   */
  jboolean preservePositionIncrements_;
  /*!
   @brief Sets the maximum number of graph expansions of a completion automaton
 <p>
  Defaults to <code>-1</code> (no limit)
   */
  jint maxGraphExpansions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer

+ (jint)SEP_LABEL {
  return OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_SEP_LABEL;
}

+ (jint)HOLE_CHARACTER {
  return OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_HOLE_CHARACTER;
}

+ (jint)DEFAULT_MAX_GRAPH_EXPANSIONS {
  return OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_MAX_GRAPH_EXPANSIONS;
}

+ (jboolean)DEFAULT_PRESERVE_SEP {
  return OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_SEP;
}

+ (jboolean)DEFAULT_PRESERVE_POSITION_INCREMENTS {
  return OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_POSITION_INCREMENTS;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                            withBoolean:(jboolean)preserveSep
                                            withBoolean:(jboolean)preservePositionIncrements
                                                withInt:(jint)maxGraphExpansions {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(self, analyzer, preserveSep, preservePositionIncrements, maxGraphExpansions);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                            withBoolean:(jboolean)preserveSep
                                            withBoolean:(jboolean)preservePositionIncrements {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(self, analyzer, preserveSep, preservePositionIncrements);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withInt:(jint)maxGraphExpansions {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(self, analyzer, maxGraphExpansions);
  return self;
}

- (jboolean)preserveSep {
  return preserveSep_;
}

- (jboolean)preservePositionIncrements {
  return preservePositionIncrements_;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName {
  return analyzer_;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *tokenStream = create_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withBoolean_withInt_([((OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) nil_chk(components)) getTokenStream], preserveSep_, preservePositionIncrements_, maxGraphExpansions_);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_([components getTokenizer], tokenStream);
}

- (void)dealloc {
  RELEASE_(analyzer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer;", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withBoolean:withBoolean:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:);
  methods[2].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withBoolean:withBoolean:);
  methods[3].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:);
  methods[4].selector = @selector(preserveSep);
  methods[5].selector = @selector(preservePositionIncrements);
  methods[6].selector = @selector(getWrappedAnalyzerWithNSString:);
  methods[7].selector = @selector(wrapComponentsWithNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SEP_LABEL", "I", .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_SEP_LABEL, 0x18, -1, -1, -1, -1 },
    { "HOLE_CHARACTER", "I", .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_HOLE_CHARACTER, 0x18, -1, -1, -1, -1 },
    { "DEFAULT_MAX_GRAPH_EXPANSIONS", "I", .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_MAX_GRAPH_EXPANSIONS, 0x18, -1, -1, -1, -1 },
    { "DEFAULT_PRESERVE_SEP", "Z", .constantValue.asBOOL = OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_SEP, 0x18, -1, -1, -1, -1 },
    { "DEFAULT_PRESERVE_POSITION_INCREMENTS", "Z", .constantValue.asBOOL = OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_POSITION_INCREMENTS, 0x18, -1, -1, -1, -1 },
    { "analyzer_", "LOrgApacheLuceneAnalysisAnalyzer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "preserveSep_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "preservePositionIncrements_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxGraphExpansions_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;ZZI", "LOrgApacheLuceneAnalysisAnalyzer;", "LOrgApacheLuceneAnalysisAnalyzer;ZZ", "LOrgApacheLuceneAnalysisAnalyzer;I", "getWrappedAnalyzer", "LNSString;", "wrapComponents", "LNSString;LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer = { "CompletionAnalyzer", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0x11, 8, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions) {
  OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, JreLoadStatic(OrgApacheLuceneAnalysisAnalyzer, PER_FIELD_REUSE_STRATEGY));
  JreStrongAssign(&self->analyzer_, analyzer);
  self->preserveSep_ = preserveSep;
  self->preservePositionIncrements_ = preservePositionIncrements;
  self->maxGraphExpansions_ = maxGraphExpansions;
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_, analyzer, preserveSep, preservePositionIncrements, maxGraphExpansions)
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_, analyzer, preserveSep, preservePositionIncrements, maxGraphExpansions)
}

void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(self, analyzer, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_SEP, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_POSITION_INCREMENTS, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_MAX_GRAPH_EXPANSIONS);
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements) {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(self, analyzer, preserveSep, preservePositionIncrements, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_MAX_GRAPH_EXPANSIONS);
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_, analyzer, preserveSep, preservePositionIncrements)
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_, analyzer, preserveSep, preservePositionIncrements)
}

void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions) {
  OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(self, analyzer, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_SEP, OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_POSITION_INCREMENTS, maxGraphExpansions);
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, analyzer, maxGraphExpansions)
}

OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, analyzer, maxGraphExpansions)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer)
