//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor : NSObject

@end

@implementation OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[1].selector = @selector(setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:);
  methods[2].selector = @selector(getQueryConfigHandler);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "process", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;", "setQueryConfigHandler", "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor = { "QueryNodeProcessor", "org.apache.lucene.queryparser.flexible.core.processors", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor)
