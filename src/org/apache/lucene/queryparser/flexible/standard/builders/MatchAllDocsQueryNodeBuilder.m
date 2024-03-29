//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/MatchAllDocsQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchAllDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/MatchAllDocsQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.h"
#include "org/apache/lucene/search/MatchAllDocsQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/builders/MatchAllDocsQueryNodeBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchMatchAllDocsQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  if (!([queryNode isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode class]])) {
    @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, LUCENE_QUERY_CONVERSION_ERROR), [IOSObjectArray arrayWithObjects:(id[]){ [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(queryNode)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:create_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init()], [[queryNode java_getClass] getName] } count:2 type:NSObject_class_()]));
  }
  return create_OrgApacheLuceneSearchMatchAllDocsQuery_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchMatchAllDocsQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "build", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder = { "MatchAllDocsQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder)
