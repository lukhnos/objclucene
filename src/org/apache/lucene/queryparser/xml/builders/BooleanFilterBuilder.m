//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BooleanFilterBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/BooleanFilter.h"
#include "org/apache/lucene/queries/FilterClause.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/BooleanFilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/BooleanQueryBuilder.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"
#include "org/w3c/dom/NodeList.h"

@interface OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder, factory_, id<OrgApacheLuceneQueryparserXmlFilterBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlFilterBuilder:(id<OrgApacheLuceneQueryparserXmlFilterBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  OrgApacheLuceneQueriesBooleanFilter *bf = create_OrgApacheLuceneQueriesBooleanFilter_init();
  id<OrgW3cDomNodeList> nl = [((id<OrgW3cDomElement>) nil_chk(e)) getChildNodes];
  for (jint i = 0; i < [((id<OrgW3cDomNodeList>) nil_chk(nl)) getLength]; i++) {
    id<OrgW3cDomNode> node = [nl itemWithInt:i];
    if ([((NSString *) nil_chk([((id<OrgW3cDomNode>) nil_chk(node)) getNodeName])) isEqual:@"Clause"]) {
      id<OrgW3cDomElement> clauseElem = (id<OrgW3cDomElement>) cast_check(node, OrgW3cDomElement_class_());
      OrgApacheLuceneSearchBooleanClause_Occur *occurs = OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(clauseElem);
      id<OrgW3cDomElement> clauseFilter = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(clauseElem);
      OrgApacheLuceneSearchFilter *f = [((id<OrgApacheLuceneQueryparserXmlFilterBuilder>) nil_chk(factory_)) getFilterWithOrgW3cDomElement:clauseFilter];
      [bf addWithOrgApacheLuceneQueriesFilterClause:create_OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_Occur_(f, occurs)];
    }
  }
  return bf;
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserXmlFilterBuilder:", "BooleanFilterBuilder", NULL, 0x1, NULL, NULL },
    { "getFilterWithOrgW3cDomElement:", "getFilter", "Lorg.apache.lucene.search.Filter;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.queryparser.xml.FilterBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder = { 2, "BooleanFilterBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *self, id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory) {
  NSObject_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder, initWithOrgApacheLuceneQueryparserXmlFilterBuilder_, factory)
}

OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *create_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder, initWithOrgApacheLuceneQueryparserXmlFilterBuilder_, factory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder)
