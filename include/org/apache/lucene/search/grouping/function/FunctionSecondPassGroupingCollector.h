//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/function/FunctionSecondPassGroupingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_RESTRICT
#define OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_) && (OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE)
#define _OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_

#define OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector : OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector

#pragma mark Public

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)searchGroups
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                                   withInt:(jint)maxDocsPerGroup
                               withBoolean:(jboolean)getScores
                               withBoolean:(jboolean)getMaxScores
                               withBoolean:(jboolean)fillSortFields
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupByVS
                           withJavaUtilMap:(id<JavaUtilMap>)vsContext;

- (jboolean)needsScores;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *)retrieveGroupWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector *self, id<JavaUtilCollection> searchGroups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields, OrgApacheLuceneQueriesFunctionValueSource *groupByVS, id<JavaUtilMap> vsContext);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector *new_OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(id<JavaUtilCollection> searchGroups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields, OrgApacheLuceneQueriesFunctionValueSource *groupByVS, id<JavaUtilMap> vsContext) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_INCLUDE_ALL")
