//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BooleanQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchBooleanClause_Occur;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>BooleanQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

#pragma mark Package-Private

+ (OrgApacheLuceneSearchBooleanClause_Occur *)getOccursValueWithOrgW3cDomElement:(id<OrgW3cDomElement>)clauseElem;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanClause_Occur *OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(id<OrgW3cDomElement> clauseElem);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder")
