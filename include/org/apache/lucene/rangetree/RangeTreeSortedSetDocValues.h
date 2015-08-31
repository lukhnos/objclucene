//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/RangeTreeSortedSetDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE_ALL")
#if OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_RESTRICT
#define OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE_ALL 0
#else
#define OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_RESTRICT

#if !defined (_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_) && (OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE_ALL || OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE)
#define _OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_

#define OrgApacheLuceneIndexSortedSetDocValues_RESTRICT 1
#define OrgApacheLuceneIndexSortedSetDocValues_INCLUDE 1
#include "org/apache/lucene/index/SortedSetDocValues.h"

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneRangetreeRangeTreeReader;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues : OrgApacheLuceneIndexSortedSetDocValues {
 @public
  OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader_;
  OrgApacheLuceneIndexSortedSetDocValues *delegate_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneRangetreeRangeTreeReader:(OrgApacheLuceneRangetreeRangeTreeReader *)rangeTreeReader
                     withOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)delegate;

- (OrgApacheLuceneRangetreeRangeTreeReader *)getRangeTreeReader;

- (jlong)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord;

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

- (jlong)nextOrd;

- (void)setDocumentWithInt:(jint)doc;

- (OrgApacheLuceneIndexTermsEnum *)termsEnum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues, rangeTreeReader_, OrgApacheLuceneRangetreeRangeTreeReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues, delegate_, OrgApacheLuceneIndexSortedSetDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_initWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *self, OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedSetDocValues *delegate);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *new_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_initWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedSetDocValues *delegate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues)

#endif

#pragma pop_macro("OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_INCLUDE_ALL")