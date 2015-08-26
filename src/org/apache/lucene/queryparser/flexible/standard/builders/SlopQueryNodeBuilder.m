//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/SlopQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/SlopQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/SlopQueryNodeBuilder.h"
#include "org/apache/lucene/search/MultiPhraseQuery.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder_init(self);
  return self;
}

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleCoreNodesSlopQueryNode *phraseSlopNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesSlopQueryNode *) check_class_cast(queryNode, [OrgApacheLuceneQueryparserFlexibleCoreNodesSlopQueryNode class]);
  OrgApacheLuceneSearchQuery *query = (OrgApacheLuceneSearchQuery *) check_class_cast([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([((OrgApacheLuceneQueryparserFlexibleCoreNodesSlopQueryNode *) nil_chk(phraseSlopNode)) getChild])) getTagWithNSString:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, QUERY_TREE_BUILDER_TAGID_)], [OrgApacheLuceneSearchQuery class]);
  if ([query isKindOfClass:[OrgApacheLuceneSearchPhraseQuery class]]) {
    OrgApacheLuceneSearchPhraseQuery_Builder *builder = [new_OrgApacheLuceneSearchPhraseQuery_Builder_init() autorelease];
    [builder setSlopWithInt:[phraseSlopNode getValue]];
    OrgApacheLuceneSearchPhraseQuery *pq = (OrgApacheLuceneSearchPhraseQuery *) check_class_cast(query, [OrgApacheLuceneSearchPhraseQuery class]);
    IOSObjectArray *terms = [((OrgApacheLuceneSearchPhraseQuery *) nil_chk(pq)) getTerms];
    IOSIntArray *positions = [pq getPositions];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms))->size_; ++i) {
      [builder addWithOrgApacheLuceneIndexTerm:IOSObjectArray_Get(terms, i) withInt:IOSIntArray_Get(nil_chk(positions), i)];
    }
    query = [builder build];
    [((OrgApacheLuceneSearchQuery *) nil_chk(query)) setBoostWithFloat:[pq getBoost]];
  }
  else {
    [((OrgApacheLuceneSearchMultiPhraseQuery *) nil_chk(((OrgApacheLuceneSearchMultiPhraseQuery *) check_class_cast(query, [OrgApacheLuceneSearchMultiPhraseQuery class])))) setSlopWithInt:[phraseSlopNode getValue]];
  }
  return query;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SlopQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder = { 2, "SlopQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder_init() {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder *self = [OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder alloc];
  OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder)
