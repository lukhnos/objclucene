//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/simpletext/SimpleTextNormsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_RESTRICT
#define OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_) && (OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_

#define OrgApacheLuceneCodecsNormsFormat_RESTRICT 1
#define OrgApacheLuceneCodecsNormsFormat_INCLUDE 1
#include "org/apache/lucene/codecs/NormsFormat.h"

@class OrgApacheLuceneCodecsNormsConsumer;
@class OrgApacheLuceneCodecsNormsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat : OrgApacheLuceneCodecsNormsFormat

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneCodecsNormsConsumer *)normsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsNormsProducer *)normsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_init(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat *new_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat)

#endif

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer_) && (OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer_

#define OrgApacheLuceneCodecsNormsProducer_RESTRICT 1
#define OrgApacheLuceneCodecsNormsProducer_INCLUDE 1
#include "org/apache/lucene/codecs/NormsProducer.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSegmentReadState;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer : OrgApacheLuceneCodecsNormsProducer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

- (void)checkIntegrity;

- (void)close;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneIndexNumericDocValues *)getNormsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (jlong)ramBytesUsed;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer *self, OrgApacheLuceneIndexSegmentReadState *state);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer *new_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneIndexSegmentReadState *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsProducer)

#endif

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer_) && (OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer_

#define OrgApacheLuceneCodecsNormsConsumer_RESTRICT 1
#define OrgApacheLuceneCodecsNormsConsumer_INCLUDE 1
#include "org/apache/lucene/codecs/NormsConsumer.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexSegmentWriteState;
@protocol JavaLangIterable;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer : OrgApacheLuceneCodecsNormsConsumer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                  withJavaLangIterable:(id<JavaLangIterable>)values;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer *self, OrgApacheLuceneIndexSegmentWriteState *state);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer *new_OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneIndexSegmentWriteState *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_SimpleTextNormsConsumer)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsSimpletextSimpleTextNormsFormat_INCLUDE_ALL")
