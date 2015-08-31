//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SnapshotDeletionPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexSnapshotDeletionPolicy_RESTRICT
#define OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexSnapshotDeletionPolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexSnapshotDeletionPolicy_) && (OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL || OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE)
#define _OrgApacheLuceneIndexSnapshotDeletionPolicy_

#define OrgApacheLuceneIndexIndexDeletionPolicy_RESTRICT 1
#define OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE 1
#include "org/apache/lucene/index/IndexDeletionPolicy.h"

@class OrgApacheLuceneIndexIndexCommit;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexSnapshotDeletionPolicy : OrgApacheLuceneIndexIndexDeletionPolicy {
 @public
  id<JavaUtilMap> refCounts_;
  id<JavaUtilMap> indexCommits_;
  OrgApacheLuceneIndexIndexCommit *lastCommit_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)primary;

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommitWithLong:(jlong)gen;

- (jint)getSnapshotCount;

- (id<JavaUtilList>)getSnapshots;

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits;

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits;

- (void)release__WithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

- (OrgApacheLuceneIndexIndexCommit *)snapshot;

#pragma mark Protected

- (void)incRefWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)ic;

- (void)releaseGenWithLong:(jlong)gen;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSnapshotDeletionPolicy)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy, refCounts_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy, indexCommits_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy, lastCommit_, OrgApacheLuceneIndexIndexCommit *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(OrgApacheLuceneIndexSnapshotDeletionPolicy *self, OrgApacheLuceneIndexIndexDeletionPolicy *primary);

FOUNDATION_EXPORT OrgApacheLuceneIndexSnapshotDeletionPolicy *new_OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(OrgApacheLuceneIndexIndexDeletionPolicy *primary) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSnapshotDeletionPolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL")