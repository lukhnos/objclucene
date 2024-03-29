//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/QueryBuilderFactory.java
//

#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilderFactory.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/QueryBuilderFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserXmlQueryBuilderFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)n {
  id<OrgApacheLuceneQueryparserXmlQueryBuilder> builder = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(builders_)) getWithId:[((id<OrgW3cDomElement>) nil_chk(n)) getNodeName]]);
  if (builder == nil) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"No QueryObjectBuilder defined for node ", [n getNodeName]));
  }
  return [builder getQueryWithOrgW3cDomElement:n];
}

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)builder {
  [((JavaUtilHashMap *) nil_chk(builders_)) putWithId:nodeName withId:builder];
}

- (id<OrgApacheLuceneQueryparserXmlQueryBuilder>)getQueryBuilderWithNSString:(NSString *)nodeName {
  return [((JavaUtilHashMap *) nil_chk(builders_)) getWithId:nodeName];
}

- (void)dealloc {
  RELEASE_(builders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserXmlQueryBuilder;", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getQueryWithOrgW3cDomElement:);
  methods[2].selector = @selector(addBuilderWithNSString:withOrgApacheLuceneQueryparserXmlQueryBuilder:);
  methods[3].selector = @selector(getQueryBuilderWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "builders_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x0, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "getQuery", "LOrgW3cDomElement;", "LOrgApacheLuceneQueryparserXmlParserException;", "addBuilder", "LNSString;LOrgApacheLuceneQueryparserXmlQueryBuilder;", "getQueryBuilder", "LNSString;", "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/queryparser/xml/QueryBuilder;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlQueryBuilderFactory = { "QueryBuilderFactory", "org.apache.lucene.queryparser.xml", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlQueryBuilderFactory;
}

@end

void OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->builders_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneQueryparserXmlQueryBuilderFactory *new_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlQueryBuilderFactory, init)
}

OrgApacheLuceneQueryparserXmlQueryBuilderFactory *create_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlQueryBuilderFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlQueryBuilderFactory)
