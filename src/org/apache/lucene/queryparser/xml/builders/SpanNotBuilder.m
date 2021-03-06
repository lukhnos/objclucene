//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanNotBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanNotBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"
#include "org/apache/lucene/search/spans/SpanNotQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder, factory_, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgW3cDomElement> includeElem = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"Include");
  includeElem = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(includeElem);
  id<OrgW3cDomElement> excludeElem = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"Exclude");
  excludeElem = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(excludeElem);
  OrgApacheLuceneSearchSpansSpanQuery *include = [((id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>) nil_chk(factory_)) getSpanQueryWithOrgW3cDomElement:includeElem];
  OrgApacheLuceneSearchSpansSpanQuery *exclude = [factory_ getSpanQueryWithOrgW3cDomElement:excludeElem];
  OrgApacheLuceneSearchSpansSpanNotQuery *snq = create_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(include, exclude);
  [snq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return snq;
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:", "SpanNotBuilder", NULL, 0x1, NULL, NULL },
    { "getSpanQueryWithOrgW3cDomElement:", "getSpanQuery", "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.queryparser.xml.builders.SpanQueryBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder = { 2, "SpanNotBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder *self, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder *new_OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder *create_OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersSpanNotBuilder)
