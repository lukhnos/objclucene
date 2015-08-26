//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ArrayIntroSorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilArrayIntroSorter_INCLUDE_ALL")
#if OrgApacheLuceneUtilArrayIntroSorter_RESTRICT
#define OrgApacheLuceneUtilArrayIntroSorter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilArrayIntroSorter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilArrayIntroSorter_RESTRICT

#if !defined (_OrgApacheLuceneUtilArrayIntroSorter_) && (OrgApacheLuceneUtilArrayIntroSorter_INCLUDE_ALL || OrgApacheLuceneUtilArrayIntroSorter_INCLUDE)
#define _OrgApacheLuceneUtilArrayIntroSorter_

#define OrgApacheLuceneUtilIntroSorter_RESTRICT 1
#define OrgApacheLuceneUtilIntroSorter_INCLUDE 1
#include "org/apache/lucene/util/IntroSorter.h"

@class IOSObjectArray;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneUtilArrayIntroSorter : OrgApacheLuceneUtilIntroSorter

#pragma mark Public

- (instancetype)initWithNSObjectArray:(IOSObjectArray *)arr
               withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

#pragma mark Protected

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (jint)comparePivotWithInt:(jint)i;

- (void)setPivotWithInt:(jint)i;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilArrayIntroSorter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(OrgApacheLuceneUtilArrayIntroSorter *self, IOSObjectArray *arr, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneUtilArrayIntroSorter *new_OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(IOSObjectArray *arr, id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilArrayIntroSorter)

#endif

#pragma pop_macro("OrgApacheLuceneUtilArrayIntroSorter_INCLUDE_ALL")
