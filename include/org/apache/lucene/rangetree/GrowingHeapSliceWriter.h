//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/GrowingHeapSliceWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE_ALL")
#if OrgApacheLuceneRangetreeGrowingHeapSliceWriter_RESTRICT
#define OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneRangetreeGrowingHeapSliceWriter_RESTRICT

#if !defined (_OrgApacheLuceneRangetreeGrowingHeapSliceWriter_) && (OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE_ALL || OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE)
#define _OrgApacheLuceneRangetreeGrowingHeapSliceWriter_

#define OrgApacheLuceneRangetreeSliceWriter_RESTRICT 1
#define OrgApacheLuceneRangetreeSliceWriter_INCLUDE 1
#include "org/apache/lucene/rangetree/SliceWriter.h"

@class IOSIntArray;
@class IOSLongArray;
@protocol OrgApacheLuceneRangetreeSliceReader;

@interface OrgApacheLuceneRangetreeGrowingHeapSliceWriter : NSObject < OrgApacheLuceneRangetreeSliceWriter > {
 @public
  IOSLongArray *values_;
  IOSIntArray *docIDs_;
  IOSLongArray *ords_;
  jint maxSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

- (void)appendWithLong:(jlong)value
              withLong:(jlong)ord
               withInt:(jint)docID;

- (void)close;

- (void)destroy;

- (id<OrgApacheLuceneRangetreeSliceReader>)getReaderWithLong:(jlong)start;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeGrowingHeapSliceWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeGrowingHeapSliceWriter, values_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeGrowingHeapSliceWriter, docIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeGrowingHeapSliceWriter, ords_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initWithInt_(OrgApacheLuceneRangetreeGrowingHeapSliceWriter *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeGrowingHeapSliceWriter *new_OrgApacheLuceneRangetreeGrowingHeapSliceWriter_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeGrowingHeapSliceWriter)

#endif

#pragma pop_macro("OrgApacheLuceneRangetreeGrowingHeapSliceWriter_INCLUDE_ALL")
