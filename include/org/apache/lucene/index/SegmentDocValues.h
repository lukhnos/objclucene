//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SegmentDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexSegmentDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentDocValues || defined(INCLUDE_OrgApacheLuceneIndexSegmentDocValues))
#define OrgApacheLuceneIndexSegmentDocValues_

@class OrgApacheLuceneCodecsDocValuesProducer;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilList;

/*!
 @brief Manages the <code>DocValuesProducer</code> held by <code>SegmentReader</code> and
  keeps track of their reference counting.
 */
@interface OrgApacheLuceneIndexSegmentDocValues : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

/*!
 @brief Decrement the reference count of the given <code>DocValuesProducer</code>
  generations.
 */
- (void)decRefWithJavaUtilList:(id<JavaUtilList>)dvProducersGens;

/*!
 @brief Returns the <code>DocValuesProducer</code> for the given generation.
 */
- (OrgApacheLuceneCodecsDocValuesProducer *)getDocValuesProducerWithLong:(jlong)gen
                               withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                                       withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                      withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentDocValues_initPackagePrivate(OrgApacheLuceneIndexSegmentDocValues *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentDocValues *new_OrgApacheLuceneIndexSegmentDocValues_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentDocValues *create_OrgApacheLuceneIndexSegmentDocValues_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentDocValues")
