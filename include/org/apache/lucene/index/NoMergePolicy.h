//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexNoMergePolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexNoMergePolicy_RESTRICT
#define OrgApacheLuceneIndexNoMergePolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexNoMergePolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexNoMergePolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexNoMergePolicy_) && (OrgApacheLuceneIndexNoMergePolicy_INCLUDE_ALL || OrgApacheLuceneIndexNoMergePolicy_INCLUDE)
#define _OrgApacheLuceneIndexNoMergePolicy_

#define OrgApacheLuceneIndexMergePolicy_RESTRICT 1
#define OrgApacheLuceneIndexMergePolicy_INCLUDE 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexMergePolicy_MergeSpecification;
@class OrgApacheLuceneIndexMergeTriggerEnum;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexNoMergePolicy : OrgApacheLuceneIndexMergePolicy

#pragma mark Public

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge
                                                                         withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexMergeTriggerEnum:(OrgApacheLuceneIndexMergeTriggerEnum *)mergeTrigger
                                                                      withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                       withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (NSString *)description;

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                      withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)newSegment
                            withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

#pragma mark Protected

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexNoMergePolicy)

FOUNDATION_EXPORT OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexNoMergePolicy, INSTANCE_, OrgApacheLuceneIndexMergePolicy *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNoMergePolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexNoMergePolicy_INCLUDE_ALL")
