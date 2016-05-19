//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/NormValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief Function that returns <code>TFIDFSimilarity.decodeNormValue(long)</code>
 for every document.
 <p>
 Note that the configured Similarity for the field must be
 a subclass of <code>TFIDFSimilarity</code>
  
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceNormValueSource : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  NSString *field_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceNormValueSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceNormValueSource, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceNormValueSource *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceNormValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceNormValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceNormValueSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource")
