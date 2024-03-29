//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexNoMergePolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNoMergePolicy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexNoMergePolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy || defined(INCLUDE_OrgApacheLuceneIndexNoMergePolicy))
#define OrgApacheLuceneIndexNoMergePolicy_

#define RESTRICT_OrgApacheLuceneIndexMergePolicy 1
#define INCLUDE_OrgApacheLuceneIndexMergePolicy 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexMergePolicy_MergeSpecification;
@class OrgApacheLuceneIndexMergeTrigger;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@protocol JavaUtilMap;

/*!
 @brief A <code>MergePolicy</code> which never returns merges to execute.Use it if you
  want to prevent segment merges.
 */
@interface OrgApacheLuceneIndexNoMergePolicy : OrgApacheLuceneIndexMergePolicy
@property (readonly, class, strong) OrgApacheLuceneIndexMergePolicy *INSTANCE NS_SWIFT_NAME(INSTANCE);

#pragma mark Public

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge
                                                                         withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexMergeTrigger:(OrgApacheLuceneIndexMergeTrigger *)mergeTrigger
                                                                  withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (NSString *)description;

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                      withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)newSegment
                            withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

#pragma mark Protected

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithDouble:(jdouble)arg0
                                withLong:(jlong)arg1 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexNoMergePolicy)

/*!
 @brief Singleton instance.
 */
inline OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexNoMergePolicy, INSTANCE, OrgApacheLuceneIndexMergePolicy *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNoMergePolicy)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy")
