//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/ReverseBytesReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstReverseBytesReader")
#ifdef RESTRICT_OrgApacheLuceneUtilFstReverseBytesReader
#define INCLUDE_ALL_OrgApacheLuceneUtilFstReverseBytesReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstReverseBytesReader 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstReverseBytesReader

#if !defined (OrgApacheLuceneUtilFstReverseBytesReader_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstReverseBytesReader || defined(INCLUDE_OrgApacheLuceneUtilFstReverseBytesReader))
#define OrgApacheLuceneUtilFstReverseBytesReader_

#define RESTRICT_OrgApacheLuceneUtilFstFST 1
#define INCLUDE_OrgApacheLuceneUtilFstFST_BytesReader 1
#include "org/apache/lucene/util/fst/FST.h"

@class IOSByteArray;

/*!
 @brief Reads in reverse from a single byte[].
 */
@interface OrgApacheLuceneUtilFstReverseBytesReader : OrgApacheLuceneUtilFstFST_BytesReader

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstReverseBytesReader)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(OrgApacheLuceneUtilFstReverseBytesReader *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstReverseBytesReader *new_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstReverseBytesReader *create_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(IOSByteArray *bytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstReverseBytesReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstReverseBytesReader")
