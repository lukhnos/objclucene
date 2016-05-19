//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/BasicQueryFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/TooManyBasicQueries.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/spans/SpanTermQuery.h"

@interface OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory () {
 @public
  jint maxBasicQueries_;
  jint queriesMade_;
}

- (jboolean)atMax;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self);

@implementation OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory

- (instancetype)initWithInt:(jint)maxBasicQueries {
  OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(self, maxBasicQueries);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getNrQueriesMade {
  return queriesMade_;
}

- (jint)getMaxBasicQueries {
  return maxBasicQueries_;
}

- (NSString *)description {
  return JreStrcat("$$I$IC", [[self getClass] getName], @"(maxBasicQueries: ", maxBasicQueries_, @", queriesMade: ", queriesMade_, ')');
}

- (jboolean)atMax {
  return OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(self);
}

- (void)checkMax {
  @synchronized(self) {
    if (OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(self)) @throw create_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_([self getMaxBasicQueries]);
    queriesMade_++;
  }
}

- (OrgApacheLuceneSearchTermQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self checkMax];
  return create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
}

- (OrgApacheLuceneSearchSpansSpanTermQuery *)newSpanTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self checkMax];
  return create_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
}

- (NSUInteger)hash {
  return ((jint) [[self getClass] hash]) ^ (OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(self) ? 7 : 31 * 32);
}

- (jboolean)isEqual:(id)obj {
  if (!([obj isKindOfClass:[OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory class]])) return false;
  OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *other = (OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *) cast_chk(obj, [OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory class]);
  return OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(self) == OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(nil_chk(other));
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "BasicQueryFactory", NULL, 0x1, NULL, NULL },
    { "init", "BasicQueryFactory", NULL, 0x1, NULL, NULL },
    { "getNrQueriesMade", NULL, "I", 0x1, NULL, NULL },
    { "getMaxBasicQueries", NULL, "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "atMax", NULL, "Z", 0x2, NULL, NULL },
    { "checkMax", NULL, "V", 0x24, "Lorg.apache.lucene.queryparser.surround.query.TooManyBasicQueries;", NULL },
    { "newTermQueryWithOrgApacheLuceneIndexTerm:", "newTermQuery", "Lorg.apache.lucene.search.TermQuery;", 0x1, "Lorg.apache.lucene.queryparser.surround.query.TooManyBasicQueries;", NULL },
    { "newSpanTermQueryWithOrgApacheLuceneIndexTerm:", "newSpanTermQuery", "Lorg.apache.lucene.search.spans.SpanTermQuery;", 0x1, "Lorg.apache.lucene.queryparser.surround.query.TooManyBasicQueries;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxBasicQueries_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "queriesMade_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory = { 2, "BasicQueryFactory", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 11, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self, jint maxBasicQueries) {
  NSObject_init(self);
  self->maxBasicQueries_ = maxBasicQueries;
  self->queriesMade_ = 0;
}

OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *new_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(jint maxBasicQueries) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory, initWithInt_, maxBasicQueries)
}

OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *create_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(jint maxBasicQueries) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory, initWithInt_, maxBasicQueries)
}

void OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self) {
  OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_initWithInt_(self, 1024);
}

OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *new_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory, init)
}

OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *create_OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory, init)
}

jboolean OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_atMax(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *self) {
  return self->queriesMade_ >= self->maxBasicQueries_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory)
