//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/LatLonWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE_ALL")
#if OrgApacheLuceneBkdtreeLatLonWriter_RESTRICT
#define OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneBkdtreeLatLonWriter_RESTRICT

#if !defined (_OrgApacheLuceneBkdtreeLatLonWriter_) && (OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE_ALL || OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE)
#define _OrgApacheLuceneBkdtreeLatLonWriter_

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

@protocol OrgApacheLuceneBkdtreeLatLonReader;

@protocol OrgApacheLuceneBkdtreeLatLonWriter < JavaIoCloseable, NSObject, JavaObject >

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID;

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start;

- (void)destroy;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeLatLonWriter)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeLatLonWriter)

#endif

#pragma pop_macro("OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE_ALL")
