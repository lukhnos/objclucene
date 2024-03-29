//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BufferedUpdatesStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream")
#ifdef RESTRICT_OrgApacheLuceneIndexBufferedUpdatesStream
#define INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexBufferedUpdatesStream

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexBufferedUpdatesStream_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream || defined(INCLUDE_OrgApacheLuceneIndexBufferedUpdatesStream))
#define OrgApacheLuceneIndexBufferedUpdatesStream_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@class OrgApacheLuceneIndexIndexWriter_ReaderPool;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneUtilInfoStream;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexBufferedUpdatesStream : NSObject < OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

- (jboolean)any;

/*!
 @brief Resolves the buffered deleted Term/Query/docIDs, into
   actual deleted docIDs in the liveDocs MutableBits for
   each SegmentReader.
 */
- (OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult *)applyDeletesAndUpdatesWithOrgApacheLuceneIndexIndexWriter_ReaderPool:(OrgApacheLuceneIndexIndexWriter_ReaderPool *)pool
                                                                                                                      withJavaUtilList:(id<JavaUtilList>)infos;

- (void)clear;

- (id<JavaUtilCollection>)getChildResources;

- (jint)numTerms;

- (void)pruneWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos;

- (jlong)pushWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)packet;

- (jlong)ramBytesUsed;

#pragma mark Package-Private

- (jlong)getNextGen;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdatesStream)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdatesStream_initPackagePrivateWithOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexBufferedUpdatesStream *self, OrgApacheLuceneUtilInfoStream *infoStream);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream *new_OrgApacheLuceneIndexBufferedUpdatesStream_initPackagePrivateWithOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneUtilInfoStream *infoStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream *create_OrgApacheLuceneIndexBufferedUpdatesStream_initPackagePrivateWithOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneUtilInfoStream *infoStream);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdatesStream)

#endif

#if !defined (OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream || defined(INCLUDE_OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult))
#define OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult_

@protocol JavaUtilList;

@interface OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult : NSObject {
 @public
  jboolean anyDeletes_;
  jlong gen_;
  id<JavaUtilList> allDeleted_;
}

#pragma mark Package-Private

- (instancetype __nonnull)initWithBoolean:(jboolean)anyDeletes
                                 withLong:(jlong)gen
                         withJavaUtilList:(id<JavaUtilList>)allDeleted;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult, allDeleted_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult_initWithBoolean_withLong_withJavaUtilList_(OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult *self, jboolean anyDeletes, jlong gen, id<JavaUtilList> allDeleted);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult *new_OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult_initWithBoolean_withLong_withJavaUtilList_(jboolean anyDeletes, jlong gen, id<JavaUtilList> allDeleted) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult *create_OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult_initWithBoolean_withLong_withJavaUtilList_(jboolean anyDeletes, jlong gen, id<JavaUtilList> allDeleted);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdatesStream_ApplyDeletesResult)

#endif

#if !defined (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream || defined(INCLUDE_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState))
#define OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState_

@class OrgApacheLuceneIndexIndexWriter_ReaderPool;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexReadersAndUpdates;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentReader;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState : NSObject {
 @public
  jlong delGen_;
  OrgApacheLuceneIndexReadersAndUpdates *rld_;
  OrgApacheLuceneIndexSegmentReader *reader_;
  jint startDelCount_;
  OrgApacheLuceneIndexTermsEnum *termsEnum_;
  OrgApacheLuceneIndexPostingsEnum *postingsEnum_;
  OrgApacheLuceneUtilBytesRef *term_;
  jboolean any_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexWriter_ReaderPool:(OrgApacheLuceneIndexIndexWriter_ReaderPool *)pool
                                   withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info;

- (void)finishWithOrgApacheLuceneIndexIndexWriter_ReaderPool:(OrgApacheLuceneIndexIndexWriter_ReaderPool *)pool;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState, rld_, OrgApacheLuceneIndexReadersAndUpdates *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState, reader_, OrgApacheLuceneIndexSegmentReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState, termsEnum_, OrgApacheLuceneIndexTermsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState, postingsEnum_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState, term_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState_initWithOrgApacheLuceneIndexIndexWriter_ReaderPool_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *self, OrgApacheLuceneIndexIndexWriter_ReaderPool *pool, OrgApacheLuceneIndexSegmentCommitInfo *info);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *new_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState_initWithOrgApacheLuceneIndexIndexWriter_ReaderPool_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexIndexWriter_ReaderPool *pool, OrgApacheLuceneIndexSegmentCommitInfo *info) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *create_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState_initWithOrgApacheLuceneIndexIndexWriter_ReaderPool_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexIndexWriter_ReaderPool *pool, OrgApacheLuceneIndexSegmentCommitInfo *info);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState)

#endif

#if !defined (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream || defined(INCLUDE_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue))
#define OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState;

/*!
 @brief Does a merge sort by current term across all segments.
 */
@interface OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)size;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)addWithId:(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)arg0;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)insertWithOverflowWithId:(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)arg0;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)pop;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)top;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)updateTop;

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)updateTopWithId:(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)arg0;

#pragma mark Protected

- (OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)getSentinelObject;

- (jboolean)lessThanWithId:(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)a
                    withId:(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentState *)b;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0
                          withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue_initWithInt_(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue *new_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue *create_OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdatesStream_SegmentQueue)

#endif

#if !defined (OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream || defined(INCLUDE_OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit))
#define OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_

@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit : NSObject {
 @public
  OrgApacheLuceneSearchQuery *query_;
  jint limit_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                     withInt:(jint)limit;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit, query_, OrgApacheLuceneSearchQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_initWithOrgApacheLuceneSearchQuery_withInt_(OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit *self, OrgApacheLuceneSearchQuery *query, jint limit);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit *new_OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_initWithOrgApacheLuceneSearchQuery_withInt_(OrgApacheLuceneSearchQuery *query, jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit *create_OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_initWithOrgApacheLuceneSearchQuery_withInt_(OrgApacheLuceneSearchQuery *query, jint limit);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexBufferedUpdatesStream")
