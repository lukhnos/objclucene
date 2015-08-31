//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/VectorValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_) && (OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_

#define OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_INCLUDE 1
#include "org/apache/lucene/queries/function/valuesource/MultiValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource : OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource {
 @public
  id<JavaUtilList> sources_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sources;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jint)dimension;

- (jboolean)isEqual:(id)o;

- (id<JavaUtilList>)getSources;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource, sources_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *self, id<JavaUtilList> sources);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_initWithJavaUtilList_(id<JavaUtilList> sources) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceVectorValueSource_INCLUDE_ALL")