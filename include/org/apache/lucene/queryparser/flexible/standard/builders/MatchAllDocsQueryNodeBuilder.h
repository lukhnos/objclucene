//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/MatchAllDocsQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_) && (OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_

#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchMatchAllDocsQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchMatchAllDocsQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_INCLUDE_ALL")
