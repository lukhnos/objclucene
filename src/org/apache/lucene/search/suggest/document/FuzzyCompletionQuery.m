//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/FuzzyCompletionQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/suggest/BitsProducer.h"
#include "org/apache/lucene/search/suggest/document/CompletionAnalyzer.h"
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"
#include "org/apache/lucene/search/suggest/document/CompletionTokenStream.h"
#include "org/apache/lucene/search/suggest/document/CompletionWeight.h"
#include "org/apache/lucene/search/suggest/document/FuzzyCompletionQuery.h"
#include "org/apache/lucene/search/suggest/document/PrefixCompletionQuery.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/FiniteStringsIterator.h"
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/UTF32ToUTF8.h"

@interface OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery () {
 @public
  jint maxEdits_;
  jboolean transpositions_;
  jint nonFuzzyPrefix_;
  jint minFuzzyLength_;
  jboolean unicodeAware_;
  jint maxDeterminizedStates_;
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                                                                          withJavaUtilSet:(id<JavaUtilSet>)refs;

@end

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs);

@interface OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight : OrgApacheLuceneSearchSuggestDocumentCompletionWeight {
 @public
  id<JavaUtilSet> refs_;
  jint currentBoost_;
}

- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query
                                  withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                                            withJavaUtilSet:(id<JavaUtilSet>)refs;

- (void)setNextMatchWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)pathPrefix;

- (jfloat)boost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight, refs_, id<JavaUtilSet>)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight *self, OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight)

@implementation OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(self, analyzer, term);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, filter);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter
                                                withInt:(jint)maxEdits
                                            withBoolean:(jboolean)transpositions
                                                withInt:(jint)nonFuzzyPrefix
                                                withInt:(jint)minFuzzyLength
                                            withBoolean:(jboolean)unicodeAware
                                                withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(self, analyzer, term, filter, maxEdits, transpositions, nonFuzzyPrefix, minFuzzyLength, unicodeAware, maxDeterminizedStates);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *stream = (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) check_class_cast([((OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *) nil_chk(analyzer_)) tokenStreamWithNSString:[self getField] withNSString:[((OrgApacheLuceneIndexTerm *) nil_chk([self getTerm])) text]], [OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream class]);
  id<JavaUtilSet> refs = [new_JavaUtilHashSet_init() autorelease];
  OrgApacheLuceneUtilAutomatonAutomaton *automaton = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(self, [((OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) nil_chk(stream)) toAutomatonWithBoolean:unicodeAware_], refs);
  if (unicodeAware_) {
    OrgApacheLuceneUtilAutomatonAutomaton *utf8automaton = [((OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *) [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() autorelease]) convertWithOrgApacheLuceneUtilAutomatonAutomaton:automaton];
    utf8automaton = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(utf8automaton, maxDeterminizedStates_);
    automaton = utf8automaton;
  }
  return [new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(self, automaton, refs) autorelease];
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                                                                          withJavaUtilSet:(id<JavaUtilSet>)refs {
  return OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(self, automaton, refs);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [buffer appendWithNSString:[self getField]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk([self getTerm])) text]];
  [buffer appendWithChar:'*'];
  [buffer appendWithChar:'~'];
  [buffer appendWithNSString:JavaLangInteger_toStringWithInt_(maxEdits_)];
  if ([self getFilter] != nil) {
    [buffer appendWithNSString:@","];
    [buffer appendWithNSString:@"filter"];
    [buffer appendWithNSString:[((OrgApacheLuceneSearchSuggestBitsProducer *) nil_chk([self getFilter])) description]];
  }
  return [buffer description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneIndexTerm:", "FuzzyCompletionQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSuggestBitsProducer:", "FuzzyCompletionQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSuggestBitsProducer:withInt:withBoolean:withInt:withInt:withBoolean:withInt:", "FuzzyCompletionQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:withJavaUtilSet:", "toLevenshteinAutomata", "Lorg.apache.lucene.util.automaton.Automaton;", 0x2, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_UNICODE_AWARE", "DEFAULT_UNICODE_AWARE", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_UNICODE_AWARE },
    { "DEFAULT_MIN_FUZZY_LENGTH", "DEFAULT_MIN_FUZZY_LENGTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MIN_FUZZY_LENGTH },
    { "DEFAULT_NON_FUZZY_PREFIX", "DEFAULT_NON_FUZZY_PREFIX", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_NON_FUZZY_PREFIX },
    { "DEFAULT_MAX_EDITS", "DEFAULT_MAX_EDITS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MAX_EDITS },
    { "DEFAULT_TRANSPOSITIONS", "DEFAULT_TRANSPOSITIONS", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_TRANSPOSITIONS },
    { "maxEdits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "transpositions_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "nonFuzzyPrefix_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minFuzzyLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "unicodeAware_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDeterminizedStates_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.suggest.document.FuzzyCompletionQuery$FuzzyCompletionWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery = { 2, "FuzzyCompletionQuery", "org.apache.lucene.search.suggest.document", NULL, 0x1, 6, methods, 11, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery;
}

@end

void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, nil);
}

OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self = [OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery alloc];
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(self, analyzer, term);
  return self;
}

