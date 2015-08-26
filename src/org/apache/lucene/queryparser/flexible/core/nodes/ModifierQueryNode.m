//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeError.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode () {
 @public
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *modifier_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode, modifier_, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)query
withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)mod {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(self, query, mod);
  return self;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)getChild {
  return [((id<JavaUtilList>) nil_chk([self getChildren])) getWithInt:0];
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)getModifier {
  return self->modifier_;
}

- (NSString *)description {
  return JreStrcat("$$$$$", @"<modifier operation='", [((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *) nil_chk(self->modifier_)) description], @"'>\n", [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([self getChild])) description], @"\n</modifier>");
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  if ([self getChild] == nil) return @"";
  NSString *leftParenthensis = @"";
  NSString *rightParenthensis = @"";
  if ([self getChild] != nil && [[self getChild] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]]) {
    leftParenthensis = @"(";
    rightParenthensis = @")";
  }
  if ([[self getChild] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]]) {
    return JreStrcat("$$@$", [((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *) nil_chk(self->modifier_)) toLargeString], leftParenthensis, [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([self getChild])) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser], rightParenthensis);
  }
  else {
    return JreStrcat("$$@$", [((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *) nil_chk(self->modifier_)) toDigitString], leftParenthensis, [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([self getChild])) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser], rightParenthensis);
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) check_class_cast([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(clone))->modifier_, self->modifier_);
  return clone;
}

- (void)setChildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)child {
  id<JavaUtilList> list = [new_JavaUtilArrayList_init() autorelease];
  [list addWithId:child];
  [self setWithJavaUtilList:list];
}

- (void)dealloc {
  RELEASE_(modifier_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:", "ModifierQueryNode", NULL, 0x1, NULL, NULL },
    { "getChild", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, NULL, NULL },
    { "getModifier", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "setChildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "setChild", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "modifier_", NULL, 0x2, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode = { 2, "ModifierQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> query, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *mod) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  JreStrongAssign(&self->modifier_, JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum, MOD_NONE));
  if (query == nil) {
    @throw [new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, PARAMETER_VALUE_NOT_SUPPORTED_), [IOSObjectArray arrayWithObjects:(id[]){ @"query", @"null" } count:2 type:NSObject_class_()]) autorelease]) autorelease];
  }
  [self allocate];
  [self setLeafWithBoolean:NO];
  [self addWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:query];
  JreStrongAssign(&self->modifier_, mod);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> query, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *mod) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(self, query, mod);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum)

OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_values_[3];

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum

- (NSString *)description {
  switch ([self ordinal]) {
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NONE:
    return @"MOD_NONE";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NOT:
    return @"MOD_NOT";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_REQ:
    return @"MOD_REQ";
  }
  return @"MOD_DEFAULT";
}

- (NSString *)toDigitString {
  switch ([self ordinal]) {
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NONE:
    return @"";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NOT:
    return @"-";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_REQ:
    return @"+";
  }
  return @"";
}

- (NSString *)toLargeString {
  switch ([self ordinal]) {
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NONE:
    return @"";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_NOT:
    return @"NOT ";
    case OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_MOD_REQ:
    return @"+";
  }
  return @"";
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_values() {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_values_ count:3 type:OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_values();
}

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *e = OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum class]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_NONE = new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(@"MOD_NONE", 0);
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_NOT = new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(@"MOD_NOT", 1);
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_REQ = new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(@"MOD_REQ", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toDigitString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toLargeString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MOD_NONE", "MOD_NONE", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;", &OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_NONE, NULL, .constantValue.asLong = 0 },
    { "MOD_NOT", "MOD_NOT", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;", &OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_NOT, NULL, .constantValue.asLong = 0 },
    { "MOD_REQ", "MOD_REQ", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;", &OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_MOD_REQ, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.queryparser.flexible.core.nodes.ModifierQueryNode$Modifier;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum = { 2, "Modifier", "org.apache.lucene.queryparser.flexible.core.nodes", "ModifierQueryNode", 0x4019, 3, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode$Modifier;>;" };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum)
