//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/TermVectorsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsTermVectorsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsTermVectorsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsTermVectorsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsTermVectorsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsTermVectorsReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsTermVectorsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsTermVectorsReader || defined(INCLUDE_OrgApacheLuceneCodecsTermVectorsReader))
#define OrgApacheLuceneCodecsTermVectorsReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexFields;

/*!
 @brief Codec API for reading term vectors:
 */
@interface OrgApacheLuceneCodecsTermVectorsReader : NSObject < NSCopying, JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Checks consistency of this reader.
 <p>
  Note that this may be costly in terms of I/O, e.g. 
  may involve computing a checksum value against large data files.
 */
- (void)checkIntegrity;

/*!
 @brief Create a clone that one caller at a time may use to
   read term vectors.
 */
- (OrgApacheLuceneCodecsTermVectorsReader *)java_clone;

/*!
 @brief Returns term vectors for this document, or null if
   term vectors were not indexed.If offsets are
   available they are in an <code>OffsetAttribute</code>
   available from the <code>org.apache.lucene.index.PostingsEnum</code>.
 */
- (OrgApacheLuceneIndexFields *)getWithInt:(jint)doc;

/*!
 @brief Returns an instance optimized for merging.
 <p>
  The default implementation returns <code>this</code>
 */
- (OrgApacheLuceneCodecsTermVectorsReader *)getMergeInstance;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
   constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsTermVectorsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsTermVectorsReader_init(OrgApacheLuceneCodecsTermVectorsReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsTermVectorsReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsTermVectorsReader")
