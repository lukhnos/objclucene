//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/TermRangeQueryNode.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/TermRangeQueryNode.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *)lower
                    withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *)upper
                                                                      withBoolean:(jboolean)lowerInclusive
                                                                      withBoolean:(jboolean)upperInclusive {
  OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withBoolean_withBoolean_(self, lower, upper, lowerInclusive, upperInclusive);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:withBoolean:withBoolean:", "TermRangeQueryNode", NULL, 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.queryparser.flexible.core.nodes.FieldQueryNode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode = { 2, "TermRangeQueryNode", "org.apache.lucene.queryparser.flexible.standard.nodes", NULL, 0x1, 1, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode<Lorg/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode;>;" };
  return &_OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withBoolean_withBoolean_(OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *self, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *lower, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *upper, jboolean lowerInclusive, jboolean upperInclusive) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init(self);
  [self setBoundsWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:lower withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:upper withBoolean:lowerInclusive withBoolean:upperInclusive];
}

OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withBoolean_withBoolean_(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *lower, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *upper, jboolean lowerInclusive, jboolean upperInclusive) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *self = [OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_withBoolean_withBoolean_(self, lower, upper, lowerInclusive, upperInclusive);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode)
