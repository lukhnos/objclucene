//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingStoredFieldsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_RESTRICT
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_) && (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_

#define OrgApacheLuceneCodecsStoredFieldsReader_RESTRICT 1
#define OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE 1
#include "org/apache/lucene/codecs/StoredFieldsReader.h"

@class OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader;
@class OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument;
@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;

@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader : OrgApacheLuceneCodecsStoredFieldsReader

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                         withNSString:(NSString *)segmentSuffix
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context
                                         withNSString:(NSString *)formatName
  withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode;

- (void)checkIntegrity;

- (OrgApacheLuceneCodecsStoredFieldsReader *)clone;

- (void)close;

- (OrgApacheLuceneCodecsStoredFieldsReader *)getMergeInstance;

- (jlong)ramBytesUsed;

- (NSString *)description;

- (void)visitDocumentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

#pragma mark Package-Private

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument *)documentWithInt:(jint)docID;

- (jint)getChunkSize;

- (OrgApacheLuceneCodecsCompressingCompressionMode *)getCompressionMode;

- (OrgApacheLuceneStoreIndexInput *)getFieldsStream;

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)getIndexReader;

- (jlong)getMaxPointer;

- (jlong)getNumChunks;

- (jlong)getNumDirtyChunks;

- (jint)getPackedIntsVersion;

- (jint)getVersion;

+ (jlong)readTLongWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

+ (jdouble)readZDoubleWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

+ (jfloat)readZFloatWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jfloat OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZFloatWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT jdouble OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZDoubleWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readTLongWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader)

#endif

#if !defined (_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument_) && (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument_

@class OrgApacheLuceneStoreDataInput;

@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument : NSObject {
 @public
  OrgApacheLuceneStoreDataInput *in_;
  jint length_;
  jint numStoredFields_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument, in_, OrgApacheLuceneStoreDataInput *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_INCLUDE_ALL")
