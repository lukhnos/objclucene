//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/OpaqueQueryNode.java
//

#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/OpaqueQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/nodes/OpaqueQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode () {
 @public
  id<JavaLangCharSequence> schema_;
  id<JavaLangCharSequence> value_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode, schema_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode, value_, id<JavaLangCharSequence>)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)schema
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)value {
  OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_(self, schema, value);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@$@$", @"<opaque schema='", self->schema_, @"' value='", self->value_, @"'/>");
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  return JreStrcat("C@$@C", '@', self->schema_, @":'", self->value_, '\'');
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *) nil_chk(clone))->schema_, self->schema_);
  JreStrongAssign(&clone->value_, self->value_);
  return clone;
}

- (id<JavaLangCharSequence>)getSchema {
  return self->schema_;
}

- (id<JavaLangCharSequence>)getValue {
  return self->value_;
}

- (void)dealloc {
  RELEASE_(schema_);
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaLangCharSequence:withJavaLangCharSequence:);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  methods[3].selector = @selector(cloneTree);
  methods[4].selector = @selector(getSchema);
  methods[5].selector = @selector(getValue);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "schema_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "value_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangCharSequence;LJavaLangCharSequence;", "toString", "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;", "LJavaLangCloneNotSupportedException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode = { "OpaqueQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *self, id<JavaLangCharSequence> schema, id<JavaLangCharSequence> value) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  JreStrongAssign(&self->schema_, nil);
  JreStrongAssign(&self->value_, nil);
  [self setLeafWithBoolean:true];
  JreStrongAssign(&self->schema_, schema);
  JreStrongAssign(&self->value_, value);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_(id<JavaLangCharSequence> schema, id<JavaLangCharSequence> value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_, schema, value)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_(id<JavaLangCharSequence> schema, id<JavaLangCharSequence> value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_, schema, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesOpaqueQueryNode)
