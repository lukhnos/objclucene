//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode : NSObject

@end

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "getChildren", NULL, "Ljava.util.List;", 0x401, NULL, "()Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
    { "isLeaf", NULL, "Z", 0x401, NULL, NULL },
    { "containsTagWithNSString:", "containsTag", "Z", 0x401, NULL, NULL },
    { "getTagWithNSString:", "getTag", "Ljava.lang.Object;", 0x401, NULL, NULL },
    { "getParent", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x401, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x401, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "addWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "add", "V", 0x401, NULL, NULL },
    { "addWithJavaUtilList:", "add", "V", 0x401, NULL, "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)V" },
    { "setWithJavaUtilList:", "set", "V", 0x401, NULL, "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)V" },
    { "setTagWithNSString:withId:", "setTag", "V", 0x401, NULL, NULL },
    { "unsetTagWithNSString:", "unsetTag", "V", 0x401, NULL, NULL },
    { "getTagMap", NULL, "Ljava.util.Map;", 0x401, NULL, "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;" },
    { "removeFromParent", NULL, "V", 0x401, NULL, NULL },
    { "removeChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "removeChildren", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode = { 2, "QueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x609, 16, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode)
