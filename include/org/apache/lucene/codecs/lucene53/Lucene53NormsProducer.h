//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53NormsProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_RESTRICT
#define OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_RESTRICT

#if !defined (_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_) && (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE)
#define _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_

#define OrgApacheLuceneCodecsNormsProducer_RESTRICT 1
#define OrgApacheLuceneCodecsNormsProducer_INCLUDE 1
#include "org/apache/lucene/codecs/NormsProducer.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSegmentReadState;

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer : OrgApacheLuceneCodecsNormsProducer

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (OrgApacheLuceneIndexNumericDocValues *)getNormsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state
                                                withNSString:(NSString *)dataCodec
                                                withNSString:(NSString *)dataExtension
                                                withNSString:(NSString *)metaCodec
                                                withNSString:(NSString *)metaExtension;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self, OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_) && (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_INCLUDE)
#define _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry : NSObject {
 @public
  jbyte bytesPerValue_;
  jlong offset_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_INCLUDE_ALL")
