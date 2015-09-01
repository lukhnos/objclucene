//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilBytesRefBuilder_INCLUDE_ALL")
#if OrgApacheLuceneUtilBytesRefBuilder_RESTRICT
#define OrgApacheLuceneUtilBytesRefBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilBytesRefBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilBytesRefBuilder_RESTRICT

#if !defined (_OrgApacheLuceneUtilBytesRefBuilder_) && (OrgApacheLuceneUtilBytesRefBuilder_INCLUDE_ALL || OrgApacheLuceneUtilBytesRefBuilder_INCLUDE)
#define _OrgApacheLuceneUtilBytesRefBuilder_

@class IOSByteArray;
@class IOSCharArray;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneUtilBytesRefBuilder : NSObject

#pragma mark Public

- (instancetype)init;

- (void)appendWithByte:(jbyte)b;

- (void)appendWithByteArray:(IOSByteArray *)b
                    withInt:(jint)off
                    withInt:(jint)len;

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref;

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder;

- (jbyte)byteAtWithInt:(jint)offset;

- (IOSByteArray *)bytes;

- (void)clear;

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref OBJC_METHOD_FAMILY_NONE;

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder OBJC_METHOD_FAMILY_NONE;

- (void)copyCharsWithCharArray:(IOSCharArray *)text
                       withInt:(jint)off
                       withInt:(jint)len OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneUtilBytesRef *)get;

- (void)growWithInt:(jint)capacity;

- (NSUInteger)hash;

- (jint)length;

- (void)setByteAtWithInt:(jint)offset
                withByte:(jbyte)b;

- (void)setLengthWithInt:(jint)length;

- (OrgApacheLuceneUtilBytesRef *)toBytesRef;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefBuilder_init(OrgApacheLuceneUtilBytesRefBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefBuilder *new_OrgApacheLuceneUtilBytesRefBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneUtilBytesRefBuilder_INCLUDE_ALL")
