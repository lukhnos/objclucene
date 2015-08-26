//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BooleanWeight.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/BooleanScorer.h"
#include "org/apache/lucene/search/BooleanTopLevelScorers.h"
#include "org/apache/lucene/search/BooleanWeight.h"
#include "org/apache/lucene/search/BulkScorer.h"
#include "org/apache/lucene/search/ConjunctionScorer.h"
#include "org/apache/lucene/search/DisjunctionSumScorer.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/FilterScorer.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/MinShouldMatchSumScorer.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ReqExclScorer.h"
#include "org/apache/lucene/search/ReqOptSumScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/similarities/Similarity.h"

@interface OrgApacheLuceneSearchBooleanWeight ()

- (OrgApacheLuceneSearchScorer *)reqWithJavaUtilList:(id<JavaUtilList>)required
                                    withJavaUtilList:(id<JavaUtilList>)requiredScoring
                                         withBoolean:(jboolean)disableCoord;

- (OrgApacheLuceneSearchScorer *)exclWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)main
                                                    withJavaUtilList:(id<JavaUtilList>)prohibited;

- (OrgApacheLuceneSearchScorer *)optWithJavaUtilList:(id<JavaUtilList>)optional
                                             withInt:(jint)minShouldMatch
                                         withBoolean:(jboolean)disableCoord;

@end

__attribute__((unused)) static OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_reqWithJavaUtilList_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchBooleanWeight *self, id<JavaUtilList> required, id<JavaUtilList> requiredScoring, jboolean disableCoord);

__attribute__((unused)) static OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(OrgApacheLuceneSearchBooleanWeight *self, OrgApacheLuceneSearchScorer *main, id<JavaUtilList> prohibited);

__attribute__((unused)) static OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_optWithJavaUtilList_withInt_withBoolean_(OrgApacheLuceneSearchBooleanWeight *self, id<JavaUtilList> optional, jint minShouldMatch, jboolean disableCoord);

@interface OrgApacheLuceneSearchBooleanWeight_$1 : OrgApacheLuceneSearchFilterScorer

- (jfloat)score;

- (jint)freq;

- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBooleanWeight_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchBooleanWeight_$1 *self, OrgApacheLuceneSearchScorer *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchBooleanWeight_$1 *new_OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBooleanWeight_$1)

@implementation OrgApacheLuceneSearchBooleanWeight

- (instancetype)initWithOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)query
                   withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                              withBoolean:(jboolean)needsScores
                                              withBoolean:(jboolean)disableCoord {
  OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(self, query, searcher, needsScores, disableCoord);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  jint i = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(query_)) {
    if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) isScoring] || (needsScores_ == NO && [clause isProhibited] == NO)) {
      [((OrgApacheLuceneSearchWeight *) nil_chk([((JavaUtilArrayList *) nil_chk(weights_)) getWithInt:i])) extractTermsWithJavaUtilSet:terms];
    }
    i++;
  }
}

- (jfloat)getValueForNormalization {
  jfloat sum = 0.0f;
  jint i = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(query_)) {
    jfloat s = [((OrgApacheLuceneSearchWeight *) nil_chk([((JavaUtilArrayList *) nil_chk(weights_)) getWithInt:i])) getValueForNormalization];
    if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) isScoring]) {
      JrePlusAssignFloatF(&sum, s);
    }
    i += 1;
  }
  JreTimesAssignFloatF(&sum, [query_ getBoost] * [query_ getBoost]);
  return sum;
}

- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap {
  if (overlap == 0) {
    return 0.0f;
  }
  else if (maxOverlap == 1) {
    return 1.0f;
  }
  else {
    return [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) coordWithInt:overlap withInt:maxOverlap];
  }
}

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost {
  JreTimesAssignFloatF(&topLevelBoost, [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(query_)) getBoost]);
  for (OrgApacheLuceneSearchWeight * __strong w in nil_chk(weights_)) {
    [((OrgApacheLuceneSearchWeight *) nil_chk(w)) normalizeWithFloat:norm withFloat:topLevelBoost];
  }
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  jint minShouldMatch = [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(query_)) getMinimumNumberShouldMatch];
  id<JavaUtilList> subs = [new_JavaUtilArrayList_init() autorelease];
  jint coord = 0;
  jfloat sum = 0.0f;
  jboolean fail = NO;
  jint matchCount = 0;
  jint shouldMatchCount = 0;
  id<JavaUtilIterator> cIter = [query_ iterator];
  for (id<JavaUtilIterator> wIter = [((JavaUtilArrayList *) nil_chk(weights_)) iterator]; [((id<JavaUtilIterator>) nil_chk(wIter)) hasNext]; ) {
    OrgApacheLuceneSearchWeight *w = [wIter next];
    OrgApacheLuceneSearchBooleanClause *c = [((id<JavaUtilIterator>) nil_chk(cIter)) next];
    OrgApacheLuceneSearchExplanation *e = [((OrgApacheLuceneSearchWeight *) nil_chk(w)) explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:doc];
    if ([((OrgApacheLuceneSearchExplanation *) nil_chk(e)) isMatch]) {
      if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isScoring]) {
        [subs addWithId:e];
        JrePlusAssignFloatF(&sum, [e getValue]);
        coord++;
      }
      else if ([c isRequired]) {
        [subs addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(0.0f, @"match on required clause, product of:", [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(0.0f, JreStrcat("@$", JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, FILTER), @" clause"), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]), e } count:2 type:OrgApacheLuceneSearchExplanation_class_()])];
      }
      else if ([c isProhibited]) {
        [subs addWithId:OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(JreStrcat("$$C", @"match on prohibited clause (", [((OrgApacheLuceneSearchQuery *) nil_chk([c getQuery])) description], ')'), [IOSObjectArray arrayWithObjects:(id[]){ e } count:1 type:OrgApacheLuceneSearchExplanation_class_()])];
        fail = YES;
      }
      if (![c isProhibited]) {
        matchCount++;
      }
      if ([c getOccur] == JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) {
        shouldMatchCount++;
      }
    }
    else if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isRequired]) {
      [subs addWithId:OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(JreStrcat("$$C", @"no match on required clause (", [((OrgApacheLuceneSearchQuery *) nil_chk([c getQuery])) description], ')'), [IOSObjectArray arrayWithObjects:(id[]){ e } count:1 type:OrgApacheLuceneSearchExplanation_class_()])];
      fail = YES;
    }
  }
  if (fail) {
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(@"Failure to meet condition(s) of required/prohibited clause(s)", subs);
  }
  else if (matchCount == 0) {
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(@"No matching clauses", subs);
  }
  else if (shouldMatchCount < minShouldMatch) {
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(JreStrcat("$I", @"Failure to match minimum number of optional clauses: ", minShouldMatch), subs);
  }
  else {
    OrgApacheLuceneSearchExplanation *result = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(sum, @"sum of:", subs);
    jfloat coordFactor = disableCoord_ ? 1.0f : [self coordWithInt:coord withInt:maxCoord_];
    if (coordFactor != 1.0f) {
      result = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(sum * coordFactor, @"product of:", [IOSObjectArray arrayWithObjects:(id[]){ result, OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(coordFactor, JreStrcat("$ICIC", @"coord(", coord, '/', maxCoord_, ')'), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]) } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
    }
    return result;
  }
}

