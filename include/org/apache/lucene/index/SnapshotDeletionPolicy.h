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

@interface OrgApacheLuceneIndexSnapshotDeletionPolicy : OrgApacheLuceneIndexIndexDeletionPolicy

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSnapshotDeletionPolicy)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSnapshotDeletionPolicy_init(OrgApacheLuceneIndexSnapshotDeletionPolicy *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexSnapshotDeletionPolicy *new_OrgApacheLuceneIndexSnapshotDeletionPolicy_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSnapshotDeletionPolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSnapshotDeletionPolicy_INCLUDE_ALL")
