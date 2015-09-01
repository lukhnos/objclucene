//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/BufferedIndexInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreBufferedIndexInput_INCLUDE_ALL")
#if OrgApacheLuceneStoreBufferedIndexInput_RESTRICT
#define OrgApacheLuceneStoreBufferedIndexInput_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreBufferedIndexInput_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreBufferedIndexInput_RESTRICT

#if !defined (_OrgApacheLuceneStoreBufferedIndexInput_) && (OrgApacheLuceneStoreBufferedIndexInput_INCLUDE_ALL || OrgApacheLuceneStoreBufferedIndexInput_INCLUDE)
#define _OrgApacheLuceneStoreBufferedIndexInput_

#define OrgApacheLuceneStoreIndexInput_RESTRICT 1
#define OrgApacheLuceneStoreIndexInput_INCLUDE 1
#include "org/apache/lucene/store/IndexInput.h"

#define OrgApacheLuceneStoreRandomAccessInput_RESTRICT 1
#define OrgApacheLuceneStoreRandomAccessInput_INCLUDE 1
#include "org/apache/lucene/store/RandomAccessInput.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreIOContext;

#define OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE 1024
#define OrgApacheLuceneStoreBufferedIndexInput_MIN_BUFFER_SIZE 8
#define OrgApacheLuceneStoreBufferedIndexInput_MERGE_BUFFER_SIZE 4096

@interface OrgApacheLuceneStoreBufferedIndexInput : OrgApacheLuceneStoreIndexInput < OrgApacheLuceneStoreRandomAccessInput > {
 @public
  IOSByteArray *buffer_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)resourceDesc
                         withInt:(jint)bufferSize;

- (instancetype)initWithNSString:(NSString *)resourceDesc
withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

+ (jint)bufferSizeWithOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (OrgApacheLuceneStoreBufferedIndexInput *)clone;

- (jint)getBufferSize;

- (jlong)getFilePointer;

- (jbyte)readByte;

- (jbyte)readByteWithLong:(jlong)pos;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len
                   withBoolean:(jboolean)useBuffer;

- (jint)readInt;

- (jint)readIntWithLong:(jlong)pos;

- (jlong)readLong;

- (jlong)readLongWithLong:(jlong)pos;

- (jshort)readShort;

- (jshort)readShortWithLong:(jlong)pos;

- (jint)readVInt;

- (jlong)readVLong;

- (void)seekWithLong:(jlong)pos;

- (void)setBufferSizeWithInt:(jint)newSize;

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)offset
                                             withLong:(jlong)length;

+ (OrgApacheLuceneStoreBufferedIndexInput *)wrapWithNSString:(NSString *)sliceDescription
                          withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)other
                                                    withLong:(jlong)offset
                                                    withLong:(jlong)length;

#pragma mark Protected

- (void)newBufferWithByteArray:(IOSByteArray *)newBuffer OBJC_METHOD_FAMILY_NONE;

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)length;

- (void)seekInternalWithLong:(jlong)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreBufferedIndexInput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreBufferedIndexInput, buffer_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreBufferedIndexInput, BUFFER_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreBufferedIndexInput, MIN_BUFFER_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreBufferedIndexInput, MERGE_BUFFER_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc, jint bufferSize);

FOUNDATION_EXPORT jint OrgApacheLuceneStoreBufferedIndexInput_bufferSizeWithOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneStoreBufferedIndexInput *OrgApacheLuceneStoreBufferedIndexInput_wrapWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(NSString *sliceDescription, OrgApacheLuceneStoreIndexInput *other, jlong offset, jlong length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreBufferedIndexInput)

#endif

#pragma pop_macro("OrgApacheLuceneStoreBufferedIndexInput_INCLUDE_ALL")
