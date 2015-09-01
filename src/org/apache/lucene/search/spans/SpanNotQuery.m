//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanNotQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/spans/FilterSpans.h"
#include "org/apache/lucene/search/spans/SpanNotQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchSpansSpanNotQuery () {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *include_;
  OrgApacheLuceneSearchSpansSpanQuery *exclude_;
  jint pre_;
  jint post_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery, include_, OrgApacheLuceneSearchSpansSpanQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery, exclude_, OrgApacheLuceneSearchSpansSpanQuery *)

@interface OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight () {
 @public
  OrgApacheLuceneSearchSpansSpanNotQuery *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight, this$0_, OrgApacheLuceneSearchSpansSpanNotQuery *)

@interface OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 : OrgApacheLuceneSearchSpansFilterSpans {
 @public
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *this$0_;
  jint lastApproxDoc_;
  jboolean lastApproxResult_;
  OrgApacheLuceneSearchSpansSpans *val$excludeSpans_;
  OrgApacheLuceneSearchTwoPhaseIterator *val$excludeTwoPhase_;
  OrgApacheLuceneSearchDocIdSetIterator *val$excludeApproximation_;
}

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum *)acceptWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)candidate;

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight:(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *)outer$
                                         withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)capture$0
                                   withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)capture$1
                                   withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$2
                                         withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1, this$0_, OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1, val$excludeSpans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1, val$excludeTwoPhase_, OrgApacheLuceneSearchTwoPhaseIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1, val$excludeApproximation_, OrgApacheLuceneSearchDocIdSetIterator *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 *self, OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *outer$, OrgApacheLuceneSearchSpansSpans *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchDocIdSetIterator *capture$2, OrgApacheLuceneSearchSpansSpans *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 *new_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *outer$, OrgApacheLuceneSearchSpansSpans *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchDocIdSetIterator *capture$2, OrgApacheLuceneSearchSpansSpans *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1)

@implementation OrgApacheLuceneSearchSpansSpanNotQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)include
                    withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)exclude
                                                    withInt:(jint)pre
                                                    withInt:(jint)post {
  OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(self, include, exclude, pre, post);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getInclude {
  return include_;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getExclude {
  return exclude_;
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) getField];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  [buffer appendWithNSString:@"spanNot("];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) toStringWithNSString:field]];
  [buffer appendWithNSString:@", "];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude_)) toStringWithNSString:field]];
  [buffer appendWithNSString:@", "];
  [buffer appendWithNSString:JavaLangInteger_toStringWithInt_(pre_)];
  [buffer appendWithNSString:@", "];
  [buffer appendWithNSString:JavaLangInteger_toStringWithInt_(post_)];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (OrgApacheLuceneSearchSpansSpanNotQuery *)clone {
  OrgApacheLuceneSearchSpansSpanNotQuery *spanNotQuery = [new_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_((OrgApacheLuceneSearchSpansSpanQuery *) check_class_cast([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) clone], [OrgApacheLuceneSearchSpansSpanQuery class]), (OrgApacheLuceneSearchSpansSpanQuery *) check_class_cast([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude_)) clone], [OrgApacheLuceneSearchSpansSpanQuery class]), pre_, post_) autorelease];
  [spanNotQuery setBoostWithFloat:[self getBoost]];
  return spanNotQuery;
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchSpansSpanWeight *includeWeight = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:NO];
  OrgApacheLuceneSearchSpansSpanWeight *excludeWeight = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:NO];
  return [new_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_initWithOrgApacheLuceneSearchSpansSpanNotQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, searcher, needsScores ? OrgApacheLuceneSearchSpansSpanQuery_getTermContextsWithOrgApacheLuceneSearchSpansSpanWeightArray_([IOSObjectArray arrayWithObjects:(id[]){ includeWeight, excludeWeight } count:2 type:OrgApacheLuceneSearchSpansSpanWeight_class_()]) : nil, includeWeight, excludeWeight) autorelease];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansSpanNotQuery *clone = nil;
  OrgApacheLuceneSearchSpansSpanQuery *rewrittenInclude = (OrgApacheLuceneSearchSpansSpanQuery *) check_class_cast([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
  if (rewrittenInclude != include_) {
    clone = [self clone];
    JreStrongAssign(&((OrgApacheLuceneSearchSpansSpanNotQuery *) nil_chk(clone))->include_, rewrittenInclude);
  }
  OrgApacheLuceneSearchSpansSpanQuery *rewrittenExclude = (OrgApacheLuceneSearchSpansSpanQuery *) check_class_cast([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
  if (rewrittenExclude != exclude_) {
    if (clone == nil) clone = [self clone];
    JreStrongAssign(&((OrgApacheLuceneSearchSpansSpanNotQuery *) nil_chk(clone))->exclude_, rewrittenExclude);
  }
  if (clone != nil) {
    return clone;
  }
  else {
    return self;
  }
}

- (jboolean)isEqual:(id)o {
  if (![super isEqual:o]) return NO;
  OrgApacheLuceneSearchSpansSpanNotQuery *other = (OrgApacheLuceneSearchSpansSpanNotQuery *) check_class_cast(o, [OrgApacheLuceneSearchSpansSpanNotQuery class]);
  return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(self->include_)) isEqual:((OrgApacheLuceneSearchSpansSpanNotQuery *) nil_chk(other))->include_] && [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(self->exclude_)) isEqual:other->exclude_] && self->pre_ == other->pre_ && self->post_ == other->post_;
}

