//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BooleanQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/BooleanQueryBuilder.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"
#include "org/w3c/dom/NodeList.h"

@interface OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder, factory_, id<OrgApacheLuceneQueryparserXmlQueryBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  OrgApacheLuceneSearchBooleanQuery_Builder *bq = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  [bq setDisableCoordWithBoolean:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"disableCoord", NO)];
  [bq setMinimumNumberShouldMatchWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minimumNumberShouldMatch", 0)];
  id<OrgW3cDomNodeList> nl = [((id<OrgW3cDomElement>) nil_chk(e)) getChildNodes];
  for (jint i = 0; i < [((id<OrgW3cDomNodeList>) nil_chk(nl)) getLength]; i++) {
    id<OrgW3cDomNode> node = [nl itemWithInt:i];
    if ([((NSString *) nil_chk([((id<OrgW3cDomNode>) nil_chk(node)) getNodeName])) isEqual:@"Clause"]) {
      id<OrgW3cDomElement> clauseElem = (id<OrgW3cDomElement>) check_protocol_cast(node, OrgW3cDomElement_class_());
      OrgApacheLuceneSearchBooleanClause_OccurEnum *occurs = OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(clauseElem);
      id<OrgW3cDomElement> clauseQuery = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(clauseElem);
      OrgApacheLuceneSearchQuery *q = [((id<OrgApacheLuceneQueryparserXmlQueryBuilder>) nil_chk(factory_)) getQueryWithOrgW3cDomElement:clauseQuery];
      [bq addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(q, occurs) autorelease]];
    }
  }
  OrgApacheLuceneSearchBooleanQuery *q = [bq build];
  [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(q)) setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return q;
}

+ (OrgApacheLuceneSearchBooleanClause_OccurEnum *)getOccursValueWithOrgW3cDomElement:(id<OrgW3cDomElement>)clauseElem {
  return OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(clauseElem);
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserXmlQueryBuilder:", "BooleanQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getOccursValueWithOrgW3cDomElement:", "getOccursValue", "Lorg.apache.lucene.search.BooleanClause$Occur;", 0x8, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.queryparser.xml.QueryBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder = { 2, "BooleanQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) {
  NSObject_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) {
  OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(self, factory);
  return self;
}

OrgApacheLuceneSearchBooleanClause_OccurEnum *OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(id<OrgW3cDomElement> clauseElem) {
  OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initialize();
  NSString *occs = [((id<OrgW3cDomElement>) nil_chk(clauseElem)) getAttributeWithNSString:@"occurs"];
  if (occs == nil || [@"should" equalsIgnoreCase:occs]) {
    return JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD);
  }
  else if ([@"must" equalsIgnoreCase:occs]) {
    return JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST);
  }
  else if ([@"mustNot" equalsIgnoreCase:occs]) {
    return JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST_NOT);
  }
  else if ([@"filter" isEqual:occs]) {
    return JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, FILTER);
  }
  @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"Invalid value for \"occurs\" attribute of clause:", occs)) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder)
