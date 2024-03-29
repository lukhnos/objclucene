//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BoostQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchNoDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBoostQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]]) {
    id<JavaUtilList> children = JreRetainedLocalValue([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getChildren]);
    if (children != nil && [children size] > 0) {
      for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in children) {
        if (!([child isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode class]])) {
          return node;
        }
      }
    }
    return create_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchNoDocsQueryNode_init();
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x4, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x4, 3, 1, 2, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x4, 4, 5, 2, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[2].selector = @selector(preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[3].selector = @selector(setChildrenOrderWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "postProcessNode", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;", "preProcessNode", "setChildrenOrder", "LJavaUtilList;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor = { "NoChildOptimizationQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.core.processors", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor)
