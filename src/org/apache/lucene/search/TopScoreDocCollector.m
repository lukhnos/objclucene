//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopScoreDocCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/HitQueue.h"
#include "org/apache/lucene/search/LeafCollector.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopDocsCollector.h"
#include "org/apache/lucene/search/TopScoreDocCollector.h"
#include "org/apache/lucene/util/PriorityQueue.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *self, jint numHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector)

@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 : OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector {
 @public
  OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *this$0_;
  jint val$docBase_;
}

- (void)collectWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *)outer$
                                                                                     withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1, this$0_, OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *self, OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *new_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)

@interface OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector {
 @public
  OrgApacheLuceneSearchScoreDoc *after_;
  jint collectedHits_;
}

- (instancetype)initWithInt:(jint)numHits
withOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after;

- (jint)topDocsSize;

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector, after_, OrgApacheLuceneSearchScoreDoc *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *self, jint numHits, OrgApacheLuceneSearchScoreDoc *after);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(jint numHits, OrgApacheLuceneSearchScoreDoc *after) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(jint numHits, OrgApacheLuceneSearchScoreDoc *after);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector)

@interface OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 : OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector {
 @public
  OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *this$0_;
  jint val$afterDoc_;
  jint val$docBase_;
}

- (void)collectWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector:(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *)outer$
                                                                                     withInt:(jint)capture$0
                                                                                     withInt:(jint)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1, this$0_, OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *self, OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *new_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1)

@implementation OrgApacheLuceneSearchTopScoreDocCollector

+ (OrgApacheLuceneSearchTopScoreDocCollector *)createWithInt:(jint)numHits {
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_(numHits);
}

+ (OrgApacheLuceneSearchTopScoreDocCollector *)createWithInt:(jint)numHits
                           withOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after {
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_(numHits, after);
}

- (instancetype)initWithInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
  return self;
}

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start {
  if (results == nil) {
    return JreLoadStatic(OrgApacheLuceneSearchTopDocsCollector, EMPTY_TOPDOCS);
  }
  jfloat maxScore = JavaLangFloat_NaN;
  if (start == 0) {
    maxScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(IOSObjectArray_Get(results, 0)))->score_;
  }
  else {
    for (jint i = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size]; i > 1; i--) {
      [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) pop];
    }
    maxScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) pop]))->score_;
  }
  return create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits_, results, maxScore);
}

- (jboolean)needsScores {
  return true;
}

- (void)dealloc {
  RELEASE_(pqTop_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithInt:", "create", "Lorg.apache.lucene.search.TopScoreDocCollector;", 0x9, NULL, NULL },
    { "createWithInt:withOrgApacheLuceneSearchScoreDoc:", "create", "Lorg.apache.lucene.search.TopScoreDocCollector;", 0x9, NULL, NULL },
    { "initWithInt:", "TopScoreDocCollector", NULL, 0x0, NULL, NULL },
    { "newTopDocsWithOrgApacheLuceneSearchScoreDocArray:withInt:", "newTopDocs", "Lorg.apache.lucene.search.TopDocs;", 0x4, NULL, NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pqTop_", NULL, 0x0, "Lorg.apache.lucene.search.ScoreDoc;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.ScoreDoc;"};
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.TopScoreDocCollector$ScorerLeafCollector;", "Lorg.apache.lucene.search.TopScoreDocCollector$SimpleTopScoreDocCollector;", "Lorg.apache.lucene.search.TopScoreDocCollector$PagingTopScoreDocCollector;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector = { 2, "TopScoreDocCollector", "org.apache.lucene.search", NULL, 0x401, 5, methods, 1, fields, 1, superclass_type_args, 3, inner_classes, NULL, "Lorg/apache/lucene/search/TopDocsCollector<Lorg/apache/lucene/search/ScoreDoc;>;" };
  return &_OrgApacheLuceneSearchTopScoreDocCollector;
}

@end

OrgApacheLuceneSearchTopScoreDocCollector *OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_(jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initialize();
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_(numHits, nil);
}

OrgApacheLuceneSearchTopScoreDocCollector *OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_(jint numHits, OrgApacheLuceneSearchScoreDoc *after) {
  OrgApacheLuceneSearchTopScoreDocCollector_initialize();
  if (numHits <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"numHits must be > 0; please use TotalHitCountCollector if you just need the total hit count");
  }
  if (after == nil) {
    return create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(numHits);
  }
  else {
    return create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(numHits, after);
  }
}

void OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector *self, jint numHits) {
  OrgApacheLuceneSearchTopDocsCollector_initWithOrgApacheLuceneUtilPriorityQueue_(self, create_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(numHits, true));
  JreStrongAssign(&self->pqTop_, [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->pq_)) top]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  JreStrongAssign(&self->scorer_, scorer);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(scorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setScorerWithOrgApacheLuceneSearchScorer:", "setScorer", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "init", "ScorerLeafCollector", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scorer_", NULL, 0x0, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector = { 2, "ScorerLeafCollector", "org.apache.lucene.search", "TopScoreDocCollector", 0x408, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector_init(OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(self, numHits);
  return self;
}

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  jint docBase = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->docBase_;
  return create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(self, docBase);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "SimpleTopScoreDocCollector", NULL, 0x0, NULL, NULL },
    { "getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:", "getLeafCollector", "Lorg.apache.lucene.search.LeafCollector;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector = { 2, "SimpleTopScoreDocCollector", "org.apache.lucene.search", "TopScoreDocCollector", 0xa, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *self, jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
}

OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector, initWithInt_, numHits)
}

OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector, initWithInt_, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((score != JavaLangFloat_NEGATIVE_INFINITY), (@"org/apache/lucene/search/TopScoreDocCollector.java:67 condition failed: assert score != Float.NEGATIVE_INFINITY;"));
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:68 condition failed: assert !Float.isNaN(score);"));
  this$0_->totalHits_++;
  if (score <= ((OrgApacheLuceneSearchScoreDoc *) nil_chk(this$0_->pqTop_))->score_) {
    return;
  }
  this$0_->pqTop_->doc_ = doc + val$docBase_;
  this$0_->pqTop_->score_ = score;
  JreStrongAssign(&this$0_->pqTop_, [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(this$0_->pq_)) updateTop]);
}

- (instancetype)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *)outer$
                                                                                     withInt:(jint)capture$0 {
  OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:withInt:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.TopScoreDocCollector$SimpleTopScoreDocCollector;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$docBase_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector", "getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 = { 2, "", "org.apache.lucene.search", "TopScoreDocCollector$SimpleTopScoreDocCollector", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *self, OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$docBase_ = capture$0;
  OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector_init(self);
}

OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *new_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1, initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_, outer$, capture$0)
}

OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1 *create_OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector *outer$, jint capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1, initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_withInt_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits
withOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after {
  OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(self, numHits, after);
  return self;
}

- (jint)topDocsSize {
  return collectedHits_ < [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size] ? collectedHits_ : [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size];
}

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start {
  return results == nil ? create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits_, [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()], JavaLangFloat_NaN) : create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(totalHits_, results);
}

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  jint docBase = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->docBase_;
  jint afterDoc = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(after_))->doc_ - context->docBase_;
  return create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(self, afterDoc, docBase);
}

- (void)dealloc {
  RELEASE_(after_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneSearchScoreDoc:", "PagingTopScoreDocCollector", NULL, 0x0, NULL, NULL },
    { "topDocsSize", NULL, "I", 0x4, NULL, NULL },
    { "newTopDocsWithOrgApacheLuceneSearchScoreDocArray:withInt:", "newTopDocs", "Lorg.apache.lucene.search.TopDocs;", 0x4, NULL, NULL },
    { "getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:", "getLeafCollector", "Lorg.apache.lucene.search.LeafCollector;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "after_", NULL, 0x12, "Lorg.apache.lucene.search.ScoreDoc;", NULL, NULL, .constantValue.asLong = 0 },
    { "collectedHits_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector = { 2, "PagingTopScoreDocCollector", "org.apache.lucene.search", "TopScoreDocCollector", 0xa, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *self, jint numHits, OrgApacheLuceneSearchScoreDoc *after) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
  JreStrongAssign(&self->after_, after);
  self->collectedHits_ = 0;
}

OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(jint numHits, OrgApacheLuceneSearchScoreDoc *after) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector, initWithInt_withOrgApacheLuceneSearchScoreDoc_, numHits, after)
}

OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_initWithInt_withOrgApacheLuceneSearchScoreDoc_(jint numHits, OrgApacheLuceneSearchScoreDoc *after) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector, initWithInt_withOrgApacheLuceneSearchScoreDoc_, numHits, after)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((score != JavaLangFloat_NEGATIVE_INFINITY), (@"org/apache/lucene/search/TopScoreDocCollector.java:118 condition failed: assert score != Float.NEGATIVE_INFINITY;"));
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:119 condition failed: assert !Float.isNaN(score);"));
  this$0_->totalHits_++;
  if (score > ((OrgApacheLuceneSearchScoreDoc *) nil_chk(this$0_->after_))->score_ || (score == this$0_->after_->score_ && doc <= val$afterDoc_)) {
    return;
  }
  if (score <= ((OrgApacheLuceneSearchScoreDoc *) nil_chk(this$0_->pqTop_))->score_) {
    return;
  }
  this$0_->collectedHits_++;
  this$0_->pqTop_->doc_ = doc + val$docBase_;
  this$0_->pqTop_->score_ = score;
  JreStrongAssign(&this$0_->pqTop_, [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(this$0_->pq_)) updateTop]);
}

- (instancetype)initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector:(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *)outer$
                                                                                     withInt:(jint)capture$0
                                                                                     withInt:(jint)capture$1 {
  OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector:withInt:withInt:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.TopScoreDocCollector$PagingTopScoreDocCollector;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$afterDoc_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$docBase_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector", "getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 = { 2, "", "org.apache.lucene.search", "TopScoreDocCollector$PagingTopScoreDocCollector", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *self, OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$afterDoc_ = capture$0;
  self->val$docBase_ = capture$1;
  OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector_init(self);
}

OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *new_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1, initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_, outer$, capture$0, capture$1)
}

OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1 *create_OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1_initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *outer$, jint capture$0, jint capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1, initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_withInt_withInt_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1)
