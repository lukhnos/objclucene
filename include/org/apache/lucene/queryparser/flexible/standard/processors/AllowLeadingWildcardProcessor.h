//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/AllowLeadingWildcardProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_) && (OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_

#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_INCLUDE_ALL")