- (OrgApacheLuceneSearchBooleanScorer *)booleanScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  id<JavaUtilList> optional = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilIterator> cIter = [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(query_)) iterator];
  for (OrgApacheLuceneSearchWeight * __strong w in nil_chk(weights_)) {
    OrgApacheLuceneSearchBooleanClause *c = [((id<JavaUtilIterator>) nil_chk(cIter)) next];
    OrgApacheLuceneSearchBulkScorer *subScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(w)) bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:context];
    if (subScorer == nil) {
      if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isRequired]) {
        return nil;
      }
    }
    else if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isRequired]) {
      return nil;
    }
    else if ([c isProhibited]) {
      return nil;
    }
    else {
      [optional addWithId:subScorer];
    }
  }
  if ([optional size] == 0) {
    return nil;
  }
  if ([query_ getMinimumNumberShouldMatch] > [optional size]) {
    return nil;
  }
  return [new_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(self, disableCoord_, maxCoord_, optional, JavaLangMath_maxWithInt_withInt_(1, [query_ getMinimumNumberShouldMatch]), needsScores_) autorelease];
}

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchBooleanScorer *bulkScorer = [self booleanScorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (bulkScorer != nil) {
    jlong costThreshold;
    if ([((OrgApacheLuceneSearchBooleanQuery *) nil_chk(query_)) getMinimumNumberShouldMatch] <= 1) {
      costThreshold = -1;
    }
    else {
      costThreshold = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader])) maxDoc] / 3;
    }
    if ([bulkScorer cost] > costThreshold) {
      return bulkScorer;
    }
  }
  return [super bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:context];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  jint minShouldMatch = [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(query_)) getMinimumNumberShouldMatch];
  id<JavaUtilList> required = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> requiredScoring = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> prohibited = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> optional = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilIterator> cIter = [query_ iterator];
  for (OrgApacheLuceneSearchWeight * __strong w in nil_chk(weights_)) {
    OrgApacheLuceneSearchBooleanClause *c = [((id<JavaUtilIterator>) nil_chk(cIter)) next];
    OrgApacheLuceneSearchScorer *subScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(w)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
    if (subScorer == nil) {
      if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isRequired]) {
        return nil;
      }
    }
    else if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isRequired]) {
      [required addWithId:subScorer];
      if ([c isScoring]) {
        [requiredScoring addWithId:subScorer];
      }
    }
    else if ([c isProhibited]) {
      [prohibited addWithId:subScorer];
    }
    else {
      [optional addWithId:subScorer];
    }
  }
  if ([optional size] == minShouldMatch) {
    [required addAllWithJavaUtilCollection:optional];
    [requiredScoring addAllWithJavaUtilCollection:optional];
    [optional clear];
    minShouldMatch = 0;
  }
  if ([required isEmpty] && [optional isEmpty]) {
    return nil;
  }
  else if ([optional size] < minShouldMatch) {
    return nil;
  }
  if (!needsScores_ && minShouldMatch == 0 && [required size] > 0) {
    [optional clear];
  }
  if ([optional isEmpty]) {
    return OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(self, OrgApacheLuceneSearchBooleanWeight_reqWithJavaUtilList_withJavaUtilList_withBoolean_(self, required, requiredScoring, disableCoord_), prohibited);
  }
  if ([required isEmpty]) {
    return OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(self, OrgApacheLuceneSearchBooleanWeight_optWithJavaUtilList_withInt_withBoolean_(self, optional, minShouldMatch, disableCoord_), prohibited);
  }
  OrgApacheLuceneSearchScorer *req = OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(self, OrgApacheLuceneSearchBooleanWeight_reqWithJavaUtilList_withJavaUtilList_withBoolean_(self, required, requiredScoring, YES), prohibited);
  OrgApacheLuceneSearchScorer *opt = OrgApacheLuceneSearchBooleanWeight_optWithJavaUtilList_withInt_withBoolean_(self, optional, minShouldMatch, YES);
  if (disableCoord_) {
    if (minShouldMatch > 0) {
      return [new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(self, JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ req, opt } count:2 type:OrgApacheLuceneSearchScorer_class_()]), JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ req, opt } count:2 type:OrgApacheLuceneSearchScorer_class_()]), 1.0f) autorelease];
    }
    else {
      return [new_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(req, opt) autorelease];
    }
  }
  else if ([optional size] == 1) {
    if (minShouldMatch > 0) {
      return [new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(self, JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ req, opt } count:2 type:OrgApacheLuceneSearchScorer_class_()]), JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ req, opt } count:2 type:OrgApacheLuceneSearchScorer_class_()]), [self coordWithInt:[requiredScoring size] + 1 withInt:maxCoord_]) autorelease];
    }
    else {
      jfloat coordReq = [self coordWithInt:[requiredScoring size] withInt:maxCoord_];
      jfloat coordBoth = [self coordWithInt:[requiredScoring size] + 1 withInt:maxCoord_];
      return [new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(req, opt, coordReq, coordBoth) autorelease];
    }
  }
  else {
    if (minShouldMatch > 0) {
      return [new_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(self, coords_, req, [requiredScoring size], opt) autorelease];
    }
    else {
      return [new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(req, opt, [requiredScoring size], coords_) autorelease];
    }
  }
}

- (OrgApacheLuceneSearchScorer *)reqWithJavaUtilList:(id<JavaUtilList>)required
                                    withJavaUtilList:(id<JavaUtilList>)requiredScoring
                                         withBoolean:(jboolean)disableCoord {
  return OrgApacheLuceneSearchBooleanWeight_reqWithJavaUtilList_withJavaUtilList_withBoolean_(self, required, requiredScoring, disableCoord);
}

