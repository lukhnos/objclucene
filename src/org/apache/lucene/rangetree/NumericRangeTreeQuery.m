//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/NumericRangeTreeQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/rangetree/NumericRangeTreeQuery.h"
#include "org/apache/lucene/rangetree/RangeTreeReader.h"
#include "org/apache/lucene/rangetree/RangeTreeSortedNumericDocValues.h"
#include "org/apache/lucene/search/ConstantScoreScorer.h"
#include "org/apache/lucene/search/ConstantScoreWeight.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 : OrgApacheLuceneSearchConstantScoreWeight {
 @public
  OrgApacheLuceneRangetreeNumericRangeTreeQuery *this$0_;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery:(OrgApacheLuceneRangetreeNumericRangeTreeQuery *)outer$
                                       withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1, this$0_, OrgApacheLuceneRangetreeNumericRangeTreeQuery *)

__attribute__((unused)) static void OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 *self, OrgApacheLuceneRangetreeNumericRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 *new_OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeNumericRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1)

@implementation OrgApacheLuceneRangetreeNumericRangeTreeQuery

- (instancetype)initWithNSString:(NSString *)field
                withJavaLangLong:(JavaLangLong *)minValue
                     withBoolean:(jboolean)minInclusive
                withJavaLangLong:(JavaLangLong *)maxValue
                     withBoolean:(jboolean)maxInclusive {
  OrgApacheLuceneRangetreeNumericRangeTreeQuery_initWithNSString_withJavaLangLong_withBoolean_withJavaLangLong_withBoolean_(self, field, minValue, minInclusive, maxValue, maxInclusive);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return [new_OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(self, self) autorelease];
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [super hash]);
  if (minValue_ != nil) hash_ += ((jint) [minValue_ hash]) ^ (jint) 0x14fa55fb;
  if (maxValue_ != nil) hash_ += ((jint) [maxValue_ hash]) ^ (jint) 0x733fa5fe;
  return hash_ + (((jint) [JavaLangBoolean_valueOfWithBoolean_(minInclusive_) hash]) ^ (jint) 0x14fa55fb) + (((jint) [JavaLangBoolean_valueOfWithBoolean_(maxInclusive_) hash]) ^ (jint) 0x733fa5fe);
}

- (jboolean)isEqual:(id)other {
  if ([super isEqual:other]) {
    OrgApacheLuceneRangetreeNumericRangeTreeQuery *q = (OrgApacheLuceneRangetreeNumericRangeTreeQuery *) check_class_cast(other, [OrgApacheLuceneRangetreeNumericRangeTreeQuery class]);
    return ((((OrgApacheLuceneRangetreeNumericRangeTreeQuery *) nil_chk(q))->minValue_ == nil ? minValue_ == nil : [q->minValue_ isEqual:minValue_]) && (q->maxValue_ == nil ? maxValue_ == nil : [q->maxValue_ isEqual:maxValue_]) && minInclusive_ == q->minInclusive_ && maxInclusive_ == q->maxInclusive_);
  }
  return NO;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [sb appendWithNSString:[[self getClass] getSimpleName]];
  [sb appendWithChar:':'];
  if ([((NSString *) nil_chk(self->field_)) isEqual:field] == NO) {
    [sb appendWithNSString:@"field="];
    [sb appendWithNSString:self->field_];
    [sb appendWithChar:':'];
  }
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithChar:minInclusive_ ? '[' : '{'])) appendWithNSString:(minValue_ == nil) ? @"*" : [minValue_ description]])) appendWithNSString:@" TO "])) appendWithNSString:(maxValue_ == nil) ? @"*" : [maxValue_ description]])) appendWithChar:maxInclusive_ ? ']' : '}'])) appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])])) description];
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(minValue_);
  RELEASE_(maxValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaLangLong:withBoolean:withJavaLangLong:withBoolean:", "NumericRangeTreeQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "minValue_", NULL, 0x10, "Ljava.lang.Long;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxValue_", NULL, 0x10, "Ljava.lang.Long;", NULL, NULL, .constantValue.asLong = 0 },
    { "minInclusive_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxInclusive_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeNumericRangeTreeQuery = { 2, "NumericRangeTreeQuery", "org.apache.lucene.rangetree", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeNumericRangeTreeQuery;
}

