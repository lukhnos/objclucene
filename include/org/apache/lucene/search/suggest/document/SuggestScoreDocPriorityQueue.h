//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/SuggestScoreDocPriorityQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue))
#define OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc;

/*!
 @brief Bounded priority queue for <code>SuggestScoreDoc</code>s.
 Priority is based on <code>SuggestScoreDoc.score</code> and tie
  is broken by <code>SuggestScoreDoc.doc</code>
 */
@interface OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

/*!
 @brief Creates a new priority queue of the specified size.
 */
- (instancetype __nonnull)initPackagePrivateWithInt:(jint)size;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)addWithId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)arg0;

/*!
 @brief Returns the top N results in descending order.
 */
- (IOSObjectArray *)getResults;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)insertWithOverflowWithId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)arg0;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)pop;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)top;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)updateTop;

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)updateTopWithId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)arg0;

#pragma mark Protected

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)getSentinelObject;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)a
                    withId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)b;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                          withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initPackagePrivateWithInt_(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *new_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initPackagePrivateWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *create_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initPackagePrivateWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue")
