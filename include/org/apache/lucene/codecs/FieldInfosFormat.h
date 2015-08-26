//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldInfosFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsFieldInfosFormat_RESTRICT
#define OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsFieldInfosFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsFieldInfosFormat_) && (OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE_ALL || OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE)
#define _OrgApacheLuceneCodecsFieldInfosFormat_

@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

@interface OrgApacheLuceneCodecsFieldInfosFormat : NSObject

#pragma mark Public

- (OrgApacheLuceneIndexFieldInfos *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                      withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                             withNSString:(NSString *)segmentSuffix
                                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)iocontext;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                  withNSString:(NSString *)segmentSuffix
            withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsFieldInfosFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsFieldInfosFormat_init(OrgApacheLuceneCodecsFieldInfosFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsFieldInfosFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsFieldInfosFormat_INCLUDE_ALL")