@end

void OrgApacheLuceneRangetreeNumericRangeTreeQuery_initWithNSString_withJavaLangLong_withBoolean_withJavaLangLong_withBoolean_(OrgApacheLuceneRangetreeNumericRangeTreeQuery *self, NSString *field, JavaLangLong *minValue, jboolean minInclusive, JavaLangLong *maxValue, jboolean maxInclusive) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, field);
  self->minInclusive_ = minInclusive;
  JreStrongAssign(&self->minValue_, minValue);
  self->maxInclusive_ = maxInclusive;
  JreStrongAssign(&self->maxValue_, maxValue);
}

OrgApacheLuceneRangetreeNumericRangeTreeQuery *new_OrgApacheLuceneRangetreeNumericRangeTreeQuery_initWithNSString_withJavaLangLong_withBoolean_withJavaLangLong_withBoolean_(NSString *field, JavaLangLong *minValue, jboolean minInclusive, JavaLangLong *maxValue, jboolean maxInclusive) {
  OrgApacheLuceneRangetreeNumericRangeTreeQuery *self = [OrgApacheLuceneRangetreeNumericRangeTreeQuery alloc];
  OrgApacheLuceneRangetreeNumericRangeTreeQuery_initWithNSString_withJavaLangLong_withBoolean_withJavaLangLong_withBoolean_(self, field, minValue, minInclusive, maxValue, maxInclusive);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeNumericRangeTreeQuery)

@implementation OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  OrgApacheLuceneIndexSortedNumericDocValues *sdv = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getSortedNumericDocValuesWithNSString:this$0_->field_];
  if (sdv == nil) {
    return nil;
  }
  if ([sdv isKindOfClass:[OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues class]] == NO) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$@", @"field \"", this$0_->field_, @"\" was not indexed with RangeTreeDocValuesFormat: got: ", sdv)) autorelease];
  }
  OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues *treeDV = (OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues *) check_class_cast(sdv, [OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues class]);
  OrgApacheLuceneRangetreeRangeTreeReader *tree = [((OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues *) nil_chk(treeDV)) getRangeTreeReader];
  jlong minBoundIncl = (this$0_->minValue_ == nil) ? JavaLangLong_MIN_VALUE : [this$0_->minValue_ longLongValue];
  if (this$0_->minInclusive_ == NO && this$0_->minValue_ != nil) {
    if (minBoundIncl == JavaLangLong_MAX_VALUE) {
      return nil;
    }
    minBoundIncl++;
  }
  jlong maxBoundIncl = (this$0_->maxValue_ == nil) ? JavaLangLong_MAX_VALUE : [this$0_->maxValue_ longLongValue];
  if (this$0_->maxInclusive_ == NO && this$0_->maxValue_ != nil) {
    if (maxBoundIncl == JavaLangLong_MIN_VALUE) {
      return nil;
    }
    maxBoundIncl--;
  }
  if (maxBoundIncl < minBoundIncl) {
    return nil;
  }
  OrgApacheLuceneSearchDocIdSet *result = [((OrgApacheLuceneRangetreeRangeTreeReader *) nil_chk(tree)) intersectWithLong:minBoundIncl withLong:maxBoundIncl withOrgApacheLuceneIndexSortedNumericDocValues:treeDV->delegate_ withInt:[((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc]];
  OrgApacheLuceneSearchDocIdSetIterator *disi = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(result)) iterator];
  return [new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, [self score], disi) autorelease];
}

- (instancetype)initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery:(OrgApacheLuceneRangetreeNumericRangeTreeQuery *)outer$
                                       withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.rangetree.NumericRangeTreeQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneRangetreeNumericRangeTreeQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 = { 2, "", "org.apache.lucene.rangetree", "NumericRangeTreeQuery", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1;
}

@end

void OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 *self, OrgApacheLuceneRangetreeNumericRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 *new_OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeNumericRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 *self = [OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1 alloc];
  OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeNumericRangeTreeQuery_withOrgApacheLuceneSearchQuery_(self, outer$, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeNumericRangeTreeQuery_$1)
