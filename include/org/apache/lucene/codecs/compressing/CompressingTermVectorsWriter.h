//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingTermVectorsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_RESTRICT
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_) && (OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_

#define OrgApacheLuceneCodecsTermVectorsWriter_RESTRICT 1
#define OrgApacheLuceneCodecsTermVectorsWriter_INCLUDE 1
#include "org/apache/lucene/codecs/TermVectorsWriter.h"

@class OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader;
@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneUtilBytesRef;

#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_MAX_DOCUMENTS_PER_CHUNK 128
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_START 0
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_CHUNK_STATS 1
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_CURRENT 1
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_PACKED_BLOCK_SIZE 64
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_POSITIONS 1
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_OFFSETS 2
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_PAYLOADS 4

@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter : OrgApacheLuceneCodecsTermVectorsWriter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                         withNSString:(NSString *)segmentSuffix
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context
                                         withNSString:(NSString *)formatName
  withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode
                                              withInt:(jint)chunkSize
                                              withInt:(jint)blockSize;

- (void)addPositionWithInt:(jint)position
                   withInt:(jint)startOffset
                   withInt:(jint)endOffset
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (void)addProxWithInt:(jint)numProx
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)positions
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)offsets;

- (void)close;

- (void)finishWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                         withInt:(jint)numDocs;

- (void)finishDocument;

- (void)finishField;

- (jint)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

- (void)startDocumentWithInt:(jint)numVectorFields;

- (void)startFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info
                                            withInt:(jint)numTerms
                                        withBoolean:(jboolean)positions
                                        withBoolean:(jboolean)offsets
                                        withBoolean:(jboolean)payloads;

- (void)startTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                         withInt:(jint)freq;

#pragma mark Package-Private

- (jboolean)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *)candidate;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, MAX_DOCUMENTS_PER_CHUNK, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VECTORS_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_INDEX_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VECTORS_INDEX_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_CODEC_SFX_IDX_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, CODEC_SFX_IDX_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_CODEC_SFX_DAT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, CODEC_SFX_DAT_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_CHUNK_STATS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_CURRENT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, PACKED_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, POSITIONS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, OFFSETS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, PAYLOADS, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, FLAGS_BITS_, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, BULK_MERGE_ENABLED_SYSPROP_, NSString *)

FOUNDATION_EXPORT jboolean OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, BULK_MERGE_ENABLED_, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *self, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_INCLUDE_ALL")
