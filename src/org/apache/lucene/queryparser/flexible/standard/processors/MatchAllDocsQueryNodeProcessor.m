//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/MatchAllDocsQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchAllDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MatchAllDocsQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *fqn = (OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) cast_chk(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]);
    if ([((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk([((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(fqn)) getField])) description])) isEqual:@"*"] && [((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk([fqn getText])) description])) isEqual:@"*"]) {
      return create_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_init();
    }
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
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MatchAllDocsQueryNodeProcessor", NULL, 0x1, NULL, NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor = { 2, "MatchAllDocsQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor)
