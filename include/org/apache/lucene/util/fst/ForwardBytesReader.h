//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/ForwardBytesReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstForwardBytesReader")
#ifdef RESTRICT_OrgApacheLuceneUtilFstForwardBytesReader
#define INCLUDE_ALL_OrgApacheLuceneUtilFstForwardBytesReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstForwardBytesReader 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstForwardBytesReader

#if !defined (OrgApacheLuceneUtilFstForwardBytesReader_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstForwardBytesReader || defined(INCLUDE_OrgApacheLuceneUtilFstForwardBytesReader))
#define OrgApacheLuceneUtilFstForwardBytesReader_

#define RESTRICT_OrgApacheLuceneUtilFstFST 1
#define INCLUDE_OrgApacheLuceneUtilFstFST_BytesReader 1
#include "org/apache/lucene/util/fst/FST.h"

@class IOSByteArray;

/*!
 @brief Reads from a single byte[].
 */
@interface OrgApacheLuceneUtilFstForwardBytesReader : OrgApacheLuceneUtilFstFST_BytesReader

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (jlong)getPosition;

- (jbyte)readByte;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jboolean)reversed;

- (void)setPositionWithLong:(jlong)pos;

- (void)skipBytesWithLong:(jlong)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstForwardBytesReader)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(OrgApacheLuceneUtilFstForwardBytesReader *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstForwardBytesReader *new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstForwardBytesReader *create_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(IOSByteArray *bytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstForwardBytesReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstForwardBytesReader")