- (OrgApacheLuceneSearchScorer *)exclWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)main
                                                    withJavaUtilList:(id<JavaUtilList>)prohibited {
  return OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(self, main, prohibited);
}

- (OrgApacheLuceneSearchScorer *)optWithJavaUtilList:(id<JavaUtilList>)optional
                                             withInt:(jint)minShouldMatch
                                         withBoolean:(jboolean)disableCoord {
  return OrgApacheLuceneSearchBooleanWeight_optWithJavaUtilList_withInt_withBoolean_(self, optional, minShouldMatch, disableCoord);
}

- (void)dealloc {
  RELEASE_(similarity_);
  RELEASE_(query_);
  RELEASE_(weights_);
  RELEASE_(coords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchBooleanQuery:withOrgApacheLuceneSearchIndexSearcher:withBoolean:withBoolean:", "BooleanWeight", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, NULL },
    { "getValueForNormalization", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "coordWithInt:withInt:", "coord", "F", 0x1, NULL, NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
    { "booleanScorerWithOrgApacheLuceneIndexLeafReaderContext:", "booleanScorer", "Lorg.apache.lucene.search.BooleanScorer;", 0x0, "Ljava.io.IOException;", NULL },
    { "bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:", "bulkScorer", "Lorg.apache.lucene.search.BulkScorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "reqWithJavaUtilList:withJavaUtilList:withBoolean:", "req", "Lorg.apache.lucene.search.Scorer;", 0x2, NULL, NULL },
    { "exclWithOrgApacheLuceneSearchScorer:withJavaUtilList:", "excl", "Lorg.apache.lucene.search.Scorer;", 0x2, "Ljava.io.IOException;", NULL },
    { "optWithJavaUtilList:withInt:withBoolean:", "opt", "Lorg.apache.lucene.search.Scorer;", 0x2, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "similarity_", NULL, 0x10, "Lorg.apache.lucene.search.similarities.Similarity;", NULL, NULL, .constantValue.asLong = 0 },
    { "query_", NULL, 0x10, "Lorg.apache.lucene.search.BooleanQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "weights_", NULL, 0x10, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/search/Weight;>;", .constantValue.asLong = 0 },
    { "maxCoord_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "disableCoord_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "needsScores_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "coords_", NULL, 0x10, "[F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBooleanWeight = { 2, "BooleanWeight", "org.apache.lucene.search", NULL, 0x10, 12, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBooleanWeight;
}

@end

void OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(OrgApacheLuceneSearchBooleanWeight *self, OrgApacheLuceneSearchBooleanQuery *query, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores, jboolean disableCoord) {
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, query);
  JreStrongAssign(&self->query_, query);
  self->needsScores_ = needsScores;
  JreStrongAssign(&self->similarity_, [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getSimilarityWithBoolean:needsScores]);
  JreStrongAssignAndConsume(&self->weights_, new_JavaUtilArrayList_init());
  jint i = 0;
  jint maxCoord = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong c in nil_chk(query)) {
    OrgApacheLuceneSearchWeight *w = [searcher createWeightWithOrgApacheLuceneSearchQuery:[((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) getQuery] withBoolean:needsScores && [c isScoring]];
    [self->weights_ addWithId:w];
    if ([c isScoring]) {
      maxCoord++;
    }
    i += 1;
  }
  self->maxCoord_ = maxCoord;
  JreStrongAssignAndConsume(&self->coords_, [IOSFloatArray newArrayWithLength:maxCoord + 1]);
  JavaUtilArrays_fillWithFloatArray_withFloat_(self->coords_, 1.0f);
  *IOSFloatArray_GetRef(self->coords_, 0) = 0.0f;
  if (maxCoord > 0 && needsScores && disableCoord == NO) {
    jboolean seenActualCoord = NO;
    for (i = 1; i < self->coords_->size_; i++) {
      *IOSFloatArray_GetRef(self->coords_, i) = [self coordWithInt:i withInt:maxCoord];
      seenActualCoord |= (IOSFloatArray_Get(self->coords_, i) != 1.0f);
    }
    self->disableCoord_ = (seenActualCoord == NO);
  }
  else {
    self->disableCoord_ = YES;
  }
}

OrgApacheLuceneSearchBooleanWeight *new_OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(OrgApacheLuceneSearchBooleanQuery *query, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores, jboolean disableCoord) {
  OrgApacheLuceneSearchBooleanWeight *self = [OrgApacheLuceneSearchBooleanWeight alloc];
  OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(self, query, searcher, needsScores, disableCoord);
  return self;
}

OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_reqWithJavaUtilList_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchBooleanWeight *self, id<JavaUtilList> required, id<JavaUtilList> requiredScoring, jboolean disableCoord) {
  if ([((id<JavaUtilList>) nil_chk(required)) size] == 1) {
    OrgApacheLuceneSearchScorer *req = [required getWithInt:0];
    if (self->needsScores_ == NO) {
      return req;
    }
    if ([((id<JavaUtilList>) nil_chk(requiredScoring)) isEmpty]) {
      return [new_OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(req) autorelease];
    }
    jfloat boost = 1.0f;
    if (disableCoord == NO) {
      boost = [self coordWithInt:1 withInt:self->maxCoord_];
    }
    if (boost == 1.0f) {
      return req;
    }
    return [new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(req, boost) autorelease];
  }
  else {
    return [new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(self, required, requiredScoring, disableCoord ? 1.0f : [self coordWithInt:[((id<JavaUtilList>) nil_chk(requiredScoring)) size] withInt:self->maxCoord_]) autorelease];
  }
}

OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_exclWithOrgApacheLuceneSearchScorer_withJavaUtilList_(OrgApacheLuceneSearchBooleanWeight *self, OrgApacheLuceneSearchScorer *main, id<JavaUtilList> prohibited) {
  if ([((id<JavaUtilList>) nil_chk(prohibited)) isEmpty]) {
    return main;
  }
  else if ([prohibited size] == 1) {
    return [new_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(main, [prohibited getWithInt:0]) autorelease];
  }
  else {
    IOSFloatArray *coords = [IOSFloatArray arrayWithLength:[prohibited size] + 1];
    JavaUtilArrays_fillWithFloatArray_withFloat_(coords, 1.0f);
    return [new_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(main, [new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withFloatArray_withBoolean_(self, prohibited, coords, NO) autorelease]) autorelease];
  }
}

OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchBooleanWeight_optWithJavaUtilList_withInt_withBoolean_(OrgApacheLuceneSearchBooleanWeight *self, id<JavaUtilList> optional, jint minShouldMatch, jboolean disableCoord) {
  if ([((id<JavaUtilList>) nil_chk(optional)) size] == 1) {
    OrgApacheLuceneSearchScorer *opt = [optional getWithInt:0];
    if (!disableCoord && self->maxCoord_ > 1) {
      return [new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(opt, [self coordWithInt:1 withInt:self->maxCoord_]) autorelease];
    }
    else {
      return opt;
    }
  }
  else {
    IOSFloatArray *coords;
    if (disableCoord) {
      coords = [IOSFloatArray arrayWithLength:[optional size] + 1];
      JavaUtilArrays_fillWithFloatArray_withFloat_(coords, 1.0f);
    }
    else {
      coords = self->coords_;
    }
    if (minShouldMatch > 1) {
      return [new_OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(self, optional, minShouldMatch, coords) autorelease];
    }
    else {
      return [new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withFloatArray_withBoolean_(self, optional, coords, self->needsScores_) autorelease];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBooleanWeight)

@implementation OrgApacheLuceneSearchBooleanWeight_$1

- (jfloat)score {
  return 0.0f;
}

- (jint)freq {
  return 0;
}

- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0 {
  OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchScorer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchBooleanWeight", "reqWithJavaUtilList:withJavaUtilList:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBooleanWeight_$1 = { 2, "", "org.apache.lucene.search", "BooleanWeight", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchBooleanWeight_$1;
}

@end

void OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchBooleanWeight_$1 *self, OrgApacheLuceneSearchScorer *arg$0) {
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
}

OrgApacheLuceneSearchBooleanWeight_$1 *new_OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *arg$0) {
  OrgApacheLuceneSearchBooleanWeight_$1 *self = [OrgApacheLuceneSearchBooleanWeight_$1 alloc];
  OrgApacheLuceneSearchBooleanWeight_$1_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBooleanWeight_$1)
