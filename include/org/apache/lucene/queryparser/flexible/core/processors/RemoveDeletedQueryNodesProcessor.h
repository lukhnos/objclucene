//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/RemoveDeletedQueryNodesProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_) && (OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_

#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_INCLUDE_ALL")
