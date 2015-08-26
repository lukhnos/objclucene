//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/HeapLatLonReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE_ALL")
#if OrgApacheLuceneBkdtreeHeapLatLonReader_RESTRICT
#define OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneBkdtreeHeapLatLonReader_RESTRICT

#if !defined (_OrgApacheLuceneBkdtreeHeapLatLonReader_) && (OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE_ALL || OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE)
#define _OrgApacheLuceneBkdtreeHeapLatLonReader_

#define OrgApacheLuceneBkdtreeLatLonReader_RESTRICT 1
#define OrgApacheLuceneBkdtreeLatLonReader_INCLUDE 1
#include "org/apache/lucene/bkdtree/LatLonReader.h"

@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneBkdtreeHeapLatLonReader : NSObject < OrgApacheLuceneBkdtreeLatLonReader > {
 @public
  IOSIntArray *latEncs_;
  IOSIntArray *lonEncs_;
  IOSLongArray *ords_;
  IOSIntArray *docIDs_;
  jint end_;
}

#pragma mark Public

- (void)close;

- (jint)docID;

- (jint)latEnc;

- (jint)lonEnc;

- (jboolean)next;

- (jlong)ord;

#pragma mark Package-Private

- (instancetype)initWithIntArray:(IOSIntArray *)latEncs
                    withIntArray:(IOSIntArray *)lonEncs
                   withLongArray:(IOSLongArray *)ords
                    withIntArray:(IOSIntArray *)docIDs
                         withInt:(jint)start
                         withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeHeapLatLonReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonReader, latEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonReader, lonEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonReader, ords_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeHeapLatLonReader, docIDs_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeHeapLatLonReader_initWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(OrgApacheLuceneBkdtreeHeapLatLonReader *self, IOSIntArray *latEncs, IOSIntArray *lonEncs, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeHeapLatLonReader *new_OrgApacheLuceneBkdtreeHeapLatLonReader_initWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(IOSIntArray *latEncs, IOSIntArray *lonEncs, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeHeapLatLonReader)

#endif

#pragma pop_macro("OrgApacheLuceneBkdtreeHeapLatLonReader_INCLUDE_ALL")
