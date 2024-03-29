//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/StoredFieldsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsStoredFieldsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsStoredFieldsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsStoredFieldsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsStoredFieldsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsStoredFieldsReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsStoredFieldsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsStoredFieldsReader || defined(INCLUDE_OrgApacheLuceneCodecsStoredFieldsReader))
#define OrgApacheLuceneCodecsStoredFieldsReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexStoredFieldVisitor;

/*!
 @brief Codec API for reading stored fields.
 <p>
  You need to implement <code>visitDocument(int, StoredFieldVisitor)</code> to
  read the stored fields for a document, implement <code>clone()</code> (creating
  clones of any IndexInputs used, etc), and <code>close()</code>
 */
@interface OrgApacheLuceneCodecsStoredFieldsReader : NSObject < NSCopying, JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Checks consistency of this reader.
 <p>
  Note that this may be costly in terms of I/O, e.g. 
  may involve computing a checksum value against large data files.
 */
- (void)checkIntegrity;

- (OrgApacheLuceneCodecsStoredFieldsReader *)java_clone;

/*!
 @brief Returns an instance optimized for merging.
 <p>
  The default implementation returns <code>this</code>
 */
- (OrgApacheLuceneCodecsStoredFieldsReader *)getMergeInstance;

/*!
 @brief Visit the stored fields for document <code>docID</code>
 */
- (void)visitDocumentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
   constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsStoredFieldsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsStoredFieldsReader_init(OrgApacheLuceneCodecsStoredFieldsReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsStoredFieldsReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsStoredFieldsReader")