- (NSUInteger)hash {
  jint h = ((jint) [super hash]);
  h = JavaLangInteger_rotateLeftWithInt_withInt_(h, 1);
  h ^= ((jint) [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include_)) hash]);
  h = JavaLangInteger_rotateLeftWithInt_withInt_(h, 1);
  h ^= ((jint) [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude_)) hash]);
  h = JavaLangInteger_rotateLeftWithInt_withInt_(h, 1);
  h ^= pre_;
  h = JavaLangInteger_rotateLeftWithInt_withInt_(h, 1);
  h ^= post_;
  return h;
}

- (void)dealloc {
  RELEASE_(include_);
  RELEASE_(exclude_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanQuery:withOrgApacheLuceneSearchSpansSpanQuery:withInt:withInt:", "SpanNotQuery", NULL, 0x1, NULL, NULL },
    { "getInclude", NULL, "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, NULL, NULL },
    { "getExclude", NULL, "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.spans.SpanNotQuery;", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.spans.SpanWeight;", 0x1, "Ljava.io.IOException;", NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "include_", NULL, 0x2, "Lorg.apache.lucene.search.spans.SpanQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "exclude_", NULL, 0x2, "Lorg.apache.lucene.search.spans.SpanQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "pre_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "post_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.spans.SpanNotQuery$SpanNotWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanNotQuery = { 2, "SpanNotQuery", "org.apache.lucene.search.spans", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanNotQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanNotQuery *self, OrgApacheLuceneSearchSpansSpanQuery *include, OrgApacheLuceneSearchSpansSpanQuery *exclude, jint pre, jint post) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  JreStrongAssign(&self->include_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(include));
  JreStrongAssign(&self->exclude_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(exclude));
  self->pre_ = (pre >= 0) ? pre : 0;
  self->post_ = (post >= 0) ? post : 0;
  if ([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(include)) getField] != nil && [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(exclude)) getField] != nil && ![((NSString *) nil_chk([include getField])) isEqual:[exclude getField]]) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Clauses must have same field.") autorelease];
}

OrgApacheLuceneSearchSpansSpanNotQuery *new_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *include, OrgApacheLuceneSearchSpansSpanQuery *exclude, jint pre, jint post) {
  OrgApacheLuceneSearchSpansSpanNotQuery *self = [OrgApacheLuceneSearchSpansSpanNotQuery alloc];
  OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(self, include, exclude, pre, post);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanNotQuery)

@implementation OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNotQuery:(OrgApacheLuceneSearchSpansSpanNotQuery *)outer$
                        withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                               withJavaUtilMap:(id<JavaUtilMap>)terms
                      withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)includeWeight
                      withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)excludeWeight {
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_initWithOrgApacheLuceneSearchSpansSpanNotQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, outer$, searcher, terms, includeWeight, excludeWeight);
  return self;
}

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts {
  [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(includeWeight_)) extractTermContextsWithJavaUtilMap:contexts];
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                 withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:(OrgApacheLuceneSearchSpansSpanWeight_PostingsEnum *)requiredPostings {
  OrgApacheLuceneSearchSpansSpans *includeSpans = [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(includeWeight_)) getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:requiredPostings];
  if (includeSpans == nil) {
    return nil;
  }
  OrgApacheLuceneSearchSpansSpans *excludeSpans = [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(excludeWeight_)) getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:requiredPostings];
  if (excludeSpans == nil) {
    return includeSpans;
  }
  OrgApacheLuceneSearchTwoPhaseIterator *excludeTwoPhase = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(excludeSpans)) asTwoPhaseIterator];
  OrgApacheLuceneSearchDocIdSetIterator *excludeApproximation = excludeTwoPhase == nil ? nil : [excludeTwoPhase approximation];
  return [new_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(self, excludeSpans, excludeTwoPhase, excludeApproximation, includeSpans) autorelease];
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(includeWeight_)) extractTermsWithJavaUtilSet:terms];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(includeWeight_);
  RELEASE_(excludeWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanNotQuery:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:withOrgApacheLuceneSearchSpansSpanWeight:withOrgApacheLuceneSearchSpansSpanWeight:", "SpanNotWeight", NULL, 0x1, NULL, NULL },
    { "extractTermContextsWithJavaUtilMap:", "extractTermContexts", "V", 0x1, NULL, NULL },
    { "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:", "getSpans", "Lorg.apache.lucene.search.spans.Spans;", 0x1, "Ljava.io.IOException;", NULL },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanNotQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "includeWeight_", NULL, 0x10, "Lorg.apache.lucene.search.spans.SpanWeight;", NULL, NULL, .constantValue.asLong = 0 },
    { "excludeWeight_", NULL, 0x10, "Lorg.apache.lucene.search.spans.SpanWeight;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight = { 2, "SpanNotWeight", "org.apache.lucene.search.spans", "SpanNotQuery", 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight;
}

