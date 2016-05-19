//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanWithinQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/ContainSpans.h"
#include "org/apache/lucene/search/spans/SpanContainQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/SpanWithinQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"

@interface OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 : OrgApacheLuceneSearchSpansContainSpans

- (jboolean)twoPhaseCurrentDocMatches;

- (jint)nextStartPosition;

- (instancetype)initWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$0
                    withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$1
                    withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *self, OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *new_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *create_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1)

@implementation OrgApacheLuceneSearchSpansSpanWithinQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)big
                    withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)little {
  OrgApacheLuceneSearchSpansSpanWithinQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(self, big, little);
  return self;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return [self toStringWithNSString:field withNSString:@"SpanWithin"];
}

- (OrgApacheLuceneSearchSpansSpanWithinQuery *)clone {
  return create_OrgApacheLuceneSearchSpansSpanWithinQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_((OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(big_)) clone], [OrgApacheLuceneSearchSpansSpanQuery class]), (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(little_)) clone], [OrgApacheLuceneSearchSpansSpanQuery class]));
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchSpansSpanWeight *bigWeight = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(big_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false];
  OrgApacheLuceneSearchSpansSpanWeight *littleWeight = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(little_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false];
  return create_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, searcher, needsScores ? OrgApacheLuceneSearchSpansSpanQuery_getTermContextsWithOrgApacheLuceneSearchSpansSpanWeightArray_([IOSObjectArray arrayWithObjects:(id[]){ bigWeight, littleWeight } count:2 type:OrgApacheLuceneSearchSpansSpanWeight_class_()]) : nil, bigWeight, littleWeight);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanQuery:withOrgApacheLuceneSearchSpansSpanQuery:", "SpanWithinQuery", NULL, 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.spans.SpanWithinQuery;", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.spans.SpanWeight;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.spans.SpanWithinQuery$SpanWithinWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanWithinQuery = { 2, "SpanWithinQuery", "org.apache.lucene.search.spans", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanWithinQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanWithinQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanWithinQuery *self, OrgApacheLuceneSearchSpansSpanQuery *big, OrgApacheLuceneSearchSpansSpanQuery *little) {
  OrgApacheLuceneSearchSpansSpanContainQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withFloat_(self, big, little, [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(little)) getBoost]);
}

OrgApacheLuceneSearchSpansSpanWithinQuery *new_OrgApacheLuceneSearchSpansSpanWithinQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanQuery *big, OrgApacheLuceneSearchSpansSpanQuery *little) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_, big, little)
}

OrgApacheLuceneSearchSpansSpanWithinQuery *create_OrgApacheLuceneSearchSpansSpanWithinQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanQuery *big, OrgApacheLuceneSearchSpansSpanQuery *little) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_, big, little)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanWithinQuery)

@implementation OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanWithinQuery:(OrgApacheLuceneSearchSpansSpanWithinQuery *)outer$
                           withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                  withJavaUtilMap:(id<JavaUtilMap>)terms
                         withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)bigWeight
                         withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)littleWeight {
  OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, outer$, searcher, terms, bigWeight, littleWeight);
  return self;
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                     withOrgApacheLuceneSearchSpansSpanWeight_Postings:(OrgApacheLuceneSearchSpansSpanWeight_Postings *)requiredPostings {
  JavaUtilArrayList *containerContained = [self prepareConjunctionWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_Postings:requiredPostings];
  if (containerContained == nil) {
    return nil;
  }
  OrgApacheLuceneSearchSpansSpans *big = [containerContained getWithInt:0];
  OrgApacheLuceneSearchSpansSpans *little = [containerContained getWithInt:1];
  return create_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(big, little, little);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanWithinQuery:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:withOrgApacheLuceneSearchSpansSpanWeight:withOrgApacheLuceneSearchSpansSpanWeight:", "SpanWithinWeight", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/spans/SpanWithinQuery;Lorg/apache/lucene/search/IndexSearcher;Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;Lorg/apache/lucene/search/spans/SpanWeight;Lorg/apache/lucene/search/spans/SpanWeight;)V" },
    { "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_Postings:", "getSpans", "Lorg.apache.lucene.search.spans.Spans;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight = { 2, "SpanWithinWeight", "org.apache.lucene.search.spans", "SpanWithinQuery", 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight;
}

@end

void OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight *self, OrgApacheLuceneSearchSpansSpanWithinQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *bigWeight, OrgApacheLuceneSearchSpansSpanWeight *littleWeight) {
  OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_initWithOrgApacheLuceneSearchSpansSpanContainQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(self, outer$, searcher, terms, bigWeight, littleWeight);
}

OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight *new_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanWithinQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *bigWeight, OrgApacheLuceneSearchSpansSpanWeight *littleWeight) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight, initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_, outer$, searcher, terms, bigWeight, littleWeight)
}

OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight *create_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanWithinQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *bigWeight, OrgApacheLuceneSearchSpansSpanWeight *littleWeight) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight, initWithOrgApacheLuceneSearchSpansSpanWithinQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_, outer$, searcher, terms, bigWeight, littleWeight)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight)

@implementation OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1

- (jboolean)twoPhaseCurrentDocMatches {
  oneExhaustedInCurrentDoc_ = false;
  JreAssert(([((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) startPosition] == -1), (@"org/apache/lucene/search/spans/SpanWithinQuery.java:87 condition failed: assert littleSpans.startPosition() == -1;"));
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) nextStartPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
    while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) endPosition] < [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) endPosition]) {
      if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) nextStartPosition] == OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
        oneExhaustedInCurrentDoc_ = true;
        return false;
      }
    }
    if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) startPosition] <= [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) startPosition]) {
      atFirstInCurrentDoc_ = true;
      return true;
    }
  }
  oneExhaustedInCurrentDoc_ = true;
  return false;
}

- (jint)nextStartPosition {
  if (atFirstInCurrentDoc_) {
    atFirstInCurrentDoc_ = false;
    return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) startPosition];
  }
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) nextStartPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
    while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) endPosition] < [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) endPosition]) {
      if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) nextStartPosition] == OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
        oneExhaustedInCurrentDoc_ = true;
        return OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS;
      }
    }
    if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) startPosition] <= [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) startPosition]) {
      return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) startPosition];
    }
  }
  oneExhaustedInCurrentDoc_ = true;
  return OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$0
                    withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$1
                    withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)arg$2 {
  OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(self, arg$0, arg$1, arg$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "twoPhaseCurrentDocMatches", NULL, "Z", 0x0, "Ljava.io.IOException;", NULL },
    { "nextStartPosition", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpans:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight", "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_Postings:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 = { 2, "", "org.apache.lucene.search.spans", "SpanWithinQuery$SpanWithinWeight", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1;
}

@end

void OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *self, OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2) {
  OrgApacheLuceneSearchSpansContainSpans_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(self, arg$0, arg$1, arg$2);
}

OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *new_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1, initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_, arg$0, arg$1, arg$2)
}

OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1 *create_OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *arg$0, OrgApacheLuceneSearchSpansSpans *arg$1, OrgApacheLuceneSearchSpansSpans *arg$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1, initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_, arg$0, arg$1, arg$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanWithinQuery_SpanWithinWeight_$1)
