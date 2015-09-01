//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ToChildBlockJoinQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/join/BitSetProducer.h"
#include "org/apache/lucene/search/join/ToChildBlockJoinQuery.h"
#include "org/apache/lucene/util/BitSet.h"

@interface OrgApacheLuceneSearchJoinToChildBlockJoinQuery () {
 @public
  id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter_;
  OrgApacheLuceneSearchQuery *parentQuery_;
  OrgApacheLuceneSearchQuery *origParentQuery_;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)origParentQuery
                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)parentQuery
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery, parentsFilter_, id<OrgApacheLuceneSearchJoinBitSetProducer>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery, parentQuery_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery, origParentQuery_, OrgApacheLuceneSearchQuery *)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self, OrgApacheLuceneSearchQuery *origParentQuery, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter);

__attribute__((unused)) static OrgApacheLuceneSearchJoinToChildBlockJoinQuery *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchQuery *origParentQuery, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight : OrgApacheLuceneSearchWeight {
 @public
  OrgApacheLuceneSearchQuery *joinQuery_;
  OrgApacheLuceneSearchWeight *parentWeight_;
  id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter_;
  jboolean doScores_;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)joinQuery
                   withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)parentWeight
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter
                                       withBoolean:(jboolean)doScores;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight, joinQuery_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight, parentWeight_, OrgApacheLuceneSearchWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight, parentsFilter_, id<OrgApacheLuceneSearchJoinBitSetProducer>)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight *self, OrgApacheLuceneSearchQuery *joinQuery, OrgApacheLuceneSearchWeight *parentWeight, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter, jboolean doScores);

__attribute__((unused)) static OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(OrgApacheLuceneSearchQuery *joinQuery, OrgApacheLuceneSearchWeight *parentWeight, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter, jboolean doScores) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight)

@interface OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer () {
 @public
  OrgApacheLuceneSearchScorer *parentScorer_;
  OrgApacheLuceneUtilBitSet *parentBits_;
  jboolean doScores_;
  jfloat parentScore_;
  jint parentFreq_;
  jint childDoc_;
  jint parentDoc_;
}

- (void)validateParentDoc;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer, parentScorer_, OrgApacheLuceneSearchScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer, parentBits_, OrgApacheLuceneUtilBitSet *)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *self);

NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_INVALID_QUERY_MESSAGE_ = @"Parent query yields document which is not matched by parents filter, docID=";
NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ILLEGAL_ADVANCE_ON_PARENT_ = @"Expect to be advanced on child docs only. got docID=";

