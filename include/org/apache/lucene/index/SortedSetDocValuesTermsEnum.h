//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedSetDocValuesTermsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_RESTRICT
#define OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_RESTRICT

#if !defined (_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_) && (OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE_ALL || OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE)
#define _OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_

#define OrgApacheLuceneIndexTermsEnum_RESTRICT 1
#define OrgApacheLuceneIndexTermsEnum_INCLUDE 1
#include "org/apache/lucene/index/TermsEnum.h"

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexTermState;
@class OrgApacheLuceneIndexTermsEnum_SeekStatusEnum;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexSortedSetDocValuesTermsEnum : OrgApacheLuceneIndexTermsEnum

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)values;

- (jint)docFreq;

- (OrgApacheLuceneUtilBytesRef *)next;

- (jlong)ord;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

- (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state;

- (void)seekExactWithLong:(jlong)ord;

- (OrgApacheLuceneUtilBytesRef *)term;

- (OrgApacheLuceneIndexTermState *)termState;

- (jlong)totalTermFreq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *self, OrgApacheLuceneIndexSortedSetDocValues *values);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *new_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_INCLUDE_ALL")
