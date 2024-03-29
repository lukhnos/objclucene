//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/docvalues/BoolDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues || defined(INCLUDE_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues))
#define OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues_

#define RESTRICT_OrgApacheLuceneQueriesFunctionFunctionValues 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionFunctionValues 1
#include "org/apache/lucene/queries/function/FunctionValues.h"

@class OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller;
@class OrgApacheLuceneQueriesFunctionValueSource;

/*!
 @brief Abstract <code>FunctionValues</code> implementation which supports retrieving boolean values.
 Implementations can control how the boolean values are loaded through <code>boolVal(int)</code>}
 */
@interface OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues : OrgApacheLuceneQueriesFunctionFunctionValues {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *vs_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jboolean)boolValWithInt:(jint)doc;

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues, vs_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues *self, OrgApacheLuceneQueriesFunctionValueSource *vs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues")
