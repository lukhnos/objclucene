//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanNearBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanNearBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/builders/SpanNearBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder, factory_, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *slopString = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(e, @"slop");
  jint slop = JavaLangInteger_parseIntWithNSString_(slopString);
  jboolean inOrder = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"inOrder", false);
  id<JavaUtilList> spans = create_JavaUtilArrayList_init();
  for (id<OrgW3cDomNode> kid = JreRetainedLocalValue([((id<OrgW3cDomElement>) nil_chk(e)) getFirstChild]); kid != nil; kid = [kid getNextSibling]) {
    if ([kid getNodeType] == OrgW3cDomNode_ELEMENT_NODE) {
      [spans addWithId:[((id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>) nil_chk(factory_)) getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>) cast_check(kid, OrgW3cDomElement_class_())]];
    }
  }
  IOSObjectArray *spanQueries = [spans toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[spans size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]];
  return create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(spanQueries, slop, inOrder);
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:);
  methods[1].selector = @selector(getSpanQueryWithOrgW3cDomElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", "LOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder;", "getSpanQuery", "LOrgW3cDomElement;", "LOrgApacheLuceneQueryparserXmlParserException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder = { "SpanNearBuilder", "org.apache.lucene.queryparser.xml.builders", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder *self, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder *new_OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder *create_OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersSpanNearBuilder)
