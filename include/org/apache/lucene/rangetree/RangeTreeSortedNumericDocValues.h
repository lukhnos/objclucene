//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/RangeTreeSortedNumericDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE_ALL")
#if OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_RESTRICT
#define OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE_ALL 0
#else
#define OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_RESTRICT

#if !defined (_OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_) && (OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE_ALL || OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE)
#define _OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_

#define OrgApacheLuceneIndexSortedNumericDocValues_RESTRICT 1
#define OrgApacheLuceneIndexSortedNumericDocValues_INCLUDE 1
#include "org/apache/lucene/index/SortedNumericDocValues.h"

@class OrgApacheLuceneRangetreeRangeTreeReader;

@interface OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues : OrgApacheLuceneIndexSortedNumericDocValues {
 @public
  OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader_;
  OrgApacheLuceneIndexSortedNumericDocValues *delegate_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneRangetreeRangeTreeReader:(OrgApacheLuceneRangetreeRangeTreeReader *)rangeTreeReader
                 withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)delegate;

- (jint)count;

- (OrgApacheLuceneRangetreeRangeTreeReader *)getRangeTreeReader;

- (void)setDocumentWithInt:(jint)doc;

- (jlong)valueAtWithInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues, rangeTreeReader_, OrgApacheLuceneRangetreeRangeTreeReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues, delegate_, OrgApacheLuceneIndexSortedNumericDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_initWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues *self, OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedNumericDocValues *delegate);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues *new_OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_initWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedNumericDocValues *delegate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues)

#endif

#pragma pop_macro("OrgApacheLuceneRangetreeRangeTreeSortedNumericDocValues_INCLUDE_ALL")
