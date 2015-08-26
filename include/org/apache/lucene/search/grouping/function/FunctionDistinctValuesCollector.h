//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/function/FunctionDistinctValuesCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_RESTRICT
#define OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_) && (OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE)
#define _OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_

#define OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractDistinctValuesCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionValueSource;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector : OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)vsContext
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupSource
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)countSource
             withJavaUtilCollection:(id<JavaUtilCollection>)groups;

- (void)collectWithInt:(jint)doc;

- (id<JavaUtilList>)getGroups;

- (jboolean)needsScores;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_initWithJavaUtilMap_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilCollection_(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector *self, id<JavaUtilMap> vsContext, OrgApacheLuceneQueriesFunctionValueSource *groupSource, OrgApacheLuceneQueriesFunctionValueSource *countSource, id<JavaUtilCollection> groups);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector *new_OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_initWithJavaUtilMap_withOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilCollection_(id<JavaUtilMap> vsContext, OrgApacheLuceneQueriesFunctionValueSource *groupSource, OrgApacheLuceneQueriesFunctionValueSource *countSource, id<JavaUtilCollection> groups) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector)

#endif

#if !defined (_OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount_) && (OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount_INCLUDE)
#define _OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount_

#define OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector_GroupCount_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractDistinctValuesCollector.h"

@class OrgApacheLuceneUtilMutableMutableValue;

@interface OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount : OrgApacheLuceneSearchGroupingAbstractDistinctValuesCollector_GroupCount

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)groupValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount_initWithOrgApacheLuceneUtilMutableMutableValue_(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount *self, OrgApacheLuceneUtilMutableMutableValue *groupValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount *new_OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount_initWithOrgApacheLuceneUtilMutableMutableValue_(OrgApacheLuceneUtilMutableMutableValue *groupValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_GroupCount)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingFunctionFunctionDistinctValuesCollector_INCLUDE_ALL")
