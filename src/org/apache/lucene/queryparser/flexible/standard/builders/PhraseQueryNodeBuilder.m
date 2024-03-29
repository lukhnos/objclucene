//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *phraseNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *) cast_chk(queryNode, [OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode class]);
  OrgApacheLuceneSearchPhraseQuery_Builder *builder = create_OrgApacheLuceneSearchPhraseQuery_Builder_init();
  id<JavaUtilList> children = JreRetainedLocalValue([((OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *) nil_chk(phraseNode)) getChildren]);
  if (children != nil) {
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in children) {
      OrgApacheLuceneSearchTermQuery *termQuery = (OrgApacheLuceneSearchTermQuery *) cast_chk([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) getTagWithNSString:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, QUERY_TREE_BUILDER_TAGID)], [OrgApacheLuceneSearchTermQuery class]);
      OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *termNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) cast_chk(child, [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]);
      [builder addWithOrgApacheLuceneIndexTerm:[((OrgApacheLuceneSearchTermQuery *) nil_chk(termQuery)) getTerm] withInt:[termNode getPositionIncrement]];
    }
  }
  return [builder build];
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
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder = { "PhraseQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder)
