//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanQueryBuilderFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory))
#define OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_

#define RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSpansSpanQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Factory for <code>SpanQueryBuilder</code>s
 */
@interface OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory : NSObject < OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)init;

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)builder;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *new_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *create_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory")
