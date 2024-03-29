//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/IntFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource))
#define OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchSortField;
@protocol JavaUtilMap;

/*!
 @brief Obtains int field values from <code>org.apache.lucene.index.LeafReader.getNumericDocValues</code> and makes those
  values available as other numeric types, casting as needed.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource : OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)field;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *create_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource")
