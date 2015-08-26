//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/StoredFieldsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsStoredFieldsFormat_RESTRICT
#define OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsStoredFieldsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsStoredFieldsFormat_) && (OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsStoredFieldsFormat_

@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneCodecsStoredFieldsWriter;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

@interface OrgApacheLuceneCodecsStoredFieldsFormat : NSObject

#pragma mark Public

- (OrgApacheLuceneCodecsStoredFieldsReader *)fieldsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (OrgApacheLuceneCodecsStoredFieldsWriter *)fieldsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsStoredFieldsFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsStoredFieldsFormat_init(OrgApacheLuceneCodecsStoredFieldsFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsStoredFieldsFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsStoredFieldsFormat_INCLUDE_ALL")
