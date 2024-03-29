//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermContext.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/CollectionStatistics.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/TermScorer.h"
#include "org/apache/lucene/search/TermStatistics.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/TermQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchTermQuery () {
 @public
  OrgApacheLuceneIndexTerm *term_;
  OrgApacheLuceneIndexTermContext *perReaderTermState_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermQuery, term_, OrgApacheLuceneIndexTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermQuery, perReaderTermState_, OrgApacheLuceneIndexTermContext *)

@interface OrgApacheLuceneSearchTermQuery_TermWeight () {
 @public
  OrgApacheLuceneSearchTermQuery *this$0_;
  OrgApacheLuceneSearchSimilaritiesSimilarity *similarity_;
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *stats_;
  OrgApacheLuceneIndexTermContext *termStates_;
  jboolean needsScores_;
}

/*!
 @brief Returns a <code>TermsEnum</code> positioned at this weights Term or null if
  the term does not exist in the given context
 */
- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                 withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermQuery_TermWeight, similarity_, OrgApacheLuceneSearchSimilaritiesSimilarity *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermQuery_TermWeight, stats_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermQuery_TermWeight, termStates_, OrgApacheLuceneIndexTermContext *)

__attribute__((unused)) static OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneSearchTermQuery_TermWeight_getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchTermQuery_TermWeight *self, OrgApacheLuceneIndexLeafReaderContext *context);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchTermQuery_TermWeight_termNotInReaderWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchTermQuery_TermWeight *self, OrgApacheLuceneIndexLeafReader *reader, OrgApacheLuceneIndexTerm *term);

@implementation OrgApacheLuceneSearchTermQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t {
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(self, t);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
             withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)states {
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(self, t, states);
  return self;
}

- (OrgApacheLuceneIndexTerm *)getTerm {
  return term_;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneIndexIndexReaderContext *context = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getTopReaderContext];
  OrgApacheLuceneIndexTermContext *termState;
  if (perReaderTermState_ == nil || !JreObjectEqualsEquals(perReaderTermState_->topReaderContext_, context)) {
    termState = OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(context, term_);
  }
  else {
    termState = self->perReaderTermState_;
  }
  return create_OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(self, searcher, needsScores, termState);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  if (![((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) field])) isEqual:field]) {
    [buffer appendWithNSString:[term_ field]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[term_ text]];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchTermQuery class]])) return false;
  OrgApacheLuceneSearchTermQuery *other = (OrgApacheLuceneSearchTermQuery *) cast_chk(o, [OrgApacheLuceneSearchTermQuery class]);
  return [super isEqual:o] && [((OrgApacheLuceneIndexTerm *) nil_chk(self->term_)) isEqual:((OrgApacheLuceneSearchTermQuery *) nil_chk(other))->term_];
}

- (NSUInteger)hash {
  return ((jint) [super hash]) ^ ((jint) [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) hash]);
}

- (void)dealloc {
  RELEASE_(term_);
  RELEASE_(perReaderTermState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneIndexTermContext:);
  methods[2].selector = @selector(getTerm);
  methods[3].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "term_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "perReaderTermState_", "LOrgApacheLuceneIndexTermContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneIndexTerm;LOrgApacheLuceneIndexTermContext;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "LOrgApacheLuceneSearchTermQuery_TermWeight;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermQuery = { "TermQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, 10, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTermQuery;
}

@end

void OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchTermQuery *self, OrgApacheLuceneIndexTerm *t) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->term_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(t));
  JreStrongAssign(&self->perReaderTermState_, nil);
}

OrgApacheLuceneSearchTermQuery *new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *t) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermQuery, initWithOrgApacheLuceneIndexTerm_, t)
}

OrgApacheLuceneSearchTermQuery *create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *t) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermQuery, initWithOrgApacheLuceneIndexTerm_, t)
}

void OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneSearchTermQuery *self, OrgApacheLuceneIndexTerm *t, OrgApacheLuceneIndexTermContext *states) {
  OrgApacheLuceneSearchQuery_init(self);
  JreAssert(states != nil, @"org/apache/lucene/search/TermQuery.java:168 condition failed: assert states != null;");
  JreStrongAssign(&self->term_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(t));
  if ([((OrgApacheLuceneIndexTermContext *) nil_chk(states)) hasOnlyRealTerms] == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Term queries must be created on real terms");
  }
  JreStrongAssign(&self->perReaderTermState_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(states));
}

