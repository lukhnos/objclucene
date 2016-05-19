//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/HeapSliceReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceReader")
#ifdef RESTRICT_OrgApacheLuceneRangetreeHeapSliceReader
#define INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceReader 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeHeapSliceReader

#if !defined (OrgApacheLuceneRangetreeHeapSliceReader_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceReader || defined(INCLUDE_OrgApacheLuceneRangetreeHeapSliceReader))
#define OrgApacheLuceneRangetreeHeapSliceReader_

#define RESTRICT_OrgApacheLuceneRangetreeSliceReader 1
#define INCLUDE_OrgApacheLuceneRangetreeSliceReader 1
#include "org/apache/lucene/rangetree/SliceReader.h"

@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneRangetreeHeapSliceReader : NSObject < OrgApacheLuceneRangetreeSliceReader > {
 @public
  IOSLongArray *values_;
  IOSLongArray *ords_;
  IOSIntArray *docIDs_;
  jint end_;
}

#pragma mark Public

- (void)close;

- (jint)docID;

- (jboolean)next;

- (jlong)ord;

- (jlong)value;

#pragma mark Package-Private

- (instancetype)initWithLongArray:(IOSLongArray *)values
                    withLongArray:(IOSLongArray *)ords
                     withIntArray:(IOSIntArray *)docIDs
                          withInt:(jint)start
                          withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeHeapSliceReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceReader, values_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceReader, ords_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceReader, docIDs_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(OrgApacheLuceneRangetreeHeapSliceReader *self, IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeHeapSliceReader *new_OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneRangetreeHeapSliceReader *create_OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeHeapSliceReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceReader")
