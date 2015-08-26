//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/OrQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_) && (OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"

@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_initWithJavaUtilList_(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode *self, id<JavaUtilList> clauses);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_INCLUDE_ALL")