@end

void OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_initWithOrgApacheLuceneSearchSpansSpanNotQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *self, OrgApacheLuceneSearchSpansSpanNotQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *includeWeight, OrgApacheLuceneSearchSpansSpanWeight *excludeWeight) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanWeight_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, searcher, terms);
  JreStrongAssign(&self->includeWeight_, includeWeight);
  JreStrongAssign(&self->excludeWeight_, excludeWeight);
}

OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *new_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_initWithOrgApacheLuceneSearchSpansSpanNotQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanNotQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *includeWeight, OrgApacheLuceneSearchSpansSpanWeight *excludeWeight) {
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *self = [OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight alloc];
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_initWithOrgApacheLuceneSearchSpansSpanNotQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, outer$, searcher, terms, includeWeight, excludeWeight);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight)

@implementation OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum *)acceptWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)candidate {
  jint doc = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(candidate)) docID];
  if (doc > [((OrgApacheLuceneSearchSpansSpans *) nil_chk(val$excludeSpans_)) docID]) {
    if (val$excludeTwoPhase_ != nil) {
      if ([((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(val$excludeApproximation_)) advanceWithInt:doc] == doc) {
        lastApproxDoc_ = doc;
        lastApproxResult_ = [val$excludeTwoPhase_ matches];
      }
    }
    else {
      [val$excludeSpans_ advanceWithInt:doc];
    }
  }
  else if (val$excludeTwoPhase_ != nil && doc == [val$excludeSpans_ docID] && doc != lastApproxDoc_) {
    lastApproxDoc_ = doc;
    lastApproxResult_ = [val$excludeTwoPhase_ matches];
  }
  if (doc != [val$excludeSpans_ docID] || (doc == lastApproxDoc_ && lastApproxResult_ == NO)) {
    return JreLoadStatic(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum, YES);
  }
  if ([val$excludeSpans_ startPosition] == -1) {
    [val$excludeSpans_ nextStartPosition];
  }
  while ([val$excludeSpans_ endPosition] <= [candidate startPosition] - this$0_->this$0_->pre_) {
    if ([val$excludeSpans_ nextStartPosition] == OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
      return JreLoadStatic(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum, YES);
    }
  }
  if ([candidate endPosition] + this$0_->this$0_->post_ <= [val$excludeSpans_ startPosition]) {
    return JreLoadStatic(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum, YES);
  }
  else {
    return JreLoadStatic(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum, NO);
  }
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight:(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *)outer$
                                         withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)capture$0
                                   withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)capture$1
                                   withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$2
                                         withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$0 {
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(self, outer$, capture$0, capture$1, capture$2, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$excludeSpans_);
  RELEASE_(val$excludeTwoPhase_);
  RELEASE_(val$excludeApproximation_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "acceptWithOrgApacheLuceneSearchSpansSpans:", "accept", "Lorg.apache.lucene.search.spans.FilterSpans$AcceptStatus;", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchTwoPhaseIterator:withOrgApacheLuceneSearchDocIdSetIterator:withOrgApacheLuceneSearchSpansSpans:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanNotQuery$SpanNotWeight;", NULL, NULL, .constantValue.asLong = 0 },
    { "lastApproxDoc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastApproxResult_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$excludeSpans_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.Spans;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$excludeTwoPhase_", NULL, 0x1012, "Lorg.apache.lucene.search.TwoPhaseIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$excludeApproximation_", NULL, 0x1012, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight", "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 = { 2, "", "org.apache.lucene.search.spans", "SpanNotQuery$SpanNotWeight", 0x8008, 2, methods, 6, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1;
}

@end

void OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 *self, OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *outer$, OrgApacheLuceneSearchSpansSpans *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchDocIdSetIterator *capture$2, OrgApacheLuceneSearchSpansSpans *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$excludeSpans_, capture$0);
  JreStrongAssign(&self->val$excludeTwoPhase_, capture$1);
  JreStrongAssign(&self->val$excludeApproximation_, capture$2);
  OrgApacheLuceneSearchSpansFilterSpans_initWithOrgApacheLuceneSearchSpansSpans_(self, arg$0);
  self->lastApproxDoc_ = -1;
  self->lastApproxResult_ = NO;
}

OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 *new_OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight *outer$, OrgApacheLuceneSearchSpansSpans *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchDocIdSetIterator *capture$2, OrgApacheLuceneSearchSpansSpans *arg$0) {
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 *self = [OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1 alloc];
  OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1_initWithOrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchSpansSpans_(self, outer$, capture$0, capture$1, capture$2, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanNotQuery_SpanNotWeight_$1)
