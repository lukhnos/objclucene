//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/MergedIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilMergedIterator_INCLUDE_ALL")
#if OrgApacheLuceneUtilMergedIterator_RESTRICT
#define OrgApacheLuceneUtilMergedIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilMergedIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilMergedIterator_RESTRICT

#if !defined (_OrgApacheLuceneUtilMergedIterator_) && (OrgApacheLuceneUtilMergedIterator_INCLUDE_ALL || OrgApacheLuceneUtilMergedIterator_INCLUDE)
#define _OrgApacheLuceneUtilMergedIterator_

#define JavaUtilIterator_RESTRICT 1
#define JavaUtilIterator_INCLUDE 1
#include "java/util/Iterator.h"

@class IOSObjectArray;
@protocol JavaLangComparable;

@interface OrgApacheLuceneUtilMergedIterator : NSObject < JavaUtilIterator >

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)removeDuplicates
      withJavaUtilIteratorArray:(IOSObjectArray *)iterators;

- (instancetype)initWithJavaUtilIteratorArray:(IOSObjectArray *)iterators;

- (jboolean)hasNext;

- (id)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMergedIterator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMergedIterator_initWithJavaUtilIteratorArray_(OrgApacheLuceneUtilMergedIterator *self, IOSObjectArray *iterators);

FOUNDATION_EXPORT OrgApacheLuceneUtilMergedIterator *new_OrgApacheLuceneUtilMergedIterator_initWithJavaUtilIteratorArray_(IOSObjectArray *iterators) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilMergedIterator_initWithBoolean_withJavaUtilIteratorArray_(OrgApacheLuceneUtilMergedIterator *self, jboolean removeDuplicates, IOSObjectArray *iterators);

FOUNDATION_EXPORT OrgApacheLuceneUtilMergedIterator *new_OrgApacheLuceneUtilMergedIterator_initWithBoolean_withJavaUtilIteratorArray_(jboolean removeDuplicates, IOSObjectArray *iterators) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMergedIterator)

#endif

#pragma pop_macro("OrgApacheLuceneUtilMergedIterator_INCLUDE_ALL")
