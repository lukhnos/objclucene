//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingStoredFieldsIndexWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_RESTRICT
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_) && (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

@class IOSIntArray;
@class IOSLongArray;
@class OrgApacheLuceneStoreIndexOutput;

@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter : NSObject < JavaIoCloseable > {
 @public
  OrgApacheLuceneStoreIndexOutput *fieldsIndexOut_;
  jint blockSize_;
  jint totalDocs_;
  jint blockDocs_;
  jint blockChunks_;
  jlong firstStartPointer_;
  jlong maxStartPointer_;
  IOSIntArray *docBaseDeltas_;
  IOSLongArray *startPointerDeltas_;
}

#pragma mark Public

- (void)close;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)indexOutput
                                                withInt:(jint)blockSize;

- (void)finishWithInt:(jint)numDocs
             withLong:(jlong)maxPointer;

- (void)writeIndexWithInt:(jint)numDocs
                 withLong:(jlong)startPointer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter, fieldsIndexOut_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter, docBaseDeltas_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter, startPointerDeltas_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *self, OrgApacheLuceneStoreIndexOutput *indexOutput, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(OrgApacheLuceneStoreIndexOutput *indexOutput, jint blockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_INCLUDE_ALL")
