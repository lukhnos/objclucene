//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/HeapLatLonWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeHeapLatLonWriter")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeHeapLatLonWriter
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeHeapLatLonWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeHeapLatLonWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeHeapLatLonWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneBkdtreeHeapLatLonWriter_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeHeapLatLonWriter || defined(INCLUDE_OrgApacheLuceneBkdtreeHeapLatLonWriter))
#define OrgApacheLuceneBkdtreeHeapLatLonWriter_

#define RESTRICT_OrgApacheLuceneBkdtreeLatLonWriter 1
#define INCLUDE_OrgApacheLuceneBkdtreeLatLonWriter 1
#include "org/apache/lucene/bkdtree/LatLonWriter.h"

@class IOSIntArray;
@class IOSLongArray;
@protocol OrgApacheLuceneBkdtreeLatLonReader;

@interface OrgApacheLuceneBkdtreeHeapLatLonWriter : NSObject < OrgApacheLuceneBkdtreeLatLonWriter > {
 @public
  IOSIntArray *latEncs_;
  IOSIntArray *lonEncs_;
  IOSIntArray *docIDs_;
  IOSLongArray *ords_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithInt:(jint)count;

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID;

- (void)close;

- (void)destroy;

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeHeapLatLonWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonWriter, latEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonWriter, lonEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonWriter, docIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonWriter, ords_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeHeapLatLonWriter_initPackagePrivateWithInt_(OrgApacheLuceneBkdtreeHeapLatLonWriter *self, jint count);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeHeapLatLonWriter *new_OrgApacheLuceneBkdtreeHeapLatLonWriter_initPackagePrivateWithInt_(jint count) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeHeapLatLonWriter *create_OrgApacheLuceneBkdtreeHeapLatLonWriter_initPackagePrivateWithInt_(jint count);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeHeapLatLonWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeHeapLatLonWriter")
