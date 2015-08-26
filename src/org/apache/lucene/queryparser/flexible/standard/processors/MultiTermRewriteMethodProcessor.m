//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/WildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.h"
#include "org/apache/lucene/search/MultiTermQuery.h"

NSString *OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID_ = @"MultiTermRewriteMethodConfiguration";

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode class]]) {
    OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *rewriteMethod = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_TERM_REWRITE_METHOD_)];
    if (rewriteMethod == nil) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"StandardQueryConfigHandler.ConfigurationKeys.MULTI_TERM_REWRITE_METHOD should be set on the QueryConfigHandler") autorelease];
    }
    [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID_ withId:rewriteMethod];
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, NULL, NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, NULL, NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_ID_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor = { 2, "MultiTermRewriteMethodProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init() {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *self = [OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor alloc];
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor)
