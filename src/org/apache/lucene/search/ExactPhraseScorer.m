//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ExactPhraseScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/search/ConjunctionDISI.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/ExactPhraseScorer.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/similarities/Similarity.h"

@class OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition;

@interface OrgApacheLuceneSearchExactPhraseScorer () {
 @public
  OrgApacheLuceneSearchConjunctionDISI *conjunction_;
  IOSObjectArray *postings_;
  jint freq_;
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer_;
  jboolean needsScores_;
}

- (jint)doNextWithInt:(jint)doc;

+ (jboolean)advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition:(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *)posting
                                                                                  withInt:(jint)target;

- (jint)phraseFreq;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, conjunction_, OrgApacheLuceneSearchConjunctionDISI *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, postings_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, docScorer_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)

__attribute__((unused)) static jint OrgApacheLuceneSearchExactPhraseScorer_doNextWithInt_(OrgApacheLuceneSearchExactPhraseScorer *self, jint doc);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchExactPhraseScorer_advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_withInt_(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *posting, jint target);

__attribute__((unused)) static jint OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(OrgApacheLuceneSearchExactPhraseScorer *self);

@interface OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition : NSObject {
 @public
  OrgApacheLuceneIndexPostingsEnum *postings_;
  jint offset_;
  jint freq_, upTo_, pos_;
}

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                 withInt:(jint)offset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition, postings_, OrgApacheLuceneIndexPostingsEnum *)

__attribute__((unused)) static void OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *self, OrgApacheLuceneIndexPostingsEnum *postings, jint offset);

__attribute__((unused)) static OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *new_OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(OrgApacheLuceneIndexPostingsEnum *postings, jint offset) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)

@interface OrgApacheLuceneSearchExactPhraseScorer_$1 : OrgApacheLuceneSearchTwoPhaseIterator {
 @public
  OrgApacheLuceneSearchExactPhraseScorer *this$0_;
}

- (jboolean)matches;

- (instancetype)initWithOrgApacheLuceneSearchExactPhraseScorer:(OrgApacheLuceneSearchExactPhraseScorer *)outer$
                     withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchExactPhraseScorer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer_$1, this$0_, OrgApacheLuceneSearchExactPhraseScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchExactPhraseScorer_$1 *self, OrgApacheLuceneSearchExactPhraseScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchExactPhraseScorer_$1 *new_OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchExactPhraseScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchExactPhraseScorer_$1)

@implementation OrgApacheLuceneSearchExactPhraseScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:(IOSObjectArray *)postings
withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer
                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, weight, postings, docScorer, needsScores);
  return self;
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  return [new_OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(self, conjunction_) autorelease];
}

- (jint)doNextWithInt:(jint)doc {
  return OrgApacheLuceneSearchExactPhraseScorer_doNextWithInt_(self, doc);
}

- (jint)nextDoc {
  return OrgApacheLuceneSearchExactPhraseScorer_doNextWithInt_(self, [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(conjunction_)) nextDoc]);
}

- (jint)advanceWithInt:(jint)target {
  return OrgApacheLuceneSearchExactPhraseScorer_doNextWithInt_(self, [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(conjunction_)) advanceWithInt:target]);
}

- (NSString *)description {
  return JreStrcat("$@C", @"ExactPhraseScorer(", weight_, ')');
}

- (jint)freq {
  return freq_;
}

- (jint)docID {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(conjunction_)) docID];
}

- (jfloat)score {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer_)) scoreWithInt:[self docID] withFloat:freq_];
}

+ (jboolean)advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition:(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *)posting
                                                                                  withInt:(jint)target {
  return OrgApacheLuceneSearchExactPhraseScorer_advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_withInt_(posting, target);
}

- (jint)phraseFreq {
  return OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(self);
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(conjunction_)) cost];
}

- (void)dealloc {
  RELEASE_(conjunction_);
  RELEASE_(postings_);
  RELEASE_(docScorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:withBoolean:", "ExactPhraseScorer", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
    { "doNextWithInt:", "doNext", "I", 0x2, "Ljava.io.IOException;", NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, NULL, NULL },
    { "advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition:withInt:", "advancePosition", "Z", 0xa, "Ljava.io.IOException;", NULL },
    { "phraseFreq", NULL, "I", 0x2, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "conjunction_", NULL, 0x12, "Lorg.apache.lucene.search.ConjunctionDISI;", NULL, NULL, .constantValue.asLong = 0 },
    { "postings_", NULL, 0x12, "[Lorg.apache.lucene.search.ExactPhraseScorer$PostingsAndPosition;", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "docScorer_", NULL, 0x12, "Lorg.apache.lucene.search.similarities.Similarity$SimScorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "needsScores_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.ExactPhraseScorer$PostingsAndPosition;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExactPhraseScorer = { 2, "ExactPhraseScorer", "org.apache.lucene.search", NULL, 0x10, 12, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchExactPhraseScorer;
}

@end

void OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(OrgApacheLuceneSearchExactPhraseScorer *self, OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer, jboolean needsScores) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  JreStrongAssign(&self->docScorer_, docScorer);
  self->needsScores_ = needsScores;
  id<JavaUtilList> iterators = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> postingsAndPositions = [new_JavaUtilArrayList_init() autorelease];
  {
    IOSObjectArray *a__ = postings;
    OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *posting = *b__++;
      [iterators addWithId:((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(posting))->postings_];
      [postingsAndPositions addWithId:[new_OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(posting->postings_, posting->position_) autorelease]];
    }
  }
  JreStrongAssign(&self->conjunction_, OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(iterators));
  JreStrongAssign(&self->postings_, [postingsAndPositions toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[postingsAndPositions size] type:OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_class_()]]);
}

OrgApacheLuceneSearchExactPhraseScorer *new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer, jboolean needsScores) {
  OrgApacheLuceneSearchExactPhraseScorer *self = [OrgApacheLuceneSearchExactPhraseScorer alloc];
  OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, weight, postings, docScorer, needsScores);
  return self;
}