void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(self, analyzer, term, filter, OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MAX_EDITS, OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_TRANSPOSITIONS, OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_NON_FUZZY_PREFIX, OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MIN_FUZZY_LENGTH, OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_UNICODE_AWARE, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES);
}

OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self = [OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery alloc];
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, filter);
  return self;
}

void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, filter);
  self->maxEdits_ = maxEdits;
  self->transpositions_ = transpositions;
  self->nonFuzzyPrefix_ = nonFuzzyPrefix;
  self->minFuzzyLength_ = minFuzzyLength;
  self->unicodeAware_ = unicodeAware;
  self->maxDeterminizedStates_ = maxDeterminizedStates;
}

OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self = [OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery alloc];
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(self, analyzer, term, filter, maxEdits, transpositions, nonFuzzyPrefix, minFuzzyLength, unicodeAware, maxDeterminizedStates);
  return self;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs) {
  id<JavaUtilList> subs = [new_JavaUtilArrayList_init() autorelease];
  OrgApacheLuceneUtilAutomatonFiniteStringsIterator *finiteStrings = [new_OrgApacheLuceneUtilAutomatonFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton) autorelease];
  for (OrgApacheLuceneUtilIntsRef *string; (string = [finiteStrings next]) != nil; ) {
    [((id<JavaUtilSet>) nil_chk(refs)) addWithId:OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(string)];
    if (((OrgApacheLuceneUtilIntsRef *) nil_chk(string))->length_ <= self->nonFuzzyPrefix_ || string->length_ < self->minFuzzyLength_) {
      [subs addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(string->ints_, string->offset_, string->length_)];
    }
    else {
      IOSIntArray *ints = [IOSIntArray arrayWithLength:string->length_ - self->nonFuzzyPrefix_];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(string->ints_, string->offset_ + self->nonFuzzyPrefix_, ints, 0, ints->size_);
      OrgApacheLuceneUtilAutomatonLevenshteinAutomata *lev = [new_OrgApacheLuceneUtilAutomatonLevenshteinAutomata_initWithIntArray_withInt_withBoolean_(ints, self->unicodeAware_ ? JavaLangCharacter_MAX_CODE_POINT : 255, self->transpositions_) autorelease];
      [subs addWithId:[lev toAutomatonWithInt:self->maxEdits_ withNSString:OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(string->ints_, string->offset_, self->nonFuzzyPrefix_)]];
    }
  }
  if ([subs isEmpty]) {
    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
  else if ([subs size] == 1) {
    return [subs getWithInt:0];
  }
  else {
    OrgApacheLuceneUtilAutomatonAutomaton *a = OrgApacheLuceneUtilAutomatonOperations_union__WithJavaUtilCollection_(subs);
    return OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a, self->maxDeterminizedStates_);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery)

@implementation OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight

- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query
                                  withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                                            withJavaUtilSet:(id<JavaUtilSet>)refs {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(self, query, automaton, refs);
  return self;
}

- (void)setNextMatchWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)pathPrefix {
  jint maxCount = 0;
  for (OrgApacheLuceneUtilIntsRef * __strong ref in nil_chk(refs_)) {
    jint minLength = JavaLangMath_minWithInt_withInt_(((OrgApacheLuceneUtilIntsRef *) nil_chk(ref))->length_, ((OrgApacheLuceneUtilIntsRef *) nil_chk(pathPrefix))->length_);
    jint count = 0;
    for (jint i = 0; i < minLength; i++) {
      if (IOSIntArray_Get(nil_chk(ref->ints_), i + ref->offset_) == IOSIntArray_Get(pathPrefix->ints_, i + pathPrefix->offset_)) {
        count++;
      }
      else {
        break;
      }
    }
    maxCount = JavaLangMath_maxWithInt_withInt_(maxCount, count);
  }
  currentBoost_ = maxCount;
}

- (jfloat)boost {
  return currentBoost_;
}

- (void)dealloc {
  RELEASE_(refs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:withOrgApacheLuceneUtilAutomatonAutomaton:withJavaUtilSet:", "FuzzyCompletionWeight", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "setNextMatchWithOrgApacheLuceneUtilIntsRef:", "setNextMatch", "V", 0x4, NULL, NULL },
    { "boost", NULL, "F", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "refs_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Lorg/apache/lucene/util/IntsRef;>;", .constantValue.asLong = 0 },
    { "currentBoost_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight = { 2, "FuzzyCompletionWeight", "org.apache.lucene.search.suggest.document", "FuzzyCompletionQuery", 0xa, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight;
}

@end

void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight *self, OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs) {
  OrgApacheLuceneSearchSuggestDocumentCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_(self, query, automaton);
  self->currentBoost_ = 0;
  JreStrongAssign(&self->refs_, refs);
}

OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton, id<JavaUtilSet> refs) {
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight *self = [OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight alloc];
  OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(self, query, automaton, refs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_FuzzyCompletionWeight)
