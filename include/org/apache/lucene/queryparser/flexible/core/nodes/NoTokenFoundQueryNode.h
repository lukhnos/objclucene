//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/NoTokenFoundQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_) && (OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_INCLUDE_ALL")