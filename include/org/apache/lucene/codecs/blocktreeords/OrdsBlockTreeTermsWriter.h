//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/blocktreeords/OrdsBlockTreeTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_RESTRICT
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_) && (OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_

#define OrgApacheLuceneCodecsFieldsConsumer_RESTRICT 1
#define OrgApacheLuceneCodecsFieldsConsumer_INCLUDE 1
#include "org/apache/lucene/codecs/FieldsConsumer.h"

@class IOSByteArray;
@class OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs;
@class OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output;
@class OrgApacheLuceneCodecsPostingsWriterBase;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneUtilBytesRef;

#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_DEFAULT_MIN_BLOCK_SIZE 25
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_DEFAULT_MAX_BLOCK_SIZE 48
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_OUTPUT_FLAGS_NUM_BITS 2
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_OUTPUT_FLAGS_MASK 3
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_OUTPUT_FLAG_IS_FLOOR 1
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_OUTPUT_FLAG_HAS_TERMS 2
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_VERSION_START 1
#define OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_VERSION_CURRENT 1

@interface OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter : OrgApacheLuceneCodecsFieldsConsumer {
 @public
  jint maxDoc_;
  jint minItemsInBlock_;
  jint maxItemsInBlock_;
  OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                  withOrgApacheLuceneCodecsPostingsWriterBase:(OrgApacheLuceneCodecsPostingsWriterBase *)postingsWriter
                                                      withInt:(jint)minItemsInBlock
                                                      withInt:(jint)maxItemsInBlock;

- (void)close;

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

#pragma mark Package-Private

+ (NSString *)brToStringWithByteArray:(IOSByteArray *)b;

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

+ (jlong)encodeOutputWithLong:(jlong)fp
                  withBoolean:(jboolean)hasTerms
                  withBoolean:(jboolean)isFloor;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, postingsWriter_, OrgApacheLuceneCodecsPostingsWriterBase *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_FST_OUTPUTS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, FST_OUTPUTS_, OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs *)

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_NO_OUTPUT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, NO_OUTPUT_, OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, DEFAULT_MIN_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, DEFAULT_MAX_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, OUTPUT_FLAGS_NUM_BITS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, OUTPUT_FLAGS_MASK, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, OUTPUT_FLAG_IS_FLOOR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, OUTPUT_FLAG_HAS_TERMS, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TERMS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, TERMS_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TERMS_CODEC_NAME_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, TERMS_CODEC_NAME_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, VERSION_CURRENT, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TERMS_INDEX_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, TERMS_INDEX_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TERMS_INDEX_CODEC_NAME_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter, TERMS_INDEX_CODEC_NAME_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter *new_OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_encodeOutputWithLong_withBoolean_withBoolean_(jlong fp, jboolean hasTerms, jboolean isFloor);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_brToStringWithByteArray_(IOSByteArray *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter)

#endif

#if !defined (_OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter_) && (OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter_

@class OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFixedBitSet;

@interface OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter : NSObject {
 @public
  OrgApacheLuceneUtilFixedBitSet *docsSeen_;
  jlong sumTotalTermFreq_;
  jlong sumDocFreq_;
  jlong indexStartFP_;
}

#pragma mark Public

- (void)finish;

- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter:(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter *)outer$
                                                 withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (void)writeBlocksWithInt:(jint)prefixLength
                   withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter, docsSeen_, OrgApacheLuceneUtilFixedBitSet *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter *self, OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter *new_OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_TermsWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsBlocktreeordsOrdsBlockTreeTermsWriter_INCLUDE_ALL")
