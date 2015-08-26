//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/CompoundFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompoundFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompoundFormat_RESTRICT
#define OrgApacheLuceneCodecsCompoundFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompoundFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompoundFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompoundFormat_) && (OrgApacheLuceneCodecsCompoundFormat_INCLUDE_ALL || OrgApacheLuceneCodecsCompoundFormat_INCLUDE)
#define _OrgApacheLuceneCodecsCompoundFormat_

@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

@interface OrgApacheLuceneCodecsCompoundFormat : NSObject

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneStoreDirectory *)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompoundFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompoundFormat_init(OrgApacheLuceneCodecsCompoundFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompoundFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompoundFormat_INCLUDE_ALL")
