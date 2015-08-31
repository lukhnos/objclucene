//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/PrefixWildcardQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/PrefixWildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/WildcardQueryNode.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                     withInt:(jint)begin
                                     withInt:(jint)end {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *)fqn {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(self, fqn);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@$@$", @"<prefixWildcard field='", self->field_, @"' term='", self->text_, @"'/>");
}

- (OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *)cloneTree {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *) check_class_cast([super cloneTree], [OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode class]);
  return clone;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangCharSequence:withJavaLangCharSequence:withInt:withInt:", "PrefixWildcardQueryNode", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode:", "PrefixWildcardQueryNode", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.standard.nodes.PrefixWildcardQueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode = { 2, "PrefixWildcardQueryNode", "org.apache.lucene.queryparser.flexible.standard.nodes", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
}

OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *self = [OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
  return self;
}

void OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *self, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *fqn) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(fqn)) getField], [fqn getText], [fqn getBegin], [fqn getEnd]);
}

OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *fqn) {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *self = [OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(self, fqn);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode)