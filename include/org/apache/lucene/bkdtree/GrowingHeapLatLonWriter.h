//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter

#if !defined (OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter || defined(INCLUDE_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter))
#define OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_

#define RESTRICT_OrgApacheLuceneBkdtreeLatLonWriter 1
#define INCLUDE_OrgApacheLuceneBkdtreeLatLonWriter 1
#include "org/apache/lucene/bkdtree/LatLonWriter.h"

@class IOSIntArray;
@class IOSLongArray;
@protocol OrgApacheLuceneBkdtreeLatLonReader;

@interface OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter : NSObject < OrgApacheLuceneBkdtreeLatLonWriter > {
 @public
  IOSIntArray *latEncs_;
  IOSIntArray *lonEncs_;
  IOSIntArray *docIDs_;
  IOSLongArray *ords_;
  jint maxSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID;

- (void)close;

- (void)destroy;

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, latEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, lonEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, docIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, ords_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *new_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *create_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter")
