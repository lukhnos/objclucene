//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SimpleFSDirectory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL")
#if OrgApacheLuceneStoreSimpleFSDirectory_RESTRICT
#define OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreSimpleFSDirectory_RESTRICT

#if !defined (_OrgApacheLuceneStoreSimpleFSDirectory_) && (OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL || OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE)
#define _OrgApacheLuceneStoreSimpleFSDirectory_

#define OrgApacheLuceneStoreFSDirectory_RESTRICT 1
#define OrgApacheLuceneStoreFSDirectory_INCLUDE 1
#include "org/apache/lucene/store/FSDirectory.h"

@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreLockFactory;
@class OrgLukhnosPortmobileFilePath;

@interface OrgApacheLuceneStoreSimpleFSDirectory : OrgApacheLuceneStoreFSDirectory

#pragma mark Public

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                 withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory;

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSDirectory)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreSimpleFSDirectory *self, OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSDirectory)

#endif

#if !defined (_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_) && (OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL || OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_INCLUDE)
#define _OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_

#define OrgApacheLuceneStoreBufferedIndexInput_RESTRICT 1
#define OrgApacheLuceneStoreBufferedIndexInput_INCLUDE 1
#include "org/apache/lucene/store/BufferedIndexInput.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaNioChannelsSeekableByteChannel;

@interface OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput : OrgApacheLuceneStoreBufferedIndexInput {
 @public
  id<JavaNioChannelsSeekableByteChannel> channel_;
  jboolean isClone_;
  jlong off_;
  jlong end_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)resourceDesc
withJavaNioChannelsSeekableByteChannel:(id<JavaNioChannelsSeekableByteChannel>)channel
withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (instancetype)initWithNSString:(NSString *)resourceDesc
withJavaNioChannelsSeekableByteChannel:(id<JavaNioChannelsSeekableByteChannel>)channel
                        withLong:(jlong)off
                        withLong:(jlong)length
                         withInt:(jint)bufferSize;

- (OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *)clone;

- (void)close;

- (jlong)length;

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)offset
                                             withLong:(jlong)length;

#pragma mark Protected

- (void)newBufferWithByteArray:(IOSByteArray *)newBuffer OBJC_METHOD_FAMILY_NONE;

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)len;

- (void)seekInternalWithLong:(jlong)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, channel_, id<JavaNioChannelsSeekableByteChannel>)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, jlong off, jlong length, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, jlong off, jlong length, jint bufferSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput)

#endif

#pragma pop_macro("OrgApacheLuceneStoreSimpleFSDirectory_INCLUDE_ALL")
