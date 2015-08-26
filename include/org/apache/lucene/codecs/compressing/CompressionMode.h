//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressionMode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE_ALL")
#if OrgApacheLuceneCodecsCompressingCompressionMode_RESTRICT
#define OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsCompressingCompressionMode_RESTRICT

#if !defined (_OrgApacheLuceneCodecsCompressingCompressionMode_) && (OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE_ALL || OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE)
#define _OrgApacheLuceneCodecsCompressingCompressionMode_

@class OrgApacheLuceneCodecsCompressingCompressor;
@class OrgApacheLuceneCodecsCompressingDecompressor;

@interface OrgApacheLuceneCodecsCompressingCompressionMode : NSObject

#pragma mark Public

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor OBJC_METHOD_FAMILY_NONE;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode)

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_FAST_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressionMode, FAST_, OrgApacheLuceneCodecsCompressingCompressionMode *)

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressionMode, HIGH_COMPRESSION_, OrgApacheLuceneCodecsCompressingCompressionMode *)

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsCompressingCompressionMode, FAST_DECOMPRESSION_, OrgApacheLuceneCodecsCompressingCompressionMode *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressionMode_init(OrgApacheLuceneCodecsCompressingCompressionMode *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsCompressingCompressionMode_INCLUDE_ALL")
