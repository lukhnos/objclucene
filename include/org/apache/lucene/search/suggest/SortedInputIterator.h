//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/SortedInputIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestSortedInputIterator_RESTRICT
#define OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestSortedInputIterator_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestSortedInputIterator_) && (OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE_ALL || OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE)
#define _OrgApacheLuceneSearchSuggestSortedInputIterator_

#define OrgApacheLuceneSearchSuggestInputIterator_RESTRICT 1
#define OrgApacheLuceneSearchSuggestInputIterator_INCLUDE 1
#include "org/apache/lucene/search/suggest/InputIterator.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreByteArrayDataInput;
@class OrgApacheLuceneStoreByteArrayDataOutput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter;
@protocol JavaUtilComparator;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSuggestSortedInputIterator : NSObject < OrgApacheLuceneSearchSuggestInputIterator >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)source;

- (instancetype)initWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)source
                                           withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (id<JavaUtilSet>)contexts;

- (jboolean)hasContexts;

- (jboolean)hasPayloads;

- (OrgApacheLuceneUtilBytesRef *)next;

- (OrgApacheLuceneUtilBytesRef *)payload;

- (jlong)weight;

#pragma mark Protected

- (jlong)decodeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)scratch
    withOrgApacheLuceneStoreByteArrayDataInput:(OrgApacheLuceneStoreByteArrayDataInput *)tmpInput;

- (id<JavaUtilSet>)decodeContextsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)scratch
                      withOrgApacheLuceneStoreByteArrayDataInput:(OrgApacheLuceneStoreByteArrayDataInput *)tmpInput;

- (OrgApacheLuceneUtilBytesRef *)decodePayloadWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)scratch
                                   withOrgApacheLuceneStoreByteArrayDataInput:(OrgApacheLuceneStoreByteArrayDataInput *)tmpInput;

- (void)encodeWithOrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter:(OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter *)writer
                           withOrgApacheLuceneStoreByteArrayDataOutput:(OrgApacheLuceneStoreByteArrayDataOutput *)output
                                                         withByteArray:(IOSByteArray *)buffer
                                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)spare
                                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                                                       withJavaUtilSet:(id<JavaUtilSet>)contexts
                                                              withLong:(jlong)weight;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestSortedInputIterator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestSortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(OrgApacheLuceneSearchSuggestSortedInputIterator *self, id<OrgApacheLuceneSearchSuggestInputIterator> source);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestSortedInputIterator *new_OrgApacheLuceneSearchSuggestSortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(id<OrgApacheLuceneSearchSuggestInputIterator> source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestSortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_withJavaUtilComparator_(OrgApacheLuceneSearchSuggestSortedInputIterator *self, id<OrgApacheLuceneSearchSuggestInputIterator> source, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestSortedInputIterator *new_OrgApacheLuceneSearchSuggestSortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_withJavaUtilComparator_(id<OrgApacheLuceneSearchSuggestInputIterator> source, id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestSortedInputIterator)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestSortedInputIterator_INCLUDE_ALL")
