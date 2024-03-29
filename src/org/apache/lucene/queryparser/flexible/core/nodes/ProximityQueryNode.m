//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeError.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode () {
 @public
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *proximityType_;
  jint distance_;
  jboolean inorder_;
  id<JavaLangCharSequence> field_;
}

+ (void)clearFieldsWithJavaUtilList:(id<JavaUtilList>)nodes
           withJavaLangCharSequence:(id<JavaLangCharSequence>)field;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, proximityType_, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, field_, id<JavaLangCharSequence>)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(id<JavaUtilList> nodes, id<JavaLangCharSequence> field);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 *self, NSString *__name, jint __ordinal);

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)type
                             withInt:(jint)distance
                         withBoolean:(jboolean)inorder {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_(self, clauses, field, type, distance, inorder);
  return self;
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)type
                         withBoolean:(jboolean)inorder {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_(self, clauses, field, type, inorder);
  return self;
}

+ (void)clearFieldsWithJavaUtilList:(id<JavaUtilList>)nodes
           withJavaLangCharSequence:(id<JavaLangCharSequence>)field {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(nodes, field);
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)getProximityType {
  return self->proximityType_;
}

- (NSString *)description {
  NSString *distanceSTR = ((self->distance_ == -1) ? (@"") : JreStrcat("$C", (JreStrcat("$I", @" distance='", self->distance_)), '\''));
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return JreStrcat("$@$Z$$C$$", @"<proximity field='", self->field_, @"' inorder='", self->inorder_, @"' type='", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *) nil_chk(self->proximityType_)) description], '\'', distanceSTR, @"/>");
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:JreStrcat("$@$Z$$C$C", @"<proximity field='", self->field_, @"' inorder='", self->inorder_, @"' type='", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *) nil_chk(self->proximityType_)) description], '\'', distanceSTR, '>')];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [sb appendWithNSString:@"\n"];
    [sb appendWithNSString:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) description]];
  }
  [sb appendWithNSString:@"\n</proximity>"];
  return [sb description];
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  NSString *withinSTR = JreStrcat("@$$", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *) nil_chk(self->proximityType_)) toQueryString], ((self->distance_ == -1) ? (@"") : (JreStrcat("CI", ' ', self->distance_))), ((self->inorder_) ? (@" INORDER") : (@"")));
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) {
  }
  else {
    NSString *filler = @"";
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
      [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:filler])) appendWithJavaLangCharSequence:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
      filler = @" ";
    }
  }
  if ([self isDefaultFieldWithJavaLangCharSequence:self->field_]) {
    return JreStrcat("$$$$", @"( ", [sb description], @" ) ", withinSTR);
  }
  else {
    return JreStrcat("@$$$$C", self->field_, @":(( ", [sb description], @" ) ", withinSTR, ')');
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *) nil_chk(clone))->proximityType_, self->proximityType_);
  clone->distance_ = self->distance_;
  JreStrongAssign(&clone->field_, self->field_);
  return clone;
}

- (jint)getDistance {
  return self->distance_;
}

- (id<JavaLangCharSequence>)getField {
  return self->field_;
}

- (NSString *)getFieldAsString {
  if (self->field_ == nil) return nil;
  else return [self->field_ description];
}

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field {
  JreStrongAssign(&self->field_, field);
}

- (jboolean)isInOrder {
  return self->inorder_;
}

- (void)dealloc {
  RELEASE_(proximityType_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0xa, 4, 5, -1, 6, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, -1, -1, 10, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:withJavaLangCharSequence:withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:withInt:withBoolean:);
  methods[1].selector = @selector(initWithJavaUtilList:withJavaLangCharSequence:withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:withBoolean:);
  methods[2].selector = @selector(clearFieldsWithJavaUtilList:withJavaLangCharSequence:);
  methods[3].selector = @selector(getProximityType);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  methods[6].selector = @selector(cloneTree);
  methods[7].selector = @selector(getDistance);
  methods[8].selector = @selector(getField);
  methods[9].selector = @selector(getFieldAsString);
  methods[10].selector = @selector(setFieldWithJavaLangCharSequence:);
  methods[11].selector = @selector(isInOrder);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "proximityType_", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "distance_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inorder_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "field_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;LJavaLangCharSequence;LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;IZ", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;Ljava/lang/CharSequence;Lorg/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode$Type;IZ)V", "LJavaUtilList;LJavaLangCharSequence;LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;Z", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;Ljava/lang/CharSequence;Lorg/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode$Type;Z)V", "clearFields", "LJavaUtilList;LJavaLangCharSequence;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;Ljava/lang/CharSequence;)V", "toString", "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;", "LJavaLangCloneNotSupportedException;", "setField", "LJavaLangCharSequence;", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode = { "ProximityQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, fields, 7, 0x1, 12, 4, -1, 13, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(self, clauses);
  JreStrongAssign(&self->proximityType_, JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, SENTENCE));
  self->distance_ = -1;
  self->inorder_ = false;
  JreStrongAssign(&self->field_, nil);
  [self setLeafWithBoolean:false];
  JreStrongAssign(&self->proximityType_, type);
  self->inorder_ = inorder;
  JreStrongAssign(&self->field_, field);
  if (type == JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, NUMBER)) {
    if (distance <= 0) {
      @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, PARAMETER_VALUE_NOT_SUPPORTED), [IOSObjectArray arrayWithObjects:(id[]){ @"distance", JavaLangInteger_valueOfWithInt_(distance) } count:2 type:NSObject_class_()]));
    }
    else {
      self->distance_ = distance;
    }
  }
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(clauses, field);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance, jboolean inorder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_, clauses, field, type, distance, inorder)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance, jboolean inorder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_, clauses, field, type, distance, inorder)
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_withBoolean_(self, clauses, field, type, -1, inorder);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jboolean inorder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_, clauses, field, type, inorder)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jboolean inorder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withBoolean_, clauses, field, type, inorder)
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(id<JavaUtilList> nodes, id<JavaLangCharSequence> field) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initialize();
  if (nodes == nil || [nodes size] == 0) return;
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong clause in nodes) {
    if ([clause isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]]) {
      ((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) clause)))->toQueryStringIgnoreFields_ = true;
      [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) clause))) setFieldWithJavaLangCharSequence:field];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type)

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values_[3];

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)PARAGRAPH {
  return JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, PARAGRAPH);
}

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)SENTENCE {
  return JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, SENTENCE);
}

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)NUMBER {
  return JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, NUMBER);
}

- (id<JavaLangCharSequence>)toQueryString {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values();
}

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_valueOfWithNSString_(name);
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_Enum)toNSEnum {
  return (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaLangCharSequence;", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(toQueryString);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PARAGRAPH", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "SENTENCE", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "NUMBER", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, PARAGRAPH), &JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, SENTENCE), &JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, NUMBER), "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode;", "Ljava/lang/Enum<Lorg/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode$Type;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type = { "Type", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, fields, 7, 0x4409, 3, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type class]) {
    size_t allocSize = 0;
    size_t objSize_PARAGRAPH = class_getInstanceSize([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 class]);
    allocSize += objSize_PARAGRAPH;
    size_t objSize_SENTENCE = class_getInstanceSize([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 class]);
    allocSize += objSize_SENTENCE;
    size_t objSize_NUMBER = class_getInstanceSize([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 class]);
    allocSize += objSize_NUMBER;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    ((void) (JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, PARAGRAPH) = e = objc_constructInstance([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 class], (void *)ptr)), ptr += objSize_PARAGRAPH);
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1_initWithNSString_withInt_(e, @"PARAGRAPH", 0);
    ((void) (JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, SENTENCE) = e = objc_constructInstance([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 class], (void *)ptr)), ptr += objSize_SENTENCE);
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2_initWithNSString_withInt_(e, @"SENTENCE", 1);
    ((void) (JreEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type, NUMBER) = e = objc_constructInstance([OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 class], (void *)ptr)), ptr += objSize_NUMBER);
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3_initWithNSString_withInt_(e, @"NUMBER", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type)
  }
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values() {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values_ count:3 type:OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_class_()];
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *e = OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN PARAGRAPH";
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaLangCharSequence;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(toQueryString);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 = { "", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_1 *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initWithNSString_withInt_(self, __name, __ordinal);
}

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN SENTENCE";
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaLangCharSequence;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(toQueryString);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 = { "", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_2 *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initWithNSString_withInt_(self, __name, __ordinal);
}

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN";
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaLangCharSequence;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(toQueryString);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 = { "", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_3 *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_initWithNSString_withInt_(self, __name, __ordinal);
}

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)type {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_(self, type);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *)type
                                                                                   withInt:(jint)distance {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_(self, type, distance);
  return self;
}

- (void)dealloc {
  RELEASE_(pType_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:);
  methods[1].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pDistance_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "pType_", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type;I", "LOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType = { "ProximityType", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, fields, 7, 0x9, 2, 2, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_(self, type, 0);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_, type)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *create_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_, type)
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance) {
  NSObject_init(self);
  self->pDistance_ = 0;
  JreStrongAssign(&self->pType_, nil);
  JreStrongAssign(&self->pType_, type);
  self->pDistance_ = distance;
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_, type, distance)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *create_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type *type, jint distance) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType, initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_withInt_, type, distance)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType)
