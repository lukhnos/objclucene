//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchSpansSpanQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Interface for retrieving a <code>SpanQuery</code>.
 */
@protocol OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder < OrgApacheLuceneQueryparserXmlQueryBuilder, JavaObject >

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder")
