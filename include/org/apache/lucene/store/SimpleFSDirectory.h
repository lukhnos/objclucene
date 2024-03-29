//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SimpleFSDirectory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory")
#ifdef RESTRICT_OrgApacheLuceneStoreSimpleFSDirectory
#define INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreSimpleFSDirectory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreSimpleFSDirectory_) && (INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory || defined(INCLUDE_OrgApacheLuceneStoreSimpleFSDirectory))
#define OrgApacheLuceneStoreSimpleFSDirectory_

#define RESTRICT_OrgApacheLuceneStoreFSDirectory 1
#define INCLUDE_OrgApacheLuceneStoreFSDirectory 1
#include "org/apache/lucene/store/FSDirectory.h"

@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreLockFactory;
@class OrgLukhnosPortmobileFilePath;

/*!
 @brief A straightforward implementation of <code>FSDirectory</code>
   using <code>Files.newByteChannel(Path, org.lukhnos.portmobile.file.StandardOpenOption)</code>  
   However, this class has
   poor concurrent performance (multiple threads will
   bottleneck) as it synchronizes when multiple threads
   read from the same file.It's usually better to use
   <code>NIOFSDirectory</code> or <code>MMapDirectory</code> instead.
 <p>
  <b>NOTE:</b> Accessing this class either directly or
  indirectly from a thread while it's interrupted can close the
  underlying file descriptor immediately if at the same time the thread is
  blocked on IO. The file descriptor will remain closed and subsequent access
  to <code>SimpleFSDirectory</code> will throw a <code>ClosedChannelException</code>. If
  your application uses either <code>Thread.interrupt()</code> or 
 <code>Future.cancel(boolean)</code> you should use the legacy <code>RAFDirectory</code>
  from the Lucene <code>misc</code> module in favor of <code>SimpleFSDirectory</code>.
  </p>
 */
@interface OrgApacheLuceneStoreSimpleFSDirectory : OrgApacheLuceneStoreFSDirectory

#pragma mark Public

/*!
 @brief Create a new SimpleFSDirectory for the named location and <code>FSLockFactory.getDefault()</code>.
 The directory is created at the named location if it does not yet exist.
 @param path the path of the directory
 @throw IOExceptionif there is a low-level I/O error
 */
- (instancetype __nonnull)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path;

/*!
 @brief Create a new SimpleFSDirectory for the named location.
 The directory is created at the named location if it does not yet exist.
 @param path the path of the directory
 @param lockFactory the lock factory to use
 @throw IOExceptionif there is a low-level I/O error
 */
- (instancetype __nonnull)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                           withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory;

/*!
 @brief Creates an IndexInput for the file with the given name.
 */
- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSDirectory)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreSimpleFSDirectory *self, OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory *create_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneStoreSimpleFSDirectory *self, OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory *create_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSDirectory)

#endif

#if !defined (OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory || defined(INCLUDE_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput))
#define OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_

#define RESTRICT_OrgApacheLuceneStoreBufferedIndexInput 1
#define INCLUDE_OrgApacheLuceneStoreBufferedIndexInput 1
#include "org/apache/lucene/store/BufferedIndexInput.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaNioChannelsSeekableByteChannel;

/*!
 @brief Reads bytes with <code>SeekableByteChannel.read(ByteBuffer)</code>
 */
@interface OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput : OrgApacheLuceneStoreBufferedIndexInput {
 @public
  /*!
   @brief the channel we will read from
   */
  id<JavaNioChannelsSeekableByteChannel> channel_;
  /*!
   @brief is this instance a clone and hence does not own the file to close it
   */
  jboolean isClone_;
  /*!
   @brief start offset: non-zero in the slice case
   */
  jlong off_;
  /*!
   @brief end offset (start+length)
   */
  jlong end_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)resourceDesc
    withJavaNioChannelsSeekableByteChannel:(id<JavaNioChannelsSeekableByteChannel>)channel
         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (instancetype __nonnull)initWithNSString:(NSString *)resourceDesc
    withJavaNioChannelsSeekableByteChannel:(id<JavaNioChannelsSeekableByteChannel>)channel
                                  withLong:(jlong)off
                                  withLong:(jlong)length
                                   withInt:(jint)bufferSize;

- (OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *)java_clone;

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

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, channel_, id<JavaNioChannelsSeekableByteChannel>)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, jlong off, jlong length, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, jlong off, jlong length, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(NSString *resourceDesc, id<JavaNioChannelsSeekableByteChannel> channel, jlong off, jlong length, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSDirectory")
