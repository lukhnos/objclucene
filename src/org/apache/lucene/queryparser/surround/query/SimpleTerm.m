//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SimpleTerm.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/SimpleTerm.h"
#include "org/apache/lucene/queryparser/surround/query/SimpleTermRewriteQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SpanNearClauseFactory.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserSurroundQuerySimpleTerm () {
 @public
  jboolean quoted_;
}

@end

@interface OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor : NSObject

@end

@interface OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 : NSObject < OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor > {
 @public
  OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *this$0_;
  OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *val$sncf_;
}

- (void)visitMatchingTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm:(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *)outer$
         withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1, this$0_, OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1, val$sncf_, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *self, OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0);

__attribute__((unused)) static OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *new_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *create_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1)

@implementation OrgApacheLuceneQueryparserSurroundQuerySimpleTerm

- (instancetype)initWithBoolean:(jboolean)q {
  OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_initWithBoolean_(self, q);
  return self;
}

- (jboolean)isQuoted {
  return quoted_;
}

- (NSString *)getQuote {
  return @"\"";
}

- (NSString *)getFieldOperator {
  return @"/";
}

- (NSString *)toStringUnquoted {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)compareToWithId:(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *)ost {
  cast_chk(ost, [OrgApacheLuceneQueryparserSurroundQuerySimpleTerm class]);
  return [((NSString *) nil_chk([self toStringUnquoted])) compareToWithId:[((OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *) nil_chk(ost)) toStringUnquoted]];
}

- (void)suffixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r {
}

- (NSString *)description {
  JavaLangStringBuilder *r = create_JavaLangStringBuilder_init();
  if ([self isQuoted]) {
    [r appendWithNSString:[self getQuote]];
  }
  [r appendWithNSString:[self toStringUnquoted]];
  if ([self isQuoted]) {
    [r appendWithNSString:[self getQuote]];
  }
  [self suffixToStringWithJavaLangStringBuilder:r];
  [self weightToStringWithJavaLangStringBuilder:r];
  return [r description];
}

- (void)visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)fieldName
withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:(id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>)mtv {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (NSString *)distanceSubQueryNotAllowed {
  return nil;
}

- (void)addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)sncf {
  [self visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:[((OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *) nil_chk(sncf)) getIndexReader] withNSString:[sncf getFieldName] withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:create_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(self, sncf)];
}

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  return create_OrgApacheLuceneQueryparserSurroundQuerySimpleTermRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(self, fieldName, qf);
}

+ (IOSObjectArray *)__annotations_compareToWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:", "SimpleTerm", NULL, 0x1, NULL, NULL },
    { "isQuoted", NULL, "Z", 0x0, NULL, NULL },
    { "getQuote", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getFieldOperator", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringUnquoted", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "suffixToStringWithJavaLangStringBuilder:", "suffixToString", "V", 0x4, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:withNSString:withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:", "visitMatchingTerms", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "distanceSubQueryNotAllowed", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:", "addSpanQueries", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "makeLuceneQueryFieldNoBoostWithNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneQueryFieldNoBoost", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "quoted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queryparser.surround.query.SimpleTerm$MatchingTermVisitor;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQuerySimpleTerm = { 2, "SimpleTerm", "org.apache.lucene.queryparser.surround.query", NULL, 0x401, 12, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, "Lorg/apache/lucene/queryparser/surround/query/SrndQuery;Lorg/apache/lucene/queryparser/surround/query/DistanceSubQuery;Ljava/lang/Comparable<Lorg/apache/lucene/queryparser/surround/query/SimpleTerm;>;" };
  return &_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm;
}

@end

void OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_initWithBoolean_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *self, jboolean q) {
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(self);
  self->quoted_ = q;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm)

@implementation OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "visitMatchingTermWithOrgApacheLuceneIndexTerm:", "visitMatchingTerm", "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor = { 2, "MatchingTermVisitor", "org.apache.lucene.queryparser.surround.query", "SimpleTerm", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor)

@implementation OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1

- (void)visitMatchingTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [((OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *) nil_chk(val$sncf_)) addTermWeightedWithOrgApacheLuceneIndexTerm:term withFloat:[this$0_ getWeight]];
}

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm:(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *)outer$
         withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)capture$0 {
  OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$sncf_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "visitMatchingTermWithOrgApacheLuceneIndexTerm:", "visitMatchingTerm", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm:withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queryparser.surround.query.SimpleTerm;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$sncf_", NULL, 0x1012, "Lorg.apache.lucene.queryparser.surround.query.SpanNearClauseFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueryparserSurroundQuerySimpleTerm", "addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 = { 2, "", "org.apache.lucene.queryparser.surround.query", "SimpleTerm", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1;
}

@end

void OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *self, OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$sncf_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *new_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1, initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_, outer$, capture$0)
}

OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1 *create_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1_initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *outer$, OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1, initWithOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_withOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_$1)
