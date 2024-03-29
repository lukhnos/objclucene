//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/MatchAllDocsQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>MatchAllDocsQueryNode</code> indicates that a query node tree or subtree
  will match all documents if executed in the index.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode *)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode")
