//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ByteBufferIndexInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput")
#ifdef RESTRICT_OrgApacheLuceneStoreByteBufferIndexInput
#define INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreByteBufferIndexInput
#ifdef INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl
#define INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput 1
#endif
#ifdef INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl
#define INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreByteBufferIndexInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput || defined(INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput))
#define OrgApacheLuceneStoreByteBufferIndexInput_

#define RESTRICT_OrgApacheLuceneStoreIndexInput 1
#define INCLUDE_OrgApacheLuceneStoreIndexInput 1
#include "org/apache/lucene/store/IndexInput.h"

#define RESTRICT_OrgApacheLuceneStoreRandomAccessInput 1
#define INCLUDE_OrgApacheLuceneStoreRandomAccessInput 1
#include "org/apache/lucene/store/RandomAccessInput.h"

@class IOSByteArray;
@class IOSObjectArray;
@class JavaNioByteBuffer;
@class OrgApacheLuceneUtilWeakIdentityMap;
@protocol OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner;

/*!
 @brief Base IndexInput implementation that uses an array
  of ByteBuffers to represent a file.
 <p>
  Because Java's ByteBuffer uses an int to address the
  values, it's necessary to access a file greater
  Integer.MAX_VALUE in size using multiple byte buffers. 
 <p>
  For efficiency, this class requires that the buffers
  are a power-of-two (<code>chunkSizePower</code>).
 */
@interface OrgApacheLuceneStoreByteBufferIndexInput : OrgApacheLuceneStoreIndexInput < OrgApacheLuceneStoreRandomAccessInput > {
 @public
  id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner_;
  jlong length_;
  jlong chunkSizeMask_;
  jint chunkSizePower_;
  IOSObjectArray *buffers_;
  jint curBufIndex_;
  JavaNioByteBuffer *curBuf_;
  jboolean isClone_;
  OrgApacheLuceneUtilWeakIdentityMap *clones_;
}

#pragma mark Public

- (OrgApacheLuceneStoreByteBufferIndexInput *)java_clone;

- (void)close;

- (jlong)getFilePointer;

- (jlong)length;

+ (OrgApacheLuceneStoreByteBufferIndexInput *)newInstanceWithNSString:(NSString *)resourceDescription
                                           withJavaNioByteBufferArray:(IOSObjectArray *)buffers
                                                             withLong:(jlong)length
                                                              withInt:(jint)chunkSizePower
           withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)cleaner
                                                          withBoolean:(jboolean)trackClones OBJC_METHOD_FAMILY_NONE;

- (jbyte)readByte;

- (jbyte)readByteWithLong:(jlong)pos;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jint)readInt;

- (jint)readIntWithLong:(jlong)pos;

- (jlong)readLong;

- (jlong)readLongWithLong:(jlong)pos;

- (jshort)readShort;

- (jshort)readShortWithLong:(jlong)pos;

- (void)seekWithLong:(jlong)pos;

/*!
 @brief Creates a slice of this index input, with the given description, offset, and length.The slice is seeked to the beginning.
 */
- (OrgApacheLuceneStoreByteBufferIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                                       withLong:(jlong)offset
                                                       withLong:(jlong)length;

#pragma mark Protected

/*!
 @brief Builds the actual sliced IndexInput (may apply extra offset in subclasses).
 */
- (OrgApacheLuceneStoreByteBufferIndexInput *)buildSliceWithNSString:(NSString *)sliceDescription
                                                            withLong:(jlong)offset
                                                            withLong:(jlong)length;

/*!
 @brief Factory method that creates a suitable implementation of this class for the given ByteBuffers.
 */
- (OrgApacheLuceneStoreByteBufferIndexInput *)newCloneInstanceWithNSString:(NSString *)newResourceDescription
                                                withJavaNioByteBufferArray:(IOSObjectArray *)newBuffers
                                                                   withInt:(jint)offset
                                                                  withLong:(jlong)length OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)resourceDescription
                              withJavaNioByteBufferArray:(IOSObjectArray *)buffers
                                                withLong:(jlong)length
                                                 withInt:(jint)chunkSizePower
withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)cleaner
                  withOrgApacheLuceneUtilWeakIdentityMap:(OrgApacheLuceneUtilWeakIdentityMap *)clones;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteBufferIndexInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteBufferIndexInput, cleaner_, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteBufferIndexInput, buffers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteBufferIndexInput, curBuf_, JavaNioByteBuffer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteBufferIndexInput, clones_, OrgApacheLuceneUtilWeakIdentityMap *)

FOUNDATION_EXPORT OrgApacheLuceneStoreByteBufferIndexInput *OrgApacheLuceneStoreByteBufferIndexInput_newInstanceWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withBoolean_(NSString *resourceDescription, IOSObjectArray *buffers, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, jboolean trackClones);

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteBufferIndexInput_initPackagePrivateWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(OrgApacheLuceneStoreByteBufferIndexInput *self, NSString *resourceDescription, IOSObjectArray *buffers, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteBufferIndexInput)

