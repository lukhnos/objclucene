//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/AnyQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_) && (OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.h"

@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
                             withInt:(jint)minimumMatchingElements;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)getField;

- (NSString *)getFieldAsString;

- (jint)getMinimumMatchingElements;

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_INCLUDE_ALL")