OrgApacheLuceneSearchTermQuery *new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneIndexTerm *t, OrgApacheLuceneIndexTermContext *states) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_, t, states)
}

OrgApacheLuceneSearchTermQuery *create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneIndexTerm *t, OrgApacheLuceneIndexTermContext *states) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_, t, states)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermQuery)

@implementation OrgApacheLuceneSearchTermQuery_TermWeight

- (instancetype)initWithOrgApacheLuceneSearchTermQuery:(OrgApacheLuceneSearchTermQuery *)outer$
                withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                           withBoolean:(jboolean)needsScores
                   withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)termStates {
  OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(self, outer$, searcher, needsScores, termStates);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((id<JavaUtilSet>) nil_chk(terms)) addWithId:[this$0_ getTerm]];
}

- (NSString *)description {
  return JreStrcat("$@C", @"weight(", this$0_, ')');
}

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(stats_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(stats_)) normalizeWithFloat:queryNorm withFloat:topLevelBoost];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  JreAssert(JreObjectEqualsEquals(((OrgApacheLuceneIndexTermContext *) nil_chk(termStates_))->topReaderContext_, OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context)), JreStrcat("$@$@", @"The top-reader used to create Weight (", termStates_->topReaderContext_, @") is not the same as the current reader's top-reader (", OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context)));
  OrgApacheLuceneIndexTermsEnum *termsEnum = OrgApacheLuceneSearchTermQuery_TermWeight_getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
  if (termsEnum == nil) {
    return nil;
  }
  OrgApacheLuceneIndexPostingsEnum *docs = JreRetainedLocalValue([termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:nil withInt:needsScores_ ? OrgApacheLuceneIndexPostingsEnum_FREQS : OrgApacheLuceneIndexPostingsEnum_NONE]);
  JreAssert(docs != nil, @"org/apache/lucene/search/TermQuery.java:107 condition failed: assert docs != null;");
  return create_OrgApacheLuceneSearchTermScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, docs, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:stats_ withOrgApacheLuceneIndexLeafReaderContext:context]);
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return OrgApacheLuceneSearchTermQuery_TermWeight_getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
}

