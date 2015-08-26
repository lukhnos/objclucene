//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldableNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder () {
 @public
  JavaUtilHashMap *queryNodeBuilders_;
  JavaUtilHashMap *fieldNameBuilders_;
}

- (void)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (void)processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
             withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)builder;

- (id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)getQueryBuilderWithIOSClass:(IOSClass *)clazz;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, queryNodeBuilders_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, fieldNameBuilders_, JavaUtilHashMap *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node);

__attribute__((unused)) static id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder);

__attribute__((unused)) static id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getQueryBuilderWithIOSClass_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, IOSClass *clazz);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder)

NSString *OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_QUERY_TREE_BUILDER_TAGID_;

@implementation OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_init(self);
  return self;
}

- (void)setBuilderWithJavaLangCharSequence:(id<JavaLangCharSequence>)fieldName
withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)builder {
  if (self->fieldNameBuilders_ == nil) {
    JreStrongAssignAndConsume(&self->fieldNameBuilders_, new_JavaUtilHashMap_init());
  }
  [((JavaUtilHashMap *) nil_chk(self->fieldNameBuilders_)) putWithId:[((id<JavaLangCharSequence>) nil_chk(fieldName)) description] withId:builder];
}

- (void)setBuilderWithIOSClass:(IOSClass *)queryNodeClass
withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)builder {
  if (self->queryNodeBuilders_ == nil) {
    JreStrongAssignAndConsume(&self->queryNodeBuilders_, new_JavaUtilHashMap_init());
  }
  [((JavaUtilHashMap *) nil_chk(self->queryNodeBuilders_)) putWithId:queryNodeClass withId:builder];
}

- (void)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, node);
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, node);
}

- (void)processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
             withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)builder {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(self, node, builder);
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)getQueryBuilderWithIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getQueryBuilderWithIOSClass_(self, clazz);
}

- (id)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, queryNode);
  return [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(queryNode)) getTagWithNSString:OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_QUERY_TREE_BUILDER_TAGID_];
}

- (void)dealloc {
  RELEASE_(queryNodeBuilders_);
  RELEASE_(fieldNameBuilders_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder class]) {
    JreStrongAssign(&OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_QUERY_TREE_BUILDER_TAGID_, [OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_class_() getName]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "QueryTreeBuilder", NULL, 0x1, NULL, NULL },
    { "setBuilderWithJavaLangCharSequence:withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:", "setBuilder", "V", 0x1, NULL, NULL },
    { "setBuilderWithIOSClass:withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:", "setBuilder", "V", 0x1, NULL, NULL },
    { "processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "process", "V", 0x2, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "getBuilder", "Lorg.apache.lucene.queryparser.flexible.core.builders.QueryBuilder;", 0x2, NULL, NULL },
    { "processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:", "processNode", "V", 0x2, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "getQueryBuilderWithIOSClass:", "getQueryBuilder", "Lorg.apache.lucene.queryparser.flexible.core.builders.QueryBuilder;", 0x2, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Ljava.lang.Object;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "QUERY_TREE_BUILDER_TAGID_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_QUERY_TREE_BUILDER_TAGID_, NULL, .constantValue.asLong = 0 },
    { "queryNodeBuilders_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/Class<+Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;Lorg/apache/lucene/queryparser/flexible/core/builders/QueryBuilder;>;", .constantValue.asLong = 0 },
    { "fieldNameBuilders_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/queryparser/flexible/core/builders/QueryBuilder;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder = { 2, "QueryTreeBuilder", "org.apache.lucene.queryparser.flexible.core.builders", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_init(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *new_OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_init() {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self = [OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder alloc];
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_init(self);
  return self;
}

void OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node) {
  if (node != nil) {
    id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder = OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, node);
    if (!([builder isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder class]])) {
      id<JavaUtilList> children = [node getChildren];
      if (children != nil) {
        for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in children) {
          OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, child);
        }
      }
    }
    OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(self, node, builder);
  }
}

id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getBuilderWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node) {
  id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder = nil;
  if (self->fieldNameBuilders_ != nil && [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_() isInstance:node]) {
    id<JavaLangCharSequence> field = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) nil_chk(((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) check_protocol_cast(node, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_())))) getField];
    if (field != nil) {
      field = [field description];
    }
    builder = [self->fieldNameBuilders_ getWithId:field];
  }
  if (builder == nil && self->queryNodeBuilders_ != nil) {
    IOSClass *clazz = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getClass];
    do {
      builder = OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getQueryBuilderWithIOSClass_(self, clazz);
      if (builder == nil) {
        IOSObjectArray *classes = [clazz getInterfaces];
        {
          IOSObjectArray *a__ = classes;
          IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          IOSClass * const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            IOSClass *actualClass = *b__++;
            builder = OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getQueryBuilderWithIOSClass_(self, actualClass);
            if (builder != nil) {
              break;
            }
          }
        }
      }
    }
    while (builder == nil && (clazz = [clazz getSuperclass]) != nil);
  }
  return builder;
}

void OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_processNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder) {
  if (builder == nil) {
    @throw [new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, LUCENE_QUERY_CONVERSION_ERROR_), [IOSObjectArray arrayWithObjects:(id[]){ [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:[new_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init() autorelease]], [[node getClass] getName] } count:2 type:NSObject_class_()]) autorelease]) autorelease];
  }
  id obj = [((id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>) nil_chk(builder)) buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:node];
  if (obj != nil) {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) setTagWithNSString:OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_QUERY_TREE_BUILDER_TAGID_ withId:obj];
  }
}

id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_getQueryBuilderWithIOSClass_(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder *self, IOSClass *clazz) {
  if ([OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_class_() isAssignableFrom:clazz]) {
    return [((JavaUtilHashMap *) nil_chk(self->queryNodeBuilders_)) getWithId:clazz];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder)
