//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/TermVectorsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsTermVectorsReader_INCLUDE_ALL")
#if OrgApacheLuceneCodecsTermVectorsReader_RESTRICT
#define OrgApacheLuceneCodecsTermVectorsReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsTermVectorsReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsTermVectorsReader_RESTRICT

#if !defined (_OrgApacheLuceneCodecsTermVectorsReader_) && (OrgApacheLuceneCodecsTermVectorsReader_INCLUDE_ALL || OrgApacheLuceneCodecsTermVectorsReader_INCLUDE)
#define _OrgApacheLuceneCodecsTermVectorsReader_

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexFields;

@interface OrgApacheLuceneCodecsTermVectorsReader : NSObject < NSCopying, JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (void)checkIntegrity;

- (OrgApacheLuceneCodecsTermVectorsReader *)clone;

- (OrgApacheLuceneIndexFields *)getWithInt:(jint)doc;

- (OrgApacheLuceneCodecsTermVectorsReader *)getMergeInstance;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsTermVectorsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsTermVectorsReader_init(OrgApacheLuceneCodecsTermVectorsReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsTermVectorsReader)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsTermVectorsReader_INCLUDE_ALL")
