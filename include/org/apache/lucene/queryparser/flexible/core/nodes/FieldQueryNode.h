//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldValuePairQueryNode.h"

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/TextableQueryNode.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>FieldQueryNode</code> represents a element that contains field/text tuple
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl < OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode, OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode > {
 @public
  /*!
   @brief The term's field
   */
  id<JavaLangCharSequence> field_;
  /*!
   @brief The term's text.
   */
  id<JavaLangCharSequence> text_;
  /*!
   @brief The term's begin position.
   */
  jint begin_;
  /*!
   @brief The term's end position.
   */
  jint end_;
  /*!
   @brief The term's position increment.
   */
  jint positionIncrement_;
}

#pragma mark Public

/*!
 @param field - field name
 @param text - value
 @param begin - position in the query string
 @param end - position in the query string
 */
- (instancetype __nonnull)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                              withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                               withInt:(jint)begin
                                               withInt:(jint)end;

- (OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *)cloneTree;

- (jint)getBegin;

- (jint)getEnd;

- (id<JavaLangCharSequence>)getField;

/*!
 @brief returns null if the field was not specified in the query string
 @return the field
 */
- (NSString *)getFieldAsString;

- (jint)getPositionIncrement;

/*!
 @brief Returns the term.
 @return The "original" form of the term.
 */
- (id<JavaLangCharSequence>)getText;

/*!
 @return the term
 */
- (NSString *)getTextAsString;

- (id<JavaLangCharSequence>)getValue;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)java_clone;

- (void)setBeginWithInt:(jint)begin;

- (void)setEndWithInt:(jint)end;

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field;

- (void)setPositionIncrementWithInt:(jint)pi;

/*!
 @param text the text to set
 */
- (void)setTextWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (void)setValueWithId:(id<JavaLangCharSequence>)value;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

#pragma mark Protected

- (id<JavaLangCharSequence>)getTermEscapedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (id<JavaLangCharSequence>)getTermEscapeQuotedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode, field_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode, text_, id<JavaLangCharSequence>)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode")
