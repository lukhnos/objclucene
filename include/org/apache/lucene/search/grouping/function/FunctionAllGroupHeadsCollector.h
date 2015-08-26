//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/function/FunctionAllGroupHeadsCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_RESTRICT
#define OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_) && (OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE)
#define _OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_

#define OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector : OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupBy
                                                  withJavaUtilMap:(id<JavaUtilMap>)vsContext
                                    withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sortWithinGroup;

- (jboolean)needsScores;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (id<JavaUtilCollection>)getCollectedGroupHeads;

- (void)retrieveGroupHeadAndAddIfNotExistWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector *self, OrgApacheLuceneQueriesFunctionValueSource *groupBy, id<JavaUtilMap> vsContext, OrgApacheLuceneSearchSort *sortWithinGroup);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector *new_OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchSort_(OrgApacheLuceneQueriesFunctionValueSource *groupBy, id<JavaUtilMap> vsContext, OrgApacheLuceneSearchSort *sortWithinGroup) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector)

#endif

#if !defined (_OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead_) && (OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead_INCLUDE)
#define _OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead_

#define OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector.h"

@class IOSObjectArray;

@interface OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead : OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead {
 @public
  IOSObjectArray *comparators_;
  IOSObjectArray *leafComparators_;
}

#pragma mark Public

- (jint)compareWithInt:(jint)compIDX
               withInt:(jint)doc;

- (void)updateDocHeadWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead, leafComparators_, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_GroupHead)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_INCLUDE_ALL")
