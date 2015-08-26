//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/ConstantScoreQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilderFactory.h"
#include "org/apache/lucene/queryparser/xml/builders/ConstantScoreQueryBuilder.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder () {
 @public
  OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder, queryFactory_, OrgApacheLuceneQueryparserXmlQueryBuilderFactory *)

@implementation OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory:(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *)queryFactory {
  OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(self, queryFactory);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgW3cDomElement> queryElem = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(e);
  OrgApacheLuceneSearchQuery *q = [new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_([((OrgApacheLuceneQueryparserXmlQueryBuilderFactory *) nil_chk(queryFactory_)) getQueryWithOrgW3cDomElement:queryElem]) autorelease];
  [q setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return q;
}

- (void)dealloc {
  RELEASE_(queryFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory:", "ConstantScoreQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "queryFactory_", NULL, 0x12, "Lorg.apache.lucene.queryparser.xml.QueryBuilderFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder = { 2, "ConstantScoreQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *self, OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory) {
  NSObject_init(self);
  JreStrongAssign(&self->queryFactory_, queryFactory);
}

OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory) {
  OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(self, queryFactory);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder)
