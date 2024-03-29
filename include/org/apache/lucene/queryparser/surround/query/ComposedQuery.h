//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/ComposedQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryComposedQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryComposedQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryComposedQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryComposedQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryComposedQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundQueryComposedQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryComposedQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryComposedQuery))
#define OrgApacheLuceneQueryparserSurroundQueryComposedQuery_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 1
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"

@class JavaLangStringBuilder;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@protocol JavaUtilIterator;
@protocol JavaUtilList;

/*!
 @brief Base class for composite queries (such as AND/OR/NOT)
 */
@interface OrgApacheLuceneQueryparserSurroundQueryComposedQuery : OrgApacheLuceneQueryparserSurroundQuerySrndQuery {
 @public
  NSString *opName_;
  id<JavaUtilList> queries_;
}

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilList:(id<JavaUtilList>)qs
                                   withBoolean:(jboolean)operatorInfix
                                  withNSString:(NSString *)opName;

- (jint)getNrSubQueries;

- (NSString *)getOperatorName;

- (id<JavaUtilIterator>)getSubQueriesIterator;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getSubQueryWithInt:(jint)qn;

- (jboolean)isFieldsSubQueryAcceptable;

- (jboolean)isOperatorInfix;

- (id<JavaUtilList>)makeLuceneSubQueriesFieldWithNSString:(NSString *)fn
withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (NSString *)description;

#pragma mark Protected

- (NSString *)getBracketClose;

- (NSString *)getBracketOpen;

- (NSString *)getPrefixSeparator;

- (void)infixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r;

- (void)prefixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r;

- (void)recomposeWithJavaUtilList:(id<JavaUtilList>)queries;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryComposedQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryComposedQuery, opName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryComposedQuery, queries_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryComposedQuery_initWithJavaUtilList_withBoolean_withNSString_(OrgApacheLuceneQueryparserSurroundQueryComposedQuery *self, id<JavaUtilList> qs, jboolean operatorInfix, NSString *opName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryComposedQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryComposedQuery")