@implementation OrgApacheLuceneSearchJoinToChildBlockJoinQuery

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)parentQuery
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(self, parentQuery, parentsFilter);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)origParentQuery
                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)parentQuery
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(self, origParentQuery, parentQuery, parentsFilter);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return [new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(self, [((OrgApacheLuceneSearchQuery *) nil_chk(parentQuery_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores], parentsFilter_, needsScores) autorelease];
}

- (OrgApacheLuceneSearchQuery *)getParentQuery {
  return parentQuery_;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchQuery *parentRewrite = [((OrgApacheLuceneSearchQuery *) nil_chk(parentQuery_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
  if (parentRewrite != parentQuery_) {
    OrgApacheLuceneSearchQuery *rewritten = [new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(parentQuery_, parentRewrite, parentsFilter_) autorelease];
    [rewritten setBoostWithFloat:[self getBoost]];
    return rewritten;
  }
  else {
    return self;
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$C", @"ToChildBlockJoinQuery (", [((OrgApacheLuceneSearchQuery *) nil_chk(parentQuery_)) description], ')');
}

- (jboolean)isEqual:(id)_other {
  if ([_other isKindOfClass:[OrgApacheLuceneSearchJoinToChildBlockJoinQuery class]]) {
    OrgApacheLuceneSearchJoinToChildBlockJoinQuery *other = (OrgApacheLuceneSearchJoinToChildBlockJoinQuery *) check_class_cast(_other, [OrgApacheLuceneSearchJoinToChildBlockJoinQuery class]);
    return [((OrgApacheLuceneSearchQuery *) nil_chk(origParentQuery_)) isEqual:((OrgApacheLuceneSearchJoinToChildBlockJoinQuery *) nil_chk(other))->origParentQuery_] && [((id<OrgApacheLuceneSearchJoinBitSetProducer>) nil_chk(parentsFilter_)) isEqual:other->parentsFilter_] && [super isEqual:other];
  }
  else {
    return NO;
  }
}

- (NSUInteger)hash {
  jint prime = 31;
  jint hash_ = ((jint) [super hash]);
  hash_ = prime * hash_ + ((jint) [((OrgApacheLuceneSearchQuery *) nil_chk(origParentQuery_)) hash]);
  hash_ = prime * hash_ + ((jint) [((id<OrgApacheLuceneSearchJoinBitSetProducer>) nil_chk(parentsFilter_)) hash]);
  return hash_;
}

- (OrgApacheLuceneSearchJoinToChildBlockJoinQuery *)clone {
  return [new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_([((OrgApacheLuceneSearchQuery *) nil_chk(origParentQuery_)) clone], parentsFilter_) autorelease];
}

- (void)dealloc {
  RELEASE_(parentsFilter_);
  RELEASE_(parentQuery_);
  RELEASE_(origParentQuery_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchJoinBitSetProducer:", "ToChildBlockJoinQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchJoinBitSetProducer:", "ToChildBlockJoinQuery", NULL, 0x2, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "getParentQuery", NULL, "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.join.ToChildBlockJoinQuery;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INVALID_QUERY_MESSAGE_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchJoinToChildBlockJoinQuery_INVALID_QUERY_MESSAGE_, NULL, .constantValue.asLong = 0 },
    { "ILLEGAL_ADVANCE_ON_PARENT_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ILLEGAL_ADVANCE_ON_PARENT_, NULL, .constantValue.asLong = 0 },
    { "parentsFilter_", NULL, 0x12, "Lorg.apache.lucene.search.join.BitSetProducer;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentQuery_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "origParentQuery_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.join.ToChildBlockJoinQuery$ToChildBlockJoinWeight;", "Lorg.apache.lucene.search.join.ToChildBlockJoinQuery$ToChildBlockJoinScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinToChildBlockJoinQuery = { 2, "ToChildBlockJoinQuery", "org.apache.lucene.search.join", NULL, 0x1, 9, methods, 5, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinToChildBlockJoinQuery;
}

@end

void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->origParentQuery_, parentQuery);
  JreStrongAssign(&self->parentQuery_, parentQuery);
  JreStrongAssign(&self->parentsFilter_, parentsFilter);
}

OrgApacheLuceneSearchJoinToChildBlockJoinQuery *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self = [OrgApacheLuceneSearchJoinToChildBlockJoinQuery alloc];
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(self, parentQuery, parentsFilter);
  return self;
}

void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self, OrgApacheLuceneSearchQuery *origParentQuery, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->origParentQuery_, origParentQuery);
  JreStrongAssign(&self->parentQuery_, parentQuery);
  JreStrongAssign(&self->parentsFilter_, parentsFilter);
}

OrgApacheLuceneSearchJoinToChildBlockJoinQuery *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchQuery *origParentQuery, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self = [OrgApacheLuceneSearchJoinToChildBlockJoinQuery alloc];
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(self, origParentQuery, parentQuery, parentsFilter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinToChildBlockJoinQuery)

@implementation OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)joinQuery
                   withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)parentWeight
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter
                                       withBoolean:(jboolean)doScores {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(self, joinQuery, parentWeight, parentsFilter, doScores);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
}

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchWeight *) nil_chk(parentWeight_)) getValueForNormalization] * [((OrgApacheLuceneSearchQuery *) nil_chk(joinQuery_)) getBoost] * [joinQuery_ getBoost];
}

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchWeight *) nil_chk(parentWeight_)) normalizeWithFloat:norm withFloat:topLevelBoost * [((OrgApacheLuceneSearchQuery *) nil_chk(joinQuery_)) getBoost]];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneSearchScorer *parentScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(parentWeight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:readerContext];
  if (parentScorer == nil) {
    return nil;
  }
  OrgApacheLuceneUtilBitSet *parents = [((id<OrgApacheLuceneSearchJoinBitSetProducer>) nil_chk(parentsFilter_)) getBitSetWithOrgApacheLuceneIndexLeafReaderContext:readerContext];
  if (parents == nil) {
    return nil;
  }
  return [new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(self, parentScorer, parents, doScores_) autorelease];
}

- (void)dealloc {
  RELEASE_(joinQuery_);
  RELEASE_(parentWeight_);
  RELEASE_(parentsFilter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchJoinBitSetProducer:withBoolean:", "ToChildBlockJoinWeight", NULL, 0x1, NULL, NULL },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, NULL },
    { "getValueForNormalization", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "joinQuery_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentWeight_", NULL, 0x12, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentsFilter_", NULL, 0x12, "Lorg.apache.lucene.search.join.BitSetProducer;", NULL, NULL, .constantValue.asLong = 0 },
    { "doScores_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight = { 2, "ToChildBlockJoinWeight", "org.apache.lucene.search.join", "ToChildBlockJoinQuery", 0xa, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight;
}

@end

void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight *self, OrgApacheLuceneSearchQuery *joinQuery, OrgApacheLuceneSearchWeight *parentWeight, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter, jboolean doScores) {
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, joinQuery);
  JreStrongAssign(&self->joinQuery_, joinQuery);
  JreStrongAssign(&self->parentWeight_, parentWeight);
  JreStrongAssign(&self->parentsFilter_, parentsFilter);
  self->doScores_ = doScores;
}

OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(OrgApacheLuceneSearchQuery *joinQuery, OrgApacheLuceneSearchWeight *parentWeight, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter, jboolean doScores) {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight *self = [OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight alloc];
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinBitSetProducer_withBoolean_(self, joinQuery, parentWeight, parentsFilter, doScores);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinWeight)

@implementation OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)parentScorer
                      withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parentBits
                                        withBoolean:(jboolean)doScores {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(self, weight, parentScorer, parentBits, doScores);
  return self;
}

