//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/ComposedQuery.java
//

#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/ComposedQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserSurroundQueryComposedQuery () {
 @public
  jboolean operatorInfix_;
}

@end

@implementation OrgApacheLuceneQueryparserSurroundQueryComposedQuery

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)qs
                         withBoolean:(jboolean)operatorInfix
                        withNSString:(NSString *)opName {
  OrgApacheLuceneQueryparserSurroundQueryComposedQuery_initWithJavaUtilList_withBoolean_withNSString_(self, qs, operatorInfix, opName);
  return self;
}

- (void)recomposeWithJavaUtilList:(id<JavaUtilList>)queries {
  if ([((id<JavaUtilList>) nil_chk(queries)) size] < 2) @throw [new_JavaLangAssertionError_initWithId_(@"Too few subqueries") autorelease];
  JreStrongAssign(&self->queries_, queries);
}

- (NSString *)getOperatorName {
  return opName_;
}

- (id<JavaUtilIterator>)getSubQueriesIterator {
  return [((id<JavaUtilList>) nil_chk(queries_)) listIterator];
}

- (jint)getNrSubQueries {
  return [((id<JavaUtilList>) nil_chk(queries_)) size];
}

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getSubQueryWithInt:(jint)qn {
  return [((id<JavaUtilList>) nil_chk(queries_)) getWithInt:qn];
}

- (jboolean)isOperatorInfix {
  return operatorInfix_;
}

- (id<JavaUtilList>)makeLuceneSubQueriesFieldWithNSString:(NSString *)fn
withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  id<JavaUtilList> luceneSubQueries = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    [luceneSubQueries addWithId:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(([sqi next]))) makeLuceneQueryFieldWithNSString:fn withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:qf]];
  }
  return luceneSubQueries;
}

- (NSString *)description {
  JavaLangStringBuilder *r = [new_JavaLangStringBuilder_init() autorelease];
  if ([self isOperatorInfix]) {
    [self infixToStringWithJavaLangStringBuilder:r];
  }
  else {
    [self prefixToStringWithJavaLangStringBuilder:r];
  }
  [self weightToStringWithJavaLangStringBuilder:r];
  return [r description];
}

- (NSString *)getPrefixSeparator {
  return @", ";
}

- (NSString *)getBracketOpen {
  return @"(";
}

- (NSString *)getBracketClose {
  return @")";
}

- (void)infixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  [((JavaLangStringBuilder *) nil_chk(r)) appendWithNSString:[self getBracketOpen]];
  if ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    [r appendWithNSString:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk([sqi next])) description]];
    while ([sqi hasNext]) {
      [r appendWithNSString:@" "];
      [r appendWithNSString:[self getOperatorName]];
      [r appendWithNSString:@" "];
      [r appendWithNSString:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk([sqi next])) description]];
    }
  }
  [r appendWithNSString:[self getBracketClose]];
}

- (void)prefixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  [((JavaLangStringBuilder *) nil_chk(r)) appendWithNSString:[self getOperatorName]];
  [r appendWithNSString:[self getBracketOpen]];
  if ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    [r appendWithNSString:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk([sqi next])) description]];
    while ([sqi hasNext]) {
      [r appendWithNSString:[self getPrefixSeparator]];
      [r appendWithNSString:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk([sqi next])) description]];
    }
  }
  [r appendWithNSString:[self getBracketClose]];
}

- (jboolean)isFieldsSubQueryAcceptable {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    if ([((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(([sqi next]))) isFieldsSubQueryAcceptable]) {
      return YES;
    }
  }
  return NO;
}

- (void)dealloc {
  RELEASE_(opName_);
  RELEASE_(queries_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withBoolean:withNSString:", "ComposedQuery", NULL, 0x1, NULL, NULL },
    { "recomposeWithJavaUtilList:", "recompose", "V", 0x4, NULL, NULL },
    { "getOperatorName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSubQueriesIterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "getNrSubQueries", NULL, "I", 0x1, NULL, NULL },
    { "getSubQueryWithInt:", "getSubQuery", "Lorg.apache.lucene.queryparser.surround.query.SrndQuery;", 0x1, NULL, NULL },
    { "isOperatorInfix", NULL, "Z", 0x1, NULL, NULL },
    { "makeLuceneSubQueriesFieldWithNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneSubQueriesField", "Ljava.util.List;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getPrefixSeparator", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "getBracketOpen", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "getBracketClose", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "infixToStringWithJavaLangStringBuilder:", "infixToString", "V", 0x4, NULL, NULL },
    { "prefixToStringWithJavaLangStringBuilder:", "prefixToString", "V", 0x4, NULL, NULL },
    { "isFieldsSubQueryAcceptable", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "opName_", NULL, 0x4, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "queries_", NULL, 0x4, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/queryparser/surround/query/SrndQuery;>;", .constantValue.asLong = 0 },
    { "operatorInfix_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryComposedQuery = { 2, "ComposedQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x401, 15, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryComposedQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryComposedQuery_initWithJavaUtilList_withBoolean_withNSString_(OrgApacheLuceneQueryparserSurroundQueryComposedQuery *self, id<JavaUtilList> qs, jboolean operatorInfix, NSString *opName) {
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(self);
  [self recomposeWithJavaUtilList:qs];
  self->operatorInfix_ = operatorInfix;
  JreStrongAssign(&self->opName_, opName);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryComposedQuery)
