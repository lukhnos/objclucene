//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MinFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction 1
#include "org/apache/lucene/queries/function/valuesource/MultiFloatFunction.h"

@class IOSObjectArray;

/*!
 @brief <code>MinFloatFunction</code> returns the min of its components.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction : OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources;

#pragma mark Protected

/*!
 @brief True if <em>any</em> of the specified <code>values</code>  
 <code>FunctionValues.exists</code> for the specified doc, else false.
 - seealso: MultiFunction#anyExists
 */
- (jboolean)existsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr;

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction *self, IOSObjectArray *sources);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMinFloatFunction")
