//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/MatchAllDocsQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_

#define OrgApacheLuceneQueryparserXmlQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersMatchAllDocsQueryBuilder_INCLUDE_ALL")
