//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief <p>
  A <code>NoChildOptimizationQueryNodeProcessor</code> removes every
  BooleanQueryNode, BoostQueryNode, TokenizedPhraseQueryNode or
  ModifierQueryNode that do not have a valid children.
 </p>
  <p>
  Example: When the children of these nodes are removed for any reason then the
  nodes may become invalid. 
 </p>
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype __nonnull)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor")
