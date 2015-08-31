//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/channels/utils/FileChannelUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE_ALL")
#if OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_RESTRICT
#define OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE_ALL 0
#else
#define OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE_ALL 1
#endif
#undef OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_RESTRICT

#if !defined (_OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_) && (OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE_ALL || OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE)
#define _OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_

@class IOSObjectArray;
@class JavaNioChannelsFileChannel;
@class OrgLukhnosPortmobileFilePath;

@interface OrgLukhnosPortmobileChannelsUtilsFileChannelUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (JavaNioChannelsFileChannel *)openWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
             withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray:(IOSObjectArray *)options;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileChannelsUtilsFileChannelUtils)

FOUNDATION_EXPORT JavaNioChannelsFileChannel *OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(OrgLukhnosPortmobileFilePath *path, IOSObjectArray *options);

FOUNDATION_EXPORT void OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_init(OrgLukhnosPortmobileChannelsUtilsFileChannelUtils *self);

FOUNDATION_EXPORT OrgLukhnosPortmobileChannelsUtilsFileChannelUtils *new_OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileChannelsUtilsFileChannelUtils)

#endif

#pragma pop_macro("OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_INCLUDE_ALL")