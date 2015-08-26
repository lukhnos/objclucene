//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/OrQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/ComposedQuery.h"
#include "org/apache/lucene/queryparser/surround/query/DistanceSubQuery.h"
#include "org/apache/lucene/queryparser/surround/query/OrQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SpanNearClauseFactory.h"
#include "org/apache/lucene/queryparser/surround/query/SrndBooleanQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserSurroundQueryOrQuery

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)queries
                         withBoolean:(jboolean)infix
                        withNSString:(NSString *)opName {
  OrgApacheLuceneQueryparserSurroundQueryOrQuery_initWithJavaUtilList_withBoolean_withNSString_(self, queries, infix, opName);
  return self;
}

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  return OrgApacheLuceneQueryparserSurroundQuerySrndBooleanQuery_makeBooleanQueryWithJavaUtilList_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self makeLuceneSubQueriesFieldWithNSString:fieldName withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:qf], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD));
}

- (NSString *)distanceSubQueryNotAllowed {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    OrgApacheLuceneQueryparserSurroundQuerySrndQuery *leq = (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) check_class_cast([sqi next], [OrgApacheLuceneQueryparserSurroundQuerySrndQuery class]);
    if ([OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_() isInstance:leq]) {
      NSString *m = [((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) nil_chk(((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) check_protocol_cast(leq, OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_())))) distanceSubQueryNotAllowed];
      if (m != nil) {
        return m;
      }
    }
    else {
      return JreStrcat("$$", @"subquery not allowed: ", [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(leq)) description]);
    }
  }
  return nil;
}

- (void)addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)sncf {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    [((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) nil_chk(((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) check_protocol_cast([sqi next], OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_())))) addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:sncf];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withBoolean:withNSString:", "OrQuery", NULL, 0x1, NULL, NULL },
    { "makeLuceneQueryFieldNoBoostWithNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneQueryFieldNoBoost", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "distanceSubQueryNotAllowed", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:", "addSpanQueries", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryOrQuery = { 2, "OrQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryOrQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryOrQuery_initWithJavaUtilList_withBoolean_withNSString_(OrgApacheLuceneQueryparserSurroundQueryOrQuery *self, id<JavaUtilList> queries, jboolean infix, NSString *opName) {
  OrgApacheLuceneQueryparserSurroundQueryComposedQuery_initWithJavaUtilList_withBoolean_withNSString_(self, queries, infix, opName);
}

OrgApacheLuceneQueryparserSurroundQueryOrQuery *new_OrgApacheLuceneQueryparserSurroundQueryOrQuery_initWithJavaUtilList_withBoolean_withNSString_(id<JavaUtilList> queries, jboolean infix, NSString *opName) {
  OrgApacheLuceneQueryparserSurroundQueryOrQuery *self = [OrgApacheLuceneQueryparserSurroundQueryOrQuery alloc];
  OrgApacheLuceneQueryparserSurroundQueryOrQuery_initWithJavaUtilList_withBoolean_withNSString_(self, queries, infix, opName);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryOrQuery)
