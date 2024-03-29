//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief A <code>QueryNodeProcessor</code> is an interface for classes that process a 
 <code>QueryNode</code> tree.
 <p>
  The implementor of this class should perform some operation on a query node
  tree and return the same or another query node tree. 
 <p>
  It also may carry a <code>QueryConfigHandler</code> object that contains
  configuration about the query represented by the query tree or the
  collection/index where it's intended to be executed. 
 <p>
  In case there is any <code>QueryConfigHandler</code> associated to the query tree
  to be processed, it should be set using 
 <code>QueryNodeProcessor.setQueryConfigHandler(QueryConfigHandler)</code> before 
 <code>QueryNodeProcessor.process(QueryNode)</code> is invoked.
 - seealso: QueryNode
 - seealso: QueryNodeProcessor
 - seealso: QueryConfigHandler
 */
@protocol OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor < JavaObject >

/*!
 @brief Processes a query node tree.It may return the same or another query tree.
 I should never return <code>null</code>.
 @param queryTree tree root node
 @return the processed query tree
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

/*!
 @brief Sets the <code>QueryConfigHandler</code> associated to the query tree.
 */
- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler;

/*!
 @brief Returns the <code>QueryConfigHandler</code> associated to the query tree if any,
  otherwise it returns <code>null</code>
 @return the <code>QueryConfigHandler</code> associated to the query tree if any,
          otherwise it returns <code>null</code>
 */
- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor")