#endif

#if !defined (OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_) && (INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput || defined(INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner))
#define OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_

@class JavaNioByteBuffer;
@class OrgApacheLuceneStoreByteBufferIndexInput;

/*!
 @brief Pass in an implementation of this interface to cleanup ByteBuffers.
 MMapDirectory implements this to allow unmapping of bytebuffers with private Java APIs.
 */
@protocol OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner < JavaObject >

- (void)freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:(OrgApacheLuceneStoreByteBufferIndexInput *)parent
                                         withJavaNioByteBuffer:(JavaNioByteBuffer *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner)

#endif

#if !defined (OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_) && (INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput || defined(INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl))
#define OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_

@class IOSObjectArray;
@class JavaNioByteBuffer;
@class OrgApacheLuceneUtilWeakIdentityMap;
@protocol OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner;

/*!
 @brief Optimization of ByteBufferIndexInput for when there is only one buffer
 */
@interface OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl : OrgApacheLuceneStoreByteBufferIndexInput

#pragma mark Public

- (jlong)getFilePointer;

- (jbyte)readByteWithLong:(jlong)pos;

- (jint)readIntWithLong:(jlong)pos;

- (jlong)readLongWithLong:(jlong)pos;

- (jshort)readShortWithLong:(jlong)pos;

- (void)seekWithLong:(jlong)pos;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)resourceDescription
                     withJavaNioByteBuffer:(JavaNioByteBuffer *)buffer
                                  withLong:(jlong)length
                                   withInt:(jint)chunkSizePower
withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)cleaner
    withOrgApacheLuceneUtilWeakIdentityMap:(OrgApacheLuceneUtilWeakIdentityMap *)clones;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0
                              withJavaNioByteBufferArray:(IOSObjectArray *)arg1
                                                withLong:(jlong)arg2
                                                 withInt:(jint)arg3
withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)arg4
                  withOrgApacheLuceneUtilWeakIdentityMap:(OrgApacheLuceneUtilWeakIdentityMap *)arg5 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl)

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_initWithNSString_withJavaNioByteBuffer_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl *self, NSString *resourceDescription, JavaNioByteBuffer *buffer, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl *new_OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_initWithNSString_withJavaNioByteBuffer_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(NSString *resourceDescription, JavaNioByteBuffer *buffer, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl *create_OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_initWithNSString_withJavaNioByteBuffer_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(NSString *resourceDescription, JavaNioByteBuffer *buffer, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl)

#endif

#if !defined (OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_) && (INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput || defined(INCLUDE_OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl))
#define OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_

@class IOSObjectArray;
@class OrgApacheLuceneStoreByteBufferIndexInput;
@class OrgApacheLuceneUtilWeakIdentityMap;
@protocol OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner;

/*!
 @brief This class adds offset support to ByteBufferIndexInput, which is needed for slices.
 */
@interface OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl : OrgApacheLuceneStoreByteBufferIndexInput

#pragma mark Public

- (jlong)getFilePointer;

- (jbyte)readByteWithLong:(jlong)pos;

- (jint)readIntWithLong:(jlong)pos;

- (jlong)readLongWithLong:(jlong)pos;

- (jshort)readShortWithLong:(jlong)pos;

- (void)seekWithLong:(jlong)pos;

#pragma mark Protected

- (OrgApacheLuceneStoreByteBufferIndexInput *)buildSliceWithNSString:(NSString *)sliceDescription
                                                            withLong:(jlong)ofs
                                                            withLong:(jlong)length;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)resourceDescription
                withJavaNioByteBufferArray:(IOSObjectArray *)buffers
                                   withInt:(jint)offset
                                  withLong:(jlong)length
                                   withInt:(jint)chunkSizePower
withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)cleaner
    withOrgApacheLuceneUtilWeakIdentityMap:(OrgApacheLuceneUtilWeakIdentityMap *)clones;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0
                              withJavaNioByteBufferArray:(IOSObjectArray *)arg1
                                                withLong:(jlong)arg2
                                                 withInt:(jint)arg3
withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner:(id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner>)arg4
                  withOrgApacheLuceneUtilWeakIdentityMap:(OrgApacheLuceneUtilWeakIdentityMap *)arg5 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl)

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_initWithNSString_withJavaNioByteBufferArray_withInt_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl *self, NSString *resourceDescription, IOSObjectArray *buffers, jint offset, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl *new_OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_initWithNSString_withJavaNioByteBufferArray_withInt_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(NSString *resourceDescription, IOSObjectArray *buffers, jint offset, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl *create_OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_initWithNSString_withJavaNioByteBufferArray_withInt_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(NSString *resourceDescription, IOSObjectArray *buffers, jint offset, jlong length, jint chunkSizePower, id<OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner> cleaner, OrgApacheLuceneUtilWeakIdentityMap *clones);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreByteBufferIndexInput")
