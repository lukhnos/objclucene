//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MaxDocValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief Returns the value of <code>IndexReader.maxDoc()</code>
 for every document.
 This is the number of documents
 including deletions.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource : OrgApacheLuceneQueriesFunctionValueSource

#pragma mark Public

- (instancetype)init;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource *self);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMaxDocValueSource")
