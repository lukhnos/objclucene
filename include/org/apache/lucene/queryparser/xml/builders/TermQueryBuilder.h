//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_

#define OrgApacheLuceneQueryparserXmlQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_INCLUDE_ALL")