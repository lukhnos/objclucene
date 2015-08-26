//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50PostingsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_RESTRICT
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_) && (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_

#define OrgApacheLuceneCodecsPostingsFormat_RESTRICT 1
#define OrgApacheLuceneCodecsPostingsFormat_INCLUDE 1
#include "org/apache/lucene/codecs/PostingsFormat.h"

@class OrgApacheLuceneCodecsFieldsConsumer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_MAX_SKIP_LEVELS 10
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_START 0
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_CURRENT 0
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_BLOCK_SIZE 128

@interface OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat : OrgApacheLuceneCodecsPostingsFormat

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)minTermBlockSize
                    withInt:(jint)maxTermBlockSize;

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, DOC_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, POS_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, PAY_EXTENSION_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, MAX_SKIP_LEVELS, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_TERMS_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, TERMS_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, DOC_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, POS_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, PAY_CODEC_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, VERSION_CURRENT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self, jint minTermBlockSize, jint maxTermBlockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(jint minTermBlockSize, jint maxTermBlockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_) && (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_

#define OrgApacheLuceneCodecsBlockTermState_RESTRICT 1
#define OrgApacheLuceneCodecsBlockTermState_INCLUDE 1
#include "org/apache/lucene/codecs/BlockTermState.h"

@class OrgApacheLuceneIndexTermState;

@interface OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState : OrgApacheLuceneCodecsBlockTermState {
 @public
  jlong docStartFP_;
  jlong posStartFP_;
  jlong payStartFP_;
  jlong skipOffset_;
  jlong lastPosBlockOffset_;
  jint singletonDocID_;
}

#pragma mark Public

- (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *)clone;

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)_other OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_INCLUDE_ALL")
