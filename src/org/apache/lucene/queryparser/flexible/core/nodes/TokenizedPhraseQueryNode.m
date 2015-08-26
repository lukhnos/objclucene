//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldableNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode_init(self);
  return self;
}

- (NSString *)description {
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return @"<tokenizedphrase/>";
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [sb appendWithNSString:@"<tokenizedtphrase>"];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [sb appendWithNSString:@"\n"];
    [sb appendWithNSString:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) description]];
  }
  [sb appendWithNSString:@"\n</tokenizedphrase>"];
  return [sb description];
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return @"";
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  NSString *filler = @"";
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:filler])) appendWithJavaLangCharSequence:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
    filler = @",";
  }
  return JreStrcat("$$$", @"[TP[", [sb description], @"]]");
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *) check_class_cast([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode class]);
  return clone;
}

- (id<JavaLangCharSequence>)getField {
  id<JavaUtilList> children = [self getChildren];
  if (children == nil || [children size] == 0) {
    return nil;
  }
  else {
    return [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) nil_chk(((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) check_protocol_cast([children getWithInt:0], OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_())))) getField];
  }
}

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)fieldName {
  id<JavaUtilList> children = [self getChildren];
  if (children != nil) {
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
      if ([OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_() isInstance:child]) {
        [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) nil_chk(((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) check_protocol_cast(child, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_())))) setFieldWithJavaLangCharSequence:fieldName];
      }
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TokenizedPhraseQueryNode", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "getField", NULL, "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "setFieldWithJavaLangCharSequence:", "setField", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode = { 2, "TokenizedPhraseQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *self) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  [self setLeafWithBoolean:NO];
  [self allocate];
}

OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode_init() {
  OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode)
