//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ByteArrayDataOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE_ALL")
#if OrgApacheLuceneStoreByteArrayDataOutput_RESTRICT
#define OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreByteArrayDataOutput_RESTRICT

#if !defined (_OrgApacheLuceneStoreByteArrayDataOutput_) && (OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE_ALL || OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE)
#define _OrgApacheLuceneStoreByteArrayDataOutput_

#define OrgApacheLuceneStoreDataOutput_RESTRICT 1
#define OrgApacheLuceneStoreDataOutput_INCLUDE 1
#include "org/apache/lucene/store/DataOutput.h"

@class IOSByteArray;

@interface OrgApacheLuceneStoreByteArrayDataOutput : OrgApacheLuceneStoreDataOutput

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)len;

- (jint)getPosition;

- (void)resetWithByteArray:(IOSByteArray *)bytes;

- (void)resetWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)offset
                   withInt:(jint)len;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteArrayDataOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(OrgApacheLuceneStoreByteArrayDataOutput *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(OrgApacheLuceneStoreByteArrayDataOutput *self, IOSByteArray *bytes, jint offset, jint len);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataOutput_init(OrgApacheLuceneStoreByteArrayDataOutput *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteArrayDataOutput)

#endif

#pragma pop_macro("OrgApacheLuceneStoreByteArrayDataOutput_INCLUDE_ALL")