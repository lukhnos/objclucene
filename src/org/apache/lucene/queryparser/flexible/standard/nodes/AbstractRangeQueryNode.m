//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldValuePairQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/core/util/StringUtils.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode () {
 @public
  jboolean lowerInclusive_;
  jboolean upperInclusive_;
}

@end

@implementation OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaLangCharSequence>)getField {
  id<JavaLangCharSequence> field = nil;
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> lower = JreRetainedLocalValue([self getLowerBound]);
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> upper = JreRetainedLocalValue([self getUpperBound]);
  if (lower != nil) {
    field = [lower getField];
  }
  else if (upper != nil) {
    field = [upper getField];
  }
  return field;
}

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)fieldName {
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> lower = JreRetainedLocalValue([self getLowerBound]);
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> upper = JreRetainedLocalValue([self getUpperBound]);
  if (lower != nil) {
    [lower setFieldWithJavaLangCharSequence:fieldName];
  }
  if (upper != nil) {
    [upper setFieldWithJavaLangCharSequence:fieldName];
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)getLowerBound {
  return (id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>) cast_check([((id<JavaUtilList>) nil_chk([self getChildren])) getWithInt:0], OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode_class_());
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)getUpperBound {
  return (id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>) cast_check([((id<JavaUtilList>) nil_chk([self getChildren])) getWithInt:1], OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode_class_());
}

- (jboolean)isLowerInclusive {
  return lowerInclusive_;
}

- (jboolean)isUpperInclusive {
  return upperInclusive_;
}

- (void)setBoundsWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)lower
                 withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)upper
                                                                            withBoolean:(jboolean)lowerInclusive
                                                                            withBoolean:(jboolean)upperInclusive {
  if (lower != nil && upper != nil) {
    NSString *lowerField = OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_([lower getField]);
    NSString *upperField = OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_([upper getField]);
    if ((upperField != nil || lowerField != nil) && ((upperField != nil && ![upperField isEqual:lowerField]) || ![((NSString *) nil_chk(lowerField)) isEqual:upperField])) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"lower and upper bounds should have the same field name!");
    }
    self->lowerInclusive_ = lowerInclusive;
    self->upperInclusive_ = upperInclusive;
    JavaUtilArrayList *children = create_JavaUtilArrayList_initWithInt_(2);
    [children addWithId:lower];
    [children addWithId:upper];
    [self setWithJavaUtilList:children];
  }
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> lower = JreRetainedLocalValue([self getLowerBound]);
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode> upper = JreRetainedLocalValue([self getUpperBound]);
  if (lowerInclusive_) {
    [sb appendWithChar:'['];
  }
  else {
    [sb appendWithChar:'{'];
  }
  if (lower != nil) {
    [sb appendWithJavaLangCharSequence:[lower toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
  }
  else {
    [sb appendWithNSString:@"..."];
  }
  [sb appendWithChar:' '];
  if (upper != nil) {
    [sb appendWithJavaLangCharSequence:[upper toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
  }
  else {
    [sb appendWithNSString:@"..."];
  }
  if (upperInclusive_) {
    [sb appendWithChar:']'];
  }
  else {
    [sb appendWithChar:'}'];
  }
  return [sb description];
}

- (NSString *)description {
  JavaLangStringBuilder *sb = JreRetainedLocalValue([create_JavaLangStringBuilder_initWithNSString_(@"<") appendWithNSString:[[self java_getClass] getCanonicalName]]);
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@" lowerInclusive="])) appendWithBoolean:[self isLowerInclusive]];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@" upperInclusive="])) appendWithBoolean:[self isUpperInclusive]];
  [sb appendWithNSString:@">\n\t"];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithId:[self getUpperBound]])) appendWithNSString:@"\n\t"];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithId:[self getLowerBound]])) appendWithNSString:@"\n"];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"</"])) appendWithNSString:[[self java_getClass] getCanonicalName]])) appendWithNSString:@">\n"];
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getField);
  methods[2].selector = @selector(setFieldWithJavaLangCharSequence:);
  methods[3].selector = @selector(getLowerBound);
  methods[4].selector = @selector(getUpperBound);
  methods[5].selector = @selector(isLowerInclusive);
  methods[6].selector = @selector(isUpperInclusive);
  methods[7].selector = @selector(setBoundsWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:withBoolean:withBoolean:);
  methods[8].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lowerInclusive_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upperInclusive_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setField", "LJavaLangCharSequence;", "()TT;", "setBounds", "LOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode;LOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode;ZZ", "(TT;TT;ZZ)V", "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;", "toString", "<T::Lorg/apache/lucene/queryparser/flexible/core/nodes/FieldValuePairQueryNode<*>;>Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl;Lorg/apache/lucene/queryparser/flexible/core/nodes/RangeQueryNode<Lorg/apache/lucene/queryparser/flexible/core/nodes/FieldValuePairQueryNode<*>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode = { "AbstractRangeQueryNode", "org.apache.lucene.queryparser.flexible.standard.nodes", ptrTable, methods, fields, 7, 0x1, 10, 2, -1, -1, -1, 9, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode *self) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  [self setLeafWithBoolean:false];
  [self allocate];
}

OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode, init)
}

OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode *create_OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode)
