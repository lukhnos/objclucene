//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/NormValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_) && (OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_

#define OrgApacheLuceneQueriesFunctionValueSource_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValueSource_INCLUDE 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

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

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceNormValueSource)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceNormValueSource_INCLUDE_ALL")