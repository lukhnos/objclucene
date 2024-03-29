//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/FieldCacheSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource))
#define OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

/*!
 @brief A base class for ValueSource implementations that retrieve values for
  a single field from DocValues.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  NSString *field_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)field;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (NSString *)getField;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource *self, NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource")
