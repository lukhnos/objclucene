//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanFirstBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase 1
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"

@class OrgApacheLuceneSearchSpansSpanQuery;
@protocol OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>SpanFirstQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder : OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)factory;

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *self, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *new_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *create_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder")
