//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermVectorsConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsConsumer")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorsConsumer
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorsConsumer

#if !defined (OrgApacheLuceneIndexTermVectorsConsumer_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsConsumer || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsConsumer))
#define OrgApacheLuceneIndexTermVectorsConsumer_

#define RESTRICT_OrgApacheLuceneIndexTermsHash 1
#define INCLUDE_OrgApacheLuceneIndexTermsHash 1
#include "org/apache/lucene/index/TermsHash.h"

@class OrgApacheLuceneCodecsTermVectorsWriter;
@class OrgApacheLuceneIndexByteSliceReader;
@class OrgApacheLuceneIndexDocumentsWriterPerThread;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexTermVectorsConsumerPerField;
@class OrgApacheLuceneIndexTermsHashPerField;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexTermVectorsConsumer : OrgApacheLuceneIndexTermsHash {
 @public
  OrgApacheLuceneCodecsTermVectorsWriter *writer_;
  /*!
   @brief Scratch term used by TermVectorsConsumerPerField.finishDocument.
   */
  OrgApacheLuceneUtilBytesRef *flushTerm_;
  OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter_;
  /*!
   @brief Used by TermVectorsConsumerPerField when serializing
 the term vectors.
   */
  OrgApacheLuceneIndexByteSliceReader *vectorSliceReaderPos_;
  OrgApacheLuceneIndexByteSliceReader *vectorSliceReaderOff_;
  jboolean hasVectors_;
  jint numVectorFields_;
  jint lastDocID_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)docWriter;

- (void)abort;

- (OrgApacheLuceneIndexTermsHashPerField *)addFieldWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)invertState
                                                          withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

#pragma mark Package-Private

- (void)addFieldToFlushWithOrgApacheLuceneIndexTermVectorsConsumerPerField:(OrgApacheLuceneIndexTermVectorsConsumerPerField *)fieldToFlush;

/*!
 @brief Fills in no-term-vectors for all docs we haven't seen
 since the last doc that had term vectors.
 */
- (void)fillWithInt:(jint)docID;

- (void)finishDocument;

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)fieldsToFlush
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (void)resetFields;

- (void)startDocument;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsConsumer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsConsumer, writer_, OrgApacheLuceneCodecsTermVectorsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsConsumer, flushTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsConsumer, docWriter_, OrgApacheLuceneIndexDocumentsWriterPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsConsumer, vectorSliceReaderPos_, OrgApacheLuceneIndexByteSliceReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsConsumer, vectorSliceReaderOff_, OrgApacheLuceneIndexByteSliceReader *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsConsumer_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexTermVectorsConsumer *self, OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsConsumer *new_OrgApacheLuceneIndexTermVectorsConsumer_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsConsumer *create_OrgApacheLuceneIndexTermVectorsConsumer_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsConsumer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsConsumer")
