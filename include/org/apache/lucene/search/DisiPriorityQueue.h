//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisiPriorityQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDisiPriorityQueue")
#ifdef RESTRICT_OrgApacheLuceneSearchDisiPriorityQueue
#define INCLUDE_ALL_OrgApacheLuceneSearchDisiPriorityQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDisiPriorityQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDisiPriorityQueue

#if !defined (OrgApacheLuceneSearchDisiPriorityQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchDisiPriorityQueue || defined(INCLUDE_OrgApacheLuceneSearchDisiPriorityQueue))
#define OrgApacheLuceneSearchDisiPriorityQueue_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class OrgApacheLuceneSearchDisiWrapper;
@protocol JavaUtilIterator;

/*!
 @brief A priority queue of DocIdSetIterators that orders by current doc ID.
 This specialization is needed over <code>PriorityQueue</code> because the
 pluggable comparison function makes the rebalancing quite slow.
 */
@interface OrgApacheLuceneSearchDisiPriorityQueue : NSObject < JavaLangIterable >

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

- (OrgApacheLuceneSearchDisiWrapper *)addWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)entry_;

- (id<JavaUtilIterator>)iterator;

- (OrgApacheLuceneSearchDisiWrapper *)pop;

- (jint)size;

- (OrgApacheLuceneSearchDisiWrapper *)top;

/*!
 @brief Get the list of scorers which are on the current doc.
 */
- (OrgApacheLuceneSearchDisiWrapper *)topList;

- (OrgApacheLuceneSearchDisiWrapper *)updateTop;

#pragma mark Package-Private

- (void)downHeapWithInt:(jint)size;

+ (jint)leftNodeWithInt:(jint)node;

+ (jint)parentNodeWithInt:(jint)node;

+ (jint)rightNodeWithInt:(jint)leftNode;

- (OrgApacheLuceneSearchDisiWrapper *)updateTopWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)topReplacement;

- (void)upHeapWithInt:(jint)i;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDisiPriorityQueue)

FOUNDATION_EXPORT jint OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(jint node);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(jint leftNode);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(jint node);

FOUNDATION_EXPORT void OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(OrgApacheLuceneSearchDisiPriorityQueue *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchDisiPriorityQueue *new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchDisiPriorityQueue *create_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDisiPriorityQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDisiPriorityQueue")
