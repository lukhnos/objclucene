//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/PersistentSnapshotDeletionPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_RESTRICT
#define OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_) && (OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE_ALL || OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE)
#define _OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_

#define OrgApacheLuceneIndexSnapshotDeletionPolicy_RESTRICT 1
#define OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE 1
#include "org/apache/lucene/index/SnapshotDeletionPolicy.h"

@interface OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy : OrgApacheLuceneIndexSnapshotDeletionPolicy

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy)

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy, SNAPSHOTS_PREFIX_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_init(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *new_OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_INCLUDE_ALL")
