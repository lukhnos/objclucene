//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/DummyQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_) && (OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_

#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchTermQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchTermQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_INCLUDE_ALL")
