//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/NoTokenFoundQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/NoTokenFoundQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init(self);
  return self;
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper {
  return @"[NTF]";
}

- (NSString *)description {
  return @"<notokenfound/>";
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *) check_class_cast([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode class]);
  return clone;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NoTokenFoundQueryNode", NULL, 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode = { 2, "NoTokenFoundQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *self) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init() {
  OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode)
