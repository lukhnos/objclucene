//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor : NSObject

@end

@implementation OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "process", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x401, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:", "setQueryConfigHandler", "V", 0x401, NULL, NULL },
    { "getQueryConfigHandler", NULL, "Lorg.apache.lucene.queryparser.flexible.core.config.QueryConfigHandler;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor = { 2, "QueryNodeProcessor", "org.apache.lucene.queryparser.flexible.core.processors", NULL, 0x609, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor)
