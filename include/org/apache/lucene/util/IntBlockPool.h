//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntBlockPool.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL")
#if OrgApacheLuceneUtilIntBlockPool_RESTRICT
#define OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilIntBlockPool_RESTRICT
#if OrgApacheLuceneUtilIntBlockPool_DirectAllocator_INCLUDE
#define OrgApacheLuceneUtilIntBlockPool_Allocator_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneUtilIntBlockPool_) && (OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilIntBlockPool_INCLUDE)
#define _OrgApacheLuceneUtilIntBlockPool_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilIntBlockPool_Allocator;

#define OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT 13
#define OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE 8192
#define OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK 8191

@interface OrgApacheLuceneUtilIntBlockPool : NSObject {
 @public
  IOSObjectArray *buffers_;
  jint intUpto_;
  IOSIntArray *buffer_;
  jint intOffset_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool_Allocator:(OrgApacheLuceneUtilIntBlockPool_Allocator *)allocator;

- (void)nextBuffer;

- (void)reset;

- (void)resetWithBoolean:(jboolean)zeroFillBuffers
             withBoolean:(jboolean)reuseFirst;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilIntBlockPool)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool, buffers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntBlockPool, buffer_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, INT_BLOCK_SHIFT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, INT_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIntBlockPool, INT_BLOCK_MASK, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_init(OrgApacheLuceneUtilIntBlockPool *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntBlockPool *new_OrgApacheLuceneUtilIntBlockPool_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(OrgApacheLuceneUtilIntBlockPool *self, OrgApacheLuceneUtilIntBlockPool_Allocator *allocator);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntBlockPool *new_OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(OrgApacheLuceneUtilIntBlockPool_Allocator *allocator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntBlockPool)

#endif

#if !defined (_OrgApacheLuceneUtilIntBlockPool_Allocator_) && (OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilIntBlockPool_Allocator_INCLUDE)
#define _OrgApacheLuceneUtilIntBlockPool_Allocator_

@class IOSIntArray;
@class IOSObjectArray;

@interface OrgApacheLuceneUtilIntBlockPool_Allocator : NSObject {
 @public
  jint blockSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)blockSize;

- (IOSIntArray *)getIntBlock;

- (void)recycleIntBlocksWithIntArray2:(IOSObjectArray *)blocks
                              withInt:(jint)start
                              withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntBlockPool_Allocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilIntBlockPool_Allocator *self, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntBlockPool_Allocator)

#endif

#if !defined (_OrgApacheLuceneUtilIntBlockPool_DirectAllocator_) && (OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilIntBlockPool_DirectAllocator_INCLUDE)
#define _OrgApacheLuceneUtilIntBlockPool_DirectAllocator_

@class IOSObjectArray;

@interface OrgApacheLuceneUtilIntBlockPool_DirectAllocator : OrgApacheLuceneUtilIntBlockPool_Allocator

#pragma mark Public

- (instancetype)init;

- (void)recycleIntBlocksWithIntArray2:(IOSObjectArray *)blocks
                              withInt:(jint)start
                              withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntBlockPool_DirectAllocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init(OrgApacheLuceneUtilIntBlockPool_DirectAllocator *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntBlockPool_DirectAllocator *new_OrgApacheLuceneUtilIntBlockPool_DirectAllocator_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntBlockPool_DirectAllocator)

#endif

#if !defined (_OrgApacheLuceneUtilIntBlockPool_SliceWriter_) && (OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilIntBlockPool_SliceWriter_INCLUDE)
#define _OrgApacheLuceneUtilIntBlockPool_SliceWriter_

@class OrgApacheLuceneUtilIntBlockPool;

@interface OrgApacheLuceneUtilIntBlockPool_SliceWriter : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool:(OrgApacheLuceneUtilIntBlockPool *)pool;

- (jint)getCurrentOffset;

- (void)resetWithInt:(jint)sliceOffset;

- (jint)startNewSlice;

- (void)writeIntWithInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntBlockPool_SliceWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool_SliceWriter *self, OrgApacheLuceneUtilIntBlockPool *pool);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntBlockPool_SliceWriter *new_OrgApacheLuceneUtilIntBlockPool_SliceWriter_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool *pool) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntBlockPool_SliceWriter)

#endif

#if !defined (_OrgApacheLuceneUtilIntBlockPool_SliceReader_) && (OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilIntBlockPool_SliceReader_INCLUDE)
#define _OrgApacheLuceneUtilIntBlockPool_SliceReader_

@class OrgApacheLuceneUtilIntBlockPool;

@interface OrgApacheLuceneUtilIntBlockPool_SliceReader : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilIntBlockPool:(OrgApacheLuceneUtilIntBlockPool *)pool;

- (jboolean)endOfSlice;

- (jint)readInt;

- (void)resetWithInt:(jint)startOffset
             withInt:(jint)endOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntBlockPool_SliceReader)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool_SliceReader *self, OrgApacheLuceneUtilIntBlockPool *pool);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntBlockPool_SliceReader *new_OrgApacheLuceneUtilIntBlockPool_SliceReader_initWithOrgApacheLuceneUtilIntBlockPool_(OrgApacheLuceneUtilIntBlockPool *pool) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntBlockPool_SliceReader)

#endif

#pragma pop_macro("OrgApacheLuceneUtilIntBlockPool_INCLUDE_ALL")
