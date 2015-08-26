//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/FilterBuilderFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlFilterBuilderFactory_RESTRICT
#define OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlFilterBuilderFactory_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlFilterBuilderFactory_) && (OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlFilterBuilderFactory_

#define OrgApacheLuceneQueryparserXmlFilterBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlFilterBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class JavaUtilHashMap;
@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlFilterBuilderFactory : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder > {
 @public
  JavaUtilHashMap *builders_;
}

#pragma mark Public

- (instancetype)init;

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlFilterBuilder:(id<OrgApacheLuceneQueryparserXmlFilterBuilder>)builder;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)n;

- (id<OrgApacheLuceneQueryparserXmlFilterBuilder>)getFilterBuilderWithNSString:(NSString *)nodeName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlFilterBuilderFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlFilterBuilderFactory, builders_, JavaUtilHashMap *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init(OrgApacheLuceneQueryparserXmlFilterBuilderFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlFilterBuilderFactory *new_OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlFilterBuilderFactory)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlFilterBuilderFactory_INCLUDE_ALL")
