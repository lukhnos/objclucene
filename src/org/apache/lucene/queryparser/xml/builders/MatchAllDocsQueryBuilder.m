//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/MatchAllDocsQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/MatchAllDocsQueryBuilder.h"
#include "org/apache/lucene/search/MatchAllDocsQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  return [new_OrgApacheLuceneSearchMatchAllDocsQuery_init() autorelease];
}

- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder = { 2, "MatchAllDocsQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init() {
  OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder)
