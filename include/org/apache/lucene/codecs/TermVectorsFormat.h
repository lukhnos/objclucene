//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/TermVectorsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsTermVectorsFormat_RESTRICT
#define OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsTermVectorsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsTermVectorsFormat_) && (OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsTermVectorsFormat_

@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneCodecsTermVectorsWriter;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

@interface OrgApacheLuceneCodecsTermVectorsFormat : NSObject

#pragma mark Public

- (OrgApacheLuceneCodecsTermVectorsReader *)vectorsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (OrgApacheLuceneCodecsTermVectorsWriter *)vectorsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsTermVectorsFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsTermVectorsFormat_init(OrgApacheLuceneCodecsTermVectorsFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsTermVectorsFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsTermVectorsFormat_INCLUDE_ALL")