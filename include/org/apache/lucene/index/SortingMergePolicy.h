//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/SortingMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexSortingMergePolicy_RESTRICT
#define OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexSortingMergePolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexSortingMergePolicy_) && (OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL || OrgApacheLuceneIndexSortingMergePolicy_INCLUDE)
#define _OrgApacheLuceneIndexSortingMergePolicy_

#define OrgApacheLuceneIndexMergePolicy_RESTRICT 1
#define OrgApacheLuceneIndexMergePolicy_INCLUDE 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexMergePolicy_MergeSpecification;
@class OrgApacheLuceneIndexMergeTriggerEnum;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneIndexSorter;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexSortingMergePolicy : OrgApacheLuceneIndexMergePolicy {
 @public
  OrgApacheLuceneIndexMergePolicy *in_;
  OrgApacheLuceneIndexSorter *sorter_;
  OrgApacheLuceneSearchSort *sort_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)inArg
                          withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge
                                                                         withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexMergeTriggerEnum:(OrgApacheLuceneIndexMergeTriggerEnum *)mergeTrigger
                                                                      withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                       withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneSearchSort *)getSort;

+ (jboolean)isSortedWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                         withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

- (NSString *)description;

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                      withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)newSegment
                            withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

#pragma mark Protected

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortingMergePolicy)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy, in_, OrgApacheLuceneIndexMergePolicy *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy, sorter_, OrgApacheLuceneIndexSorter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy, sort_, OrgApacheLuceneSearchSort *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexSortingMergePolicy_SORTER_ID_PROP_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexSortingMergePolicy, SORTER_ID_PROP_, NSString *)

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexSortingMergePolicy_isSortedWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneSearchSort_(OrgApacheLuceneIndexLeafReader *reader, OrgApacheLuceneSearchSort *sort);

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortingMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_withOrgApacheLuceneSearchSort_(OrgApacheLuceneIndexSortingMergePolicy *self, OrgApacheLuceneIndexMergePolicy *inArg, OrgApacheLuceneSearchSort *sort);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortingMergePolicy *new_OrgApacheLuceneIndexSortingMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_withOrgApacheLuceneSearchSort_(OrgApacheLuceneIndexMergePolicy *inArg, OrgApacheLuceneSearchSort *sort) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortingMergePolicy)

#endif

#if !defined (_OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge_) && (OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL || OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge_INCLUDE)
#define _OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge_

#define OrgApacheLuceneIndexMergePolicy_RESTRICT 1
#define OrgApacheLuceneIndexMergePolicy_OneMerge_INCLUDE 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexMergePolicy_DocMap;
@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSorter_DocMap;
@class OrgApacheLuceneIndexSortingMergePolicy;
@class OrgApacheLuceneUtilInfoStream;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge : OrgApacheLuceneIndexMergePolicy_OneMerge {
 @public
  id<JavaUtilList> unsortedReaders_;
  OrgApacheLuceneIndexSorter_DocMap *docMap_;
  OrgApacheLuceneIndexLeafReader *sortedView_;
  OrgApacheLuceneUtilInfoStream *infoStream_;
}

#pragma mark Public

- (OrgApacheLuceneIndexMergePolicy_DocMap *)getDocMapWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

- (id<JavaUtilList>)getMergeReaders;

- (void)setMergeInfoWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSortingMergePolicy:(OrgApacheLuceneIndexSortingMergePolicy *)outer$
                                              withJavaUtilList:(id<JavaUtilList>)segments
                             withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge, unsortedReaders_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge, docMap_, OrgApacheLuceneIndexSorter_DocMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge, sortedView_, OrgApacheLuceneIndexLeafReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge, infoStream_, OrgApacheLuceneUtilInfoStream *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge_initWithOrgApacheLuceneIndexSortingMergePolicy_withJavaUtilList_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge *self, OrgApacheLuceneIndexSortingMergePolicy *outer$, id<JavaUtilList> segments, OrgApacheLuceneUtilInfoStream *infoStream);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge *new_OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge_initWithOrgApacheLuceneIndexSortingMergePolicy_withJavaUtilList_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexSortingMergePolicy *outer$, id<JavaUtilList> segments, OrgApacheLuceneUtilInfoStream *infoStream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortingMergePolicy_SortingOneMerge)

#endif

#if !defined (_OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification_) && (OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL || OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification_INCLUDE)
#define _OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification_

#define OrgApacheLuceneIndexMergePolicy_RESTRICT 1
#define OrgApacheLuceneIndexMergePolicy_MergeSpecification_INCLUDE 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexMergePolicy_OneMerge;
@class OrgApacheLuceneIndexSortingMergePolicy;
@class OrgApacheLuceneUtilInfoStream;

@interface OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification : OrgApacheLuceneIndexMergePolicy_MergeSpecification {
 @public
  OrgApacheLuceneUtilInfoStream *infoStream_;
}

#pragma mark Public

- (void)addWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSortingMergePolicy:(OrgApacheLuceneIndexSortingMergePolicy *)outer$
                             withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification, infoStream_, OrgApacheLuceneUtilInfoStream *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification_initWithOrgApacheLuceneIndexSortingMergePolicy_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification *self, OrgApacheLuceneIndexSortingMergePolicy *outer$, OrgApacheLuceneUtilInfoStream *infoStream);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification *new_OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification_initWithOrgApacheLuceneIndexSortingMergePolicy_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexSortingMergePolicy *outer$, OrgApacheLuceneUtilInfoStream *infoStream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortingMergePolicy_SortingMergeSpecification)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSortingMergePolicy_INCLUDE_ALL")
