//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/HeapSliceWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceWriter")
#ifdef RESTRICT_OrgApacheLuceneRangetreeHeapSliceWriter
#define INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeHeapSliceWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneRangetreeHeapSliceWriter_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceWriter || defined(INCLUDE_OrgApacheLuceneRangetreeHeapSliceWriter))
#define OrgApacheLuceneRangetreeHeapSliceWriter_

#define RESTRICT_OrgApacheLuceneRangetreeSliceWriter 1
#define INCLUDE_OrgApacheLuceneRangetreeSliceWriter 1
#include "org/apache/lucene/rangetree/SliceWriter.h"

@class IOSIntArray;
@class IOSLongArray;
@protocol OrgApacheLuceneRangetreeSliceReader;

@interface OrgApacheLuceneRangetreeHeapSliceWriter : NSObject < OrgApacheLuceneRangetreeSliceWriter > {
 @public
  IOSLongArray *values_;
  IOSIntArray *docIDs_;
  IOSLongArray *ords_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithInt:(jint)count;

- (void)appendWithLong:(jlong)value
              withLong:(jlong)ord
               withInt:(jint)docID;

- (void)close;

- (void)destroy;

- (id<OrgApacheLuceneRangetreeSliceReader>)getReaderWithLong:(jlong)start;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeHeapSliceWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceWriter, values_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceWriter, docIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeHeapSliceWriter, ords_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeHeapSliceWriter_initPackagePrivateWithInt_(OrgApacheLuceneRangetreeHeapSliceWriter *self, jint count);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeHeapSliceWriter *new_OrgApacheLuceneRangetreeHeapSliceWriter_initPackagePrivateWithInt_(jint count) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneRangetreeHeapSliceWriter *create_OrgApacheLuceneRangetreeHeapSliceWriter_initPackagePrivateWithInt_(jint count);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeHeapSliceWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeHeapSliceWriter")