- (jboolean)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                 withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  return OrgApacheLuceneSearchTermQuery_TermWeight_termNotInReaderWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneIndexTerm_(self, reader, term);
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchScorer *scorer = JreRetainedLocalValue([self scorerWithOrgApacheLuceneIndexLeafReaderContext:context]);
  if (scorer != nil) {
    jint newDoc = [scorer advanceWithInt:doc];
    if (newDoc == doc) {
      jfloat freq = [scorer freq];
      OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:stats_ withOrgApacheLuceneIndexLeafReaderContext:context]);
      OrgApacheLuceneSearchExplanation *freqExplanation = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(freq, JreStrcat("$F", @"termFreq=", freq), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
      OrgApacheLuceneSearchExplanation *scoreExplanation = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer)) explainWithInt:doc withOrgApacheLuceneSearchExplanation:freqExplanation]);
      return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchExplanation *) nil_chk(scoreExplanation)) getValue], JreStrcat("$@$I$$$", @"weight(", [self getQuery], @" in ", doc, @") [", [[similarity_ java_getClass] getSimpleName], @"], result of:"), [IOSObjectArray arrayWithObjects:(id[]){ scoreExplanation } count:1 type:OrgApacheLuceneSearchExplanation_class_()]);
    }
  }
  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"no matching term", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(similarity_);
  RELEASE_(stats_);
  RELEASE_(termStates_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 8, 9, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsEnum;", 0x2, 10, 9, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, 11, 12, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 13, 14, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchTermQuery:withOrgApacheLuceneSearchIndexSearcher:withBoolean:withOrgApacheLuceneIndexTermContext:);
  methods[1].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(getValueForNormalization);
  methods[4].selector = @selector(normalizeWithFloat:withFloat:);
  methods[5].selector = @selector(scorerWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[6].selector = @selector(getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[7].selector = @selector(termNotInReaderWithOrgApacheLuceneIndexLeafReader:withOrgApacheLuceneIndexTerm:);
  methods[8].selector = @selector(explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchTermQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "similarity_", "LOrgApacheLuceneSearchSimilaritiesSimilarity;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "stats_", "LOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termStates_", "LOrgApacheLuceneIndexTermContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "needsScores_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchTermQuery;LOrgApacheLuceneSearchIndexSearcher;ZLOrgApacheLuceneIndexTermContext;", "LJavaIoIOException;", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "toString", "normalize", "FF", "scorer", "LOrgApacheLuceneIndexLeafReaderContext;", "getTermsEnum", "termNotInReader", "LOrgApacheLuceneIndexLeafReader;LOrgApacheLuceneIndexTerm;", "explain", "LOrgApacheLuceneIndexLeafReaderContext;I", "LOrgApacheLuceneSearchTermQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermQuery_TermWeight = { "TermWeight", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 9, 5, 15, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTermQuery_TermWeight;
}

@end

void OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneSearchTermQuery_TermWeight *self, OrgApacheLuceneSearchTermQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores, OrgApacheLuceneIndexTermContext *termStates) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, outer$);
  self->needsScores_ = needsScores;
  JreAssert(termStates != nil, @"TermContext must not be null");
  JreAssert([((OrgApacheLuceneIndexTermContext *) nil_chk(termStates)) hasOnlyRealTerms], @"org/apache/lucene/search/TermQuery.java:58 condition failed: assert termStates.hasOnlyRealTerms();");
  JreStrongAssign(&self->termStates_, termStates);
  JreStrongAssign(&self->similarity_, [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getSimilarityWithBoolean:needsScores]);
  OrgApacheLuceneSearchCollectionStatistics *collectionStats;
  OrgApacheLuceneSearchTermStatistics *termStats;
  if (needsScores) {
    collectionStats = [searcher collectionStatisticsWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(outer$->term_)) field]];
    termStats = [searcher termStatisticsWithOrgApacheLuceneIndexTerm:outer$->term_ withOrgApacheLuceneIndexTermContext:termStates];
  }
  else {
    jint maxDoc = [((OrgApacheLuceneIndexIndexReader *) nil_chk([searcher getIndexReader])) maxDoc];
    jint docFreq = [termStates docFreq];
    jlong totalTermFreq = [termStates totalTermFreq];
    collectionStats = create_OrgApacheLuceneSearchCollectionStatistics_initWithNSString_withLong_withLong_withLong_withLong_([((OrgApacheLuceneIndexTerm *) nil_chk(outer$->term_)) field], maxDoc, -1, -1, -1);
    termStats = create_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_([outer$->term_ bytes], docFreq, totalTermFreq);
  }
  JreStrongAssign(&self->stats_, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(self->similarity_)) computeWeightWithFloat:[outer$ getBoost] withOrgApacheLuceneSearchCollectionStatistics:collectionStats withOrgApacheLuceneSearchTermStatisticsArray:[IOSObjectArray arrayWithObjects:(id[]){ termStats } count:1 type:OrgApacheLuceneSearchTermStatistics_class_()]]);
}

OrgApacheLuceneSearchTermQuery_TermWeight *new_OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneSearchTermQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores, OrgApacheLuceneIndexTermContext *termStates) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermQuery_TermWeight, initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_, outer$, searcher, needsScores, termStates)
}

OrgApacheLuceneSearchTermQuery_TermWeight *create_OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(OrgApacheLuceneSearchTermQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores, OrgApacheLuceneIndexTermContext *termStates) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermQuery_TermWeight, initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_, outer$, searcher, needsScores, termStates)
}

OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneSearchTermQuery_TermWeight_getTermsEnumWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchTermQuery_TermWeight *self, OrgApacheLuceneIndexLeafReaderContext *context) {
  OrgApacheLuceneIndexTermState *state = [((OrgApacheLuceneIndexTermContext *) nil_chk(self->termStates_)) getWithInt:((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->ord_];
  if (state == nil) {
    JreAssert(OrgApacheLuceneSearchTermQuery_TermWeight_termNotInReaderWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneIndexTerm_(self, [context reader], self->this$0_->term_), JreStrcat("$@", @"no termstate found but term exists in reader term=", self->this$0_->term_));
    return nil;
  }
  OrgApacheLuceneIndexTermsEnum *termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk([((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) termsWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(self->this$0_->term_)) field]])) iterator];
  [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekExactWithOrgApacheLuceneUtilBytesRef:[self->this$0_->term_ bytes] withOrgApacheLuceneIndexTermState:state];
  return termsEnum;
}

jboolean OrgApacheLuceneSearchTermQuery_TermWeight_termNotInReaderWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchTermQuery_TermWeight *self, OrgApacheLuceneIndexLeafReader *reader, OrgApacheLuceneIndexTerm *term) {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) docFreqWithOrgApacheLuceneIndexTerm:term] == 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermQuery_TermWeight)
