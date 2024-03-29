//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processor removes every <code>BooleanQueryNode</code> that contains only one
  child and returns this child.If this child is <code>ModifierQueryNode</code> that
  was defined by the user.
 A modifier is not defined by the user when it's a 
 <code>BooleanModifierNode</code>
 - seealso: ModifierQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype __nonnull)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor")
