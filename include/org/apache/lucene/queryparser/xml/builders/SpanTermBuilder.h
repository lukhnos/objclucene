//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanTermBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_

#define OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"

@class OrgApacheLuceneSearchSpansSpanQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder : OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_init(OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder *new_OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersSpanTermBuilder_INCLUDE_ALL")