jint OrgApacheLuceneSearchExactPhraseScorer_doNextWithInt_(OrgApacheLuceneSearchExactPhraseScorer *self, jint doc) {
  for (; ; doc = [((OrgApacheLuceneSearchConjunctionDISI *) nil_chk(self->conjunction_)) nextDoc]) {
    if (doc == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS || OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(self) > 0) {
      return doc;
    }
  }
}

jboolean OrgApacheLuceneSearchExactPhraseScorer_advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_withInt_(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *posting, jint target) {
  OrgApacheLuceneSearchExactPhraseScorer_initialize();
  while (((OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *) nil_chk(posting))->pos_ < target) {
    if (posting->upTo_ == posting->freq_) {
      return NO;
    }
    else {
      posting->pos_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(posting->postings_)) nextPosition];
      posting->upTo_ += 1;
    }
  }
  return YES;
}

jint OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(OrgApacheLuceneSearchExactPhraseScorer *self) {
  IOSObjectArray *postings = self->postings_;
  {
    IOSObjectArray *a__ = postings;
    OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *posting = *b__++;
      ((OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *) nil_chk(posting))->freq_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(posting->postings_)) freq];
      posting->pos_ = [posting->postings_ nextPosition];
      posting->upTo_ = 1;
    }
  }
  jint freq = 0;
  OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *lead = IOSObjectArray_Get(nil_chk(postings), 0);
  while (YES) {
    {
      jint phrasePos = ((OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *) nil_chk(lead))->pos_ - lead->offset_;
      for (jint j = 1; j < postings->size_; ++j) {
        OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *posting = IOSObjectArray_Get(postings, j);
        jint expectedPos = phrasePos + ((OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *) nil_chk(posting))->offset_;
        if (OrgApacheLuceneSearchExactPhraseScorer_advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_withInt_(posting, expectedPos) == NO) {
          goto break_advanceHead;
        }
        if (posting->pos_ != expectedPos) {
          if (OrgApacheLuceneSearchExactPhraseScorer_advancePositionWithOrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_withInt_(lead, posting->pos_ - posting->offset_ + lead->offset_)) {
            goto continue_advanceHead;
          }
          else {
            goto break_advanceHead;
          }
        }
      }
      freq += 1;
      if (self->needsScores_ == NO) {
        break;
      }
      if (lead->upTo_ == lead->freq_) {
        break;
      }
      lead->pos_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(lead->postings_)) nextPosition];
      lead->upTo_ += 1;
    }
    continue_advanceHead: ;
  }
  break_advanceHead: ;
  return self->freq_ = freq;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExactPhraseScorer)

@implementation OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                 withInt:(jint)offset {
  OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(self, postings, offset);
  return self;
}

- (void)dealloc {
  RELEASE_(postings_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexPostingsEnum:withInt:", "PostingsAndPosition", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "postings_", NULL, 0x12, "Lorg.apache.lucene.index.PostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
    { "offset_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "upTo_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition = { 2, "PostingsAndPosition", "org.apache.lucene.search", "ExactPhraseScorer", 0xa, 1, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition;
}

@end

void OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *self, OrgApacheLuceneIndexPostingsEnum *postings, jint offset) {
  NSObject_init(self);
  JreStrongAssign(&self->postings_, postings);
  self->offset_ = offset;
}

OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *new_OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(OrgApacheLuceneIndexPostingsEnum *postings, jint offset) {
  OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *self = [OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition alloc];
  OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition_initWithOrgApacheLuceneIndexPostingsEnum_withInt_(self, postings, offset);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)

@implementation OrgApacheLuceneSearchExactPhraseScorer_$1

- (jboolean)matches {
  return OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(this$0_) > 0;
}

- (instancetype)initWithOrgApacheLuceneSearchExactPhraseScorer:(OrgApacheLuceneSearchExactPhraseScorer *)outer$
                     withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0 {
  OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matches", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchExactPhraseScorer:withOrgApacheLuceneSearchDocIdSetIterator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.ExactPhraseScorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchExactPhraseScorer", "asTwoPhaseIterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExactPhraseScorer_$1 = { 2, "", "org.apache.lucene.search", "ExactPhraseScorer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchExactPhraseScorer_$1;
}

@end

void OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchExactPhraseScorer_$1 *self, OrgApacheLuceneSearchExactPhraseScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, arg$0);
}

OrgApacheLuceneSearchExactPhraseScorer_$1 *new_OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchExactPhraseScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  OrgApacheLuceneSearchExactPhraseScorer_$1 *self = [OrgApacheLuceneSearchExactPhraseScorer_$1 alloc];
  OrgApacheLuceneSearchExactPhraseScorer_$1_initWithOrgApacheLuceneSearchExactPhraseScorer_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExactPhraseScorer_$1)
