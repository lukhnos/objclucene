//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingTermVectorsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_RESTRICT
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_) && (OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_

#define OrgApacheLuceneCodecsTermVectorsFormat_RESTRICT 1
#define OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE 1
#include "org/apache/lucene/codecs/TermVectorsFormat.h"

@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneCodecsTermVectorsWriter;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat : OrgApacheLuceneCodecsTermVectorsFormat

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)formatName
                    withNSString:(NSString *)segmentSuffix
withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode
                         withInt:(jint)chunkSize
                         withInt:(jint)blockSize;

- (NSString *)description;

- (OrgApacheLuceneCodecsTermVectorsReader *)vectorsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (OrgApacheLuceneCodecsTermVectorsWriter *)vectorsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat *self, NSString *formatName, NSString *segmentSuffix, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(NSString *formatName, NSString *segmentSuffix, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_INCLUDE_ALL")
