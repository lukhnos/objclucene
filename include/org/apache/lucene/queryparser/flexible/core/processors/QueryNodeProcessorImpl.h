//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl))
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief <p>
  This is a default implementation for the <code>QueryNodeProcessor</code>
  interface, it's an abstract class, so it should be extended by classes that
  want to process a <code>QueryNode</code> tree.
 </p>
  <p>
  This class process <code>QueryNode</code>s from left to right in the tree. While
  it's walking down the tree, for every node, 
 <code>preProcessNode(QueryNode)</code> is invoked. After a node's children are
  processed, <code>postProcessNode(QueryNode)</code> is invoked for that node. 
 <code>setChildrenOrder(List)</code> is invoked before 
 <code>postProcessNode(QueryNode)</code> only if the node has at least one child,
  in <code>setChildrenOrder(List)</code> the implementor might redefine the
  children order or remove any children from the children list. 
 </p>
  <p>
  Here is an example about how it process the nodes: 
 </p>
   
 @code

       a
      / \
     b   e
    / \
   c   d 
  
@endcode
  
  Here is the order the methods would be invoked for the tree described above:  
 @code

       preProcessNode( a );
       preProcessNode( b );
       preProcessNode( c );
       postProcessNode( c );
       preProcessNode( d );
       postProcessNode( d );
       setChildrenOrder( bChildrenList );
       postProcessNode( b );
       preProcessNode( e );
       postProcessNode( e );
       setChildrenOrder( aChildrenList );
       postProcessNode( a ) 
  
@endcode
 - seealso: org.apache.lucene.queryparser.flexible.core.processors.QueryNodeProcessor
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl : NSObject < OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor >

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler;

/*!
 @brief For reference about this method check: 
 <code>QueryNodeProcessor.getQueryConfigHandler()</code>.
 @return QueryConfigHandler the query configuration handler to be set.
 - seealso: QueryNodeProcessor#setQueryConfigHandler(QueryConfigHandler)
 - seealso: QueryConfigHandler
 */
- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

/*!
 @brief For reference about this method check: 
 <code>QueryNodeProcessor.setQueryConfigHandler(QueryConfigHandler)</code>.
 @param queryConfigHandler the query configuration handler to be set.
 - seealso: QueryNodeProcessor#getQueryConfigHandler()
 - seealso: QueryConfigHandler
 */
- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler;

#pragma mark Protected

/*!
 @brief This method is invoked for every node when walking up the tree.
 @param node node the query node to be post-processed
 @return a query node
 @throw QueryNodeException
 if something goes wrong during the query node processing
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

/*!
 @brief This method is invoked for every node when walking down the tree.
 @param node the query node to be pre-processed
 @return a query node
 @throw QueryNodeException
 if something goes wrong during the query node processing
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

/*!
 @brief This method is called every time a child is processed.
 @param queryTree the query node child to be processed
 @throw QueryNodeException
 if something goes wrong during the query node processing
 */
- (void)processChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

/*!
 @brief This method is invoked for every node that has at least on child.It's
  invoked right before <code>postProcessNode(QueryNode)</code> is invoked.
 @param children the list containing all current node's children
 @return a new list containing all children that should be set to the
          current node
 @throw QueryNodeException
 if something goes wrong during the query node processing
 */
- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl *self);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl")
