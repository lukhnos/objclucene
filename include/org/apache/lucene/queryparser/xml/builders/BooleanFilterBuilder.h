//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BooleanFilterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>BooleanFilter</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder >

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserXmlFilterBuilder:(id<OrgApacheLuceneQueryparserXmlFilterBuilder>)factory;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *self, id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder *create_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(id<OrgApacheLuceneQueryparserXmlFilterBuilder> factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder")