- (jint)nextDoc {
  while (YES) {
    if (childDoc_ + 1 == parentDoc_) {
      while (YES) {
        parentDoc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(parentScorer_)) nextDoc];
        OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(self);
        if (parentDoc_ == 0) {
          parentDoc_ = [parentScorer_ nextDoc];
          OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(self);
        }
        if (parentDoc_ == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
          childDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
          return childDoc_;
        }
        childDoc_ = 1 + [((OrgApacheLuceneUtilBitSet *) nil_chk(parentBits_)) prevSetBitWithInt:parentDoc_ - 1];
        if (childDoc_ == parentDoc_) {
          continue;
        }
        if (childDoc_ < parentDoc_) {
          if (doScores_) {
            parentScore_ = [parentScorer_ score];
            parentFreq_ = [parentScorer_ freq];
          }
          return childDoc_;
        }
        else {
        }
      }
    }
    else {
      JreAssert((childDoc_ < parentDoc_), (JreStrcat("$I$I", @"childDoc=", childDoc_, @" parentDoc=", parentDoc_)));
      childDoc_++;
      return childDoc_;
    }
  }
}

- (void)validateParentDoc {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(self);
}

- (jint)docID {
  return childDoc_;
}

- (jfloat)score {
  return parentScore_;
}

- (jint)freq {
  return parentFreq_;
}

- (jint)advanceWithInt:(jint)childTarget {
  if (childTarget >= parentDoc_) {
    if (childTarget == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      return childDoc_ = parentDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    }
    parentDoc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(parentScorer_)) advanceWithInt:childTarget + 1];
    OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(self);
    if (parentDoc_ == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      return childDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    }
    while (YES) {
      jint firstChild = [((OrgApacheLuceneUtilBitSet *) nil_chk(parentBits_)) prevSetBitWithInt:parentDoc_ - 1] + 1;
      if (firstChild != parentDoc_) {
        childTarget = JavaLangMath_maxWithInt_withInt_(childTarget, firstChild);
        break;
      }
      parentDoc_ = [parentScorer_ nextDoc];
      OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(self);
      if (parentDoc_ == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
        return childDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      }
    }
    if (doScores_) {
      parentScore_ = [parentScorer_ score];
      parentFreq_ = [parentScorer_ freq];
    }
  }
  JreAssert((childTarget < parentDoc_), (@"org/apache/lucene/search/join/ToChildBlockJoinQuery.java:299 condition failed: assert childTarget < parentDoc;"));
  JreAssert((![((OrgApacheLuceneUtilBitSet *) nil_chk(parentBits_)) getWithInt:childTarget]), (@"org/apache/lucene/search/join/ToChildBlockJoinQuery.java:300 condition failed: assert !parentBits.get(childTarget);"));
  childDoc_ = childTarget;
  return childDoc_;
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(parentScorer_)) cost];
}

- (void)dealloc {
  RELEASE_(parentScorer_);
  RELEASE_(parentBits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchScorer:withOrgApacheLuceneUtilBitSet:withBoolean:", "ToChildBlockJoinScorer", NULL, 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "validateParentDoc", NULL, "V", 0x2, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "parentScorer_", NULL, 0x12, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentBits_", NULL, 0x12, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "doScores_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "parentScore_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "parentFreq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "childDoc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "parentDoc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer = { 2, "ToChildBlockJoinScorer", "org.apache.lucene.search.join", "ToChildBlockJoinQuery", 0x8, 8, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer;
}

@end

void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchScorer *parentScorer, OrgApacheLuceneUtilBitSet *parentBits, jboolean doScores) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  self->parentFreq_ = 1;
  self->childDoc_ = -1;
  self->parentDoc_ = 0;
  self->doScores_ = doScores;
  JreStrongAssign(&self->parentBits_, parentBits);
  JreStrongAssign(&self->parentScorer_, parentScorer);
}

OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchScorer *parentScorer, OrgApacheLuceneUtilBitSet *parentBits, jboolean doScores) {
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *self = [OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer alloc];
  OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(self, weight, parentScorer, parentBits, doScores);
  return self;
}

void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_validateParentDoc(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *self) {
  if (self->parentDoc_ != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS && ![((OrgApacheLuceneUtilBitSet *) nil_chk(self->parentBits_)) getWithInt:self->parentDoc_]) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", OrgApacheLuceneSearchJoinToChildBlockJoinQuery_INVALID_QUERY_MESSAGE_, self->parentDoc_)) autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer)
