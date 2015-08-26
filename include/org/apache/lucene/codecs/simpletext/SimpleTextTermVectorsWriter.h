//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/simpletext/SimpleTextTermVectorsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_RESTRICT
#define OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_) && (OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_

#define OrgApacheLuceneCodecsTermVectorsWriter_RESTRICT 1
#define OrgApacheLuceneCodecsTermVectorsWriter_INCLUDE 1
#include "org/apache/lucene/codecs/TermVectorsWriter.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter : OrgApacheLuceneCodecsTermVectorsWriter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                         withNSString:(NSString *)segment
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)addPositionWithInt:(jint)position
                   withInt:(jint)startOffset
                   withInt:(jint)endOffset
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (void)close;

- (void)finishWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                         withInt:(jint)numDocs;

- (void)startDocumentWithInt:(jint)numVectorFields;

- (void)startFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info
                                            withInt:(jint)numTerms
                                        withBoolean:(jboolean)positions
                                        withBoolean:(jboolean)offsets
                                        withBoolean:(jboolean)payloads;

- (void)startTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                         withInt:(jint)freq;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_END_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, END_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_DOC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, DOC_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_NUMFIELDS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, NUMFIELDS_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELD_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELD_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELDNAME_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELDNAME_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELDPOSITIONS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELDPOSITIONS_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELDOFFSETS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELDOFFSETS_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELDPAYLOADS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELDPAYLOADS_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_FIELDTERMCOUNT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, FIELDTERMCOUNT_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_TERMTEXT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, TERMTEXT_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_TERMFREQ_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, TERMFREQ_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_POSITION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, POSITION_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_PAYLOAD_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, PAYLOAD_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_STARTOFFSET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, STARTOFFSET_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_ENDOFFSET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, ENDOFFSET_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_VECTORS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter, VECTORS_EXTENSION_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter *self, OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter *new_OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsSimpletextSimpleTextTermVectorsWriter_INCLUDE_ALL")
