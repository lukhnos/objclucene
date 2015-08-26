//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ScaleFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_) && (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_

#define OrgApacheLuceneQueriesFunctionValueSource_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValueSource_INCLUDE 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *source_;
  jfloat min_;
  jfloat max_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)min
                                                        withFloat:(jfloat)max;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction, source_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_INCLUDE_ALL")
