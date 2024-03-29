//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/docvalues/FloatDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues || defined(INCLUDE_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues))
#define OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_

#define RESTRICT_OrgApacheLuceneQueriesFunctionFunctionValues 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionFunctionValues 1
#include "org/apache/lucene/queries/function/FunctionValues.h"

@class OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller;
@class OrgApacheLuceneQueriesFunctionValueSource;

/*!
 @brief Abstract <code>FunctionValues</code> implementation which supports retrieving float values.
 Implementations can control how the float values are loaded through <code>floatVal(int)</code>}
 */
@interface OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues : OrgApacheLuceneQueriesFunctionFunctionValues {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *vs_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jbyte)byteValWithInt:(jint)doc;

- (jdouble)doubleValWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (id)objectValWithInt:(jint)doc;

- (jshort)shortValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues, vs_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *self, OrgApacheLuceneQueriesFunctionValueSource *vs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues")
