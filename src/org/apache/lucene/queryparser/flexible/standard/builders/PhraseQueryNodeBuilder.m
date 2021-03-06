//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"

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
  id<JavaUtilList> children = [((OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *) nil_chk(phraseNode)) getChildren];
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
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PhraseQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder = { 2, "PhraseQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
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
