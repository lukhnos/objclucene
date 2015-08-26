//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BoostingQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/BoostingQuery.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/BoostingQueryBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder, factory_, id<OrgApacheLuceneQueryparserXmlQueryBuilder>)

static jfloat OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_DEFAULT_BOOST_ = 0.01f;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder, DEFAULT_BOOST_, jfloat)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder, DEFAULT_BOOST_, jfloat)
@implementation OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgW3cDomElement> mainQueryElem = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"Query");
  mainQueryElem = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(mainQueryElem);
  OrgApacheLuceneSearchQuery *mainQuery = [((id<OrgApacheLuceneQueryparserXmlQueryBuilder>) nil_chk(factory_)) getQueryWithOrgW3cDomElement:mainQueryElem];
  id<OrgW3cDomElement> boostQueryElem = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, @"BoostQuery");
  jfloat boost = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(boostQueryElem, @"boost", OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_DEFAULT_BOOST_);
  boostQueryElem = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(boostQueryElem);
  OrgApacheLuceneSearchQuery *boostQuery = [factory_ getQueryWithOrgW3cDomElement:boostQueryElem];
  OrgApacheLuceneQueriesBoostingQuery *bq = [new_OrgApacheLuceneQueriesBoostingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withFloat_(mainQuery, boostQuery, boost) autorelease];
  [bq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return bq;
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserXmlQueryBuilder:", "BoostingQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_BOOST_", NULL, 0xa, "F", &OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_DEFAULT_BOOST_, NULL, .constantValue.asLong = 0 },
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.queryparser.xml.QueryBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder = { 2, "BoostingQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) {
  NSObject_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) {
  OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(self, factory);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder)
