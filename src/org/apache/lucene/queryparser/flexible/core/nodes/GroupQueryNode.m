//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeError.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)query {
  OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, query);
  return self;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)getChild {
  return [((id<JavaUtilList>) nil_chk([self getChildren])) getWithInt:0];
}

- (NSString *)description {
  return JreStrcat("$$$", @"<group>\n", [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([self getChild])) description], @"\n</group>");
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  if ([self getChild] == nil) return @"";
  return JreStrcat("$@$", @"( ", [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([self getChild])) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser], @" )");
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode class]);
  return clone;
}

- (void)setChildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)child {
  id<JavaUtilList> list = create_JavaUtilArrayList_init();
  [list addWithId:child];
  [self setWithJavaUtilList:list];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[1].selector = @selector(getChild);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  methods[4].selector = @selector(cloneTree);
  methods[5].selector = @selector(setChildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "toString", "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;", "LJavaLangCloneNotSupportedException;", "setChild" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode = { "GroupQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> query) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  if (query == nil) {
    @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, PARAMETER_VALUE_NOT_SUPPORTED), [IOSObjectArray arrayWithObjects:(id[]){ @"query", @"null" } count:2 type:NSObject_class_()]));
  }
  [self allocate];
  [self setLeafWithBoolean:false];
  [self addWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:query];
}

OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_, query)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode)
