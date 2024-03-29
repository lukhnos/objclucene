//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder.h"
#include "org/apache/lucene/search/Query.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *groupNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *) cast_chk(queryNode, [OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode class]);
  return (OrgApacheLuceneSearchQuery *) cast_chk([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([((OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *) nil_chk((groupNode))) getChild])) getTagWithNSString:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, QUERY_TREE_BUILDER_TAGID)], [OrgApacheLuceneSearchQuery class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "build", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder = { "GroupQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder)
