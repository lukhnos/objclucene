//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldsProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsFieldsProducer")
#ifdef RESTRICT_OrgApacheLuceneCodecsFieldsProducer
#define INCLUDE_ALL_OrgApacheLuceneCodecsFieldsProducer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsFieldsProducer 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsFieldsProducer

#if !defined (OrgApacheLuceneCodecsFieldsProducer_) && (INCLUDE_ALL_OrgApacheLuceneCodecsFieldsProducer || defined(INCLUDE_OrgApacheLuceneCodecsFieldsProducer))
#define OrgApacheLuceneCodecsFieldsProducer_

#define RESTRICT_OrgApacheLuceneIndexFields 1
#define INCLUDE_OrgApacheLuceneIndexFields 1
#include "org/apache/lucene/index/Fields.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

/*!
 @brief Abstract API that produces terms, doc, freq, prox, offset and
 payloads postings.
 */
@interface OrgApacheLuceneCodecsFieldsProducer : OrgApacheLuceneIndexFields < JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Checks consistency of this reader.
 <p>
 Note that this may be costly in terms of I/O, e.g. 
 may involve computing a checksum value against large data files.
 */
- (void)checkIntegrity;

- (void)close;

/*!
 @brief Returns an instance optimized for merging.
 <p>
 The default implementation returns <code>this</code> 
 */
- (OrgApacheLuceneCodecsFieldsProducer *)getMergeInstance;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsFieldsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsFieldsProducer_init(OrgApacheLuceneCodecsFieldsProducer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsFieldsProducer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsFieldsProducer")
