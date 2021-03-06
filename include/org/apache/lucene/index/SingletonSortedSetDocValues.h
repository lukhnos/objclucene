//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingletonSortedSetDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedSetDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexSingletonSortedSetDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedSetDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedSetDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSingletonSortedSetDocValues

#if !defined (OrgApacheLuceneIndexSingletonSortedSetDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedSetDocValues || defined(INCLUDE_OrgApacheLuceneIndexSingletonSortedSetDocValues))
#define OrgApacheLuceneIndexSingletonSortedSetDocValues_

#define RESTRICT_OrgApacheLuceneIndexRandomAccessOrds 1
#define INCLUDE_OrgApacheLuceneIndexRandomAccessOrds 1
#include "org/apache/lucene/index/RandomAccessOrds.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Exposes multi-valued view over a single-valued instance.
 <p>
 This can be used if you want to have one multi-valued implementation
 that works for single or multi-valued types.
 */
@interface OrgApacheLuceneIndexSingletonSortedSetDocValues : OrgApacheLuceneIndexRandomAccessOrds

#pragma mark Public

/*!
 @brief Creates a multi-valued view over the provided SortedDocValues
 */
- (instancetype)initWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)inArg;

- (jint)cardinality;

/*!
 @brief Return the wrapped <code>SortedDocValues</code>
 */
- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValues;

- (jlong)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord;

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

- (jlong)nextOrd;

- (jlong)ordAtWithInt:(jint)index;

- (void)setDocumentWithInt:(jint)docID;

- (OrgApacheLuceneIndexTermsEnum *)termsEnum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSingletonSortedSetDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSingletonSortedSetDocValues *self, OrgApacheLuceneIndexSortedDocValues *inArg);

FOUNDATION_EXPORT OrgApacheLuceneIndexSingletonSortedSetDocValues *new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSingletonSortedSetDocValues *create_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSingletonSortedSetDocValues)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedSetDocValues")
