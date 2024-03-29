//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DocFreqValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues))
#define OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_

#define RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues 1
#include "org/apache/lucene/queries/function/docvalues/IntDocValues.h"

@class OrgApacheLuceneQueriesFunctionValueSource;

@interface OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues : OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues {
 @public
  jint ival_;
  jfloat fval_;
  jdouble dval_;
  jlong lval_;
  NSString *sval_;
  OrgApacheLuceneQueriesFunctionValueSource *parent_;
}

#pragma mark Public

- (jdouble)doubleValWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithInt:(jint)val
      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)parent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues, sval_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues, parent_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_initPackagePrivateWithInt_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues *self, jint val, OrgApacheLuceneQueriesFunctionValueSource *parent);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues *new_OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_initPackagePrivateWithInt_withOrgApacheLuceneQueriesFunctionValueSource_(jint val, OrgApacheLuceneQueriesFunctionValueSource *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues *create_OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_initPackagePrivateWithInt_withOrgApacheLuceneQueriesFunctionValueSource_(jint val, OrgApacheLuceneQueriesFunctionValueSource *parent);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues)

#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues))
#define OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues_

#define RESTRICT_OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues 1
#include "org/apache/lucene/queries/function/docvalues/DoubleDocValues.h"

@class OrgApacheLuceneQueriesFunctionValueSource;

@interface OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues : OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues {
 @public
  jint ival_;
  jfloat fval_;
  jdouble dval_;
  jlong lval_;
  NSString *sval_;
  OrgApacheLuceneQueriesFunctionValueSource *parent_;
}

#pragma mark Public

- (jdouble)doubleValWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithDouble:(jdouble)val
         withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)parent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues, sval_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues, parent_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues_initPackagePrivateWithDouble_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues *self, jdouble val, OrgApacheLuceneQueriesFunctionValueSource *parent);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues *new_OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues_initPackagePrivateWithDouble_withOrgApacheLuceneQueriesFunctionValueSource_(jdouble val, OrgApacheLuceneQueriesFunctionValueSource *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues *create_OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues_initPackagePrivateWithDouble_withOrgApacheLuceneQueriesFunctionValueSource_(jdouble val, OrgApacheLuceneQueriesFunctionValueSource *parent);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceConstDoubleDocValues)

#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilMap;

/*!
 @brief <code>DocFreqValueSource</code> returns the number of documents containing the term.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  NSString *field_;
  NSString *indexedField_;
  NSString *val_;
  OrgApacheLuceneUtilBytesRef *indexedBytes_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)field
                              withNSString:(NSString *)val
                              withNSString:(NSString *)indexedField
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedBytes;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource, indexedField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource, val_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource, indexedBytes_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource *self, NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource")
