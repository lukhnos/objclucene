//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BoostingTermBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/BoostingTermBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"
#include "org/apache/lucene/search/payloads/AveragePayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadTermQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  NSString *value = OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(e);
  OrgApacheLuceneSearchPayloadsPayloadTermQuery *btq = [new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_([new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(fieldName, value) autorelease], [new_OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init() autorelease]) autorelease];
  [btq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return btq;
}

- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSpanQueryWithOrgW3cDomElement:", "getSpanQuery", "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder = { 2, "BoostingTermBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder_init(OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder *self) {
  OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder_init() {
  OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersBoostingTermBuilder)
