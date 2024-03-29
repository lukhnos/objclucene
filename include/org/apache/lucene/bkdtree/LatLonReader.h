//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/LatLonReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeLatLonReader")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeLatLonReader
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeLatLonReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeLatLonReader 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeLatLonReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneBkdtreeLatLonReader_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeLatLonReader || defined(INCLUDE_OrgApacheLuceneBkdtreeLatLonReader))
#define OrgApacheLuceneBkdtreeLatLonReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

/*!
 @brief Abstracts away whether OfflineSorter or simple arrays in heap are used.
 */
@protocol OrgApacheLuceneBkdtreeLatLonReader < JavaIoCloseable, JavaObject >

- (jboolean)next;

- (jint)latEnc;

- (jint)lonEnc;

- (jlong)ord;

- (jint)docID;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeLatLonReader)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeLatLonReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeLatLonReader")
