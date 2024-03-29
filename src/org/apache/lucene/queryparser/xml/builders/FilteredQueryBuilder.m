//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/FilteredQueryBuilder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/FilteredQueryBuilder.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/builders/FilteredQueryBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlFilterBuilder> filterFactory_;
  id<OrgApacheLuceneQueryparserXmlQueryBuilder> queryFactory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder, filterFactory_, id<OrgApacheLuceneQueryparserXmlFilterBuilder>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder, queryFactory_, id<OrgApacheLuceneQueryparserXmlQueryBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlFilterBuilder:(id<OrgApacheLuceneQueryparserXmlFilterBuilder>)filterFactory
                     withOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)queryFactory {
  OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_(self, filterFactory, queryFactory);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgW3cDomElement> filterElement = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"Filter");
  filterElement = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(filterElement);
  OrgApacheLuceneSearchFilter *f = JreRetainedLocalValue([((id<OrgApacheLuceneQueryparserXmlFilterBuilder>) nil_chk(filterFactory_)) getFilterWithOrgW3cDomElement:filterElement]);
  id<OrgW3cDomElement> queryElement = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"Query");
  queryElement = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(queryElement);
  OrgApacheLuceneSearchQuery *q = JreRetainedLocalValue([((id<OrgApacheLuceneQueryparserXmlQueryBuilder>) nil_chk(queryFactory_)) getQueryWithOrgW3cDomElement:queryElement]);
  OrgApacheLuceneSearchFilteredQuery *fq = create_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(q, f);
  [fq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return fq;
}

- (void)dealloc {
  RELEASE_(filterFactory_);
  RELEASE_(queryFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserXmlFilterBuilder:withOrgApacheLuceneQueryparserXmlQueryBuilder:);
  methods[1].selector = @selector(getQueryWithOrgW3cDomElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "filterFactory_", "LOrgApacheLuceneQueryparserXmlFilterBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "queryFactory_", "LOrgApacheLuceneQueryparserXmlQueryBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserXmlFilterBuilder;LOrgApacheLuceneQueryparserXmlQueryBuilder;", "getQuery", "LOrgW3cDomElement;", "LOrgApacheLuceneQueryparserXmlParserException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder = { "FilteredQueryBuilder", "org.apache.lucene.queryparser.xml.builders", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlFilterBuilder> filterFactory, id<OrgApacheLuceneQueryparserXmlQueryBuilder> queryFactory) {
  NSObject_init(self);
  JreStrongAssign(&self->filterFactory_, filterFactory);
  JreStrongAssign(&self->queryFactory_, queryFactory);
}

OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> filterFactory, id<OrgApacheLuceneQueryparserXmlQueryBuilder> queryFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder, initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_, filterFactory, queryFactory)
}

OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> filterFactory, id<OrgApacheLuceneQueryparserXmlQueryBuilder> queryFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder, initWithOrgApacheLuceneQueryparserXmlFilterBuilder_withOrgApacheLuceneQueryparserXmlQueryBuilder_, filterFactory, queryFactory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersFilteredQueryBuilder)
