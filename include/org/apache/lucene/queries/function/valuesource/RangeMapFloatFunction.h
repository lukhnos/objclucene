//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/RangeMapFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class JavaLangFloat;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief <code>RangeMapFloatFunction</code> implements a map function over
  another <code>ValueSource</code> whose values fall within min and max inclusive to target.
 <br>
  Normally Used as an argument to a <code>org.apache.lucene.queries.function.FunctionQuery</code>
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *source_;
  jfloat min_;
  jfloat max_;
  OrgApacheLuceneQueriesFunctionValueSource *target_;
  OrgApacheLuceneQueriesFunctionValueSource *defaultVal_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                                  withFloat:(jfloat)min
                                                                  withFloat:(jfloat)max
                                                                  withFloat:(jfloat)target
                                                          withJavaLangFloat:(JavaLangFloat *)def;

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                                  withFloat:(jfloat)min
                                                                  withFloat:(jfloat)max
                              withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)target
                              withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)def;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, source_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, target_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction, defaultVal_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_withJavaLangFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, jfloat target, JavaLangFloat *def);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max, OrgApacheLuceneQueriesFunctionValueSource *target, OrgApacheLuceneQueriesFunctionValueSource *def);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceRangeMapFloatFunction")
