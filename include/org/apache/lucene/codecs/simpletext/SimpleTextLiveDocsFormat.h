//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/simpletext/SimpleTextLiveDocsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_RESTRICT
#define OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_RESTRICT
#if OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_INCLUDE
#define OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_) && (OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_

#define OrgApacheLuceneCodecsLiveDocsFormat_RESTRICT 1
#define OrgApacheLuceneCodecsLiveDocsFormat_INCLUDE 1
#include "org/apache/lucene/codecs/LiveDocsFormat.h"

@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;
@protocol OrgApacheLuceneUtilMutableBits;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat : OrgApacheLuceneCodecsLiveDocsFormat

#pragma mark Public

- (instancetype)init;

- (void)filesWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                                withJavaUtilCollection:(id<JavaUtilCollection>)files;

- (id<OrgApacheLuceneUtilMutableBits>)newLiveDocsWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)existing OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneUtilMutableBits>)newLiveDocsWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneUtilBits>)readLiveDocsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                   withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                                           withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)writeLiveDocsWithOrgApacheLuceneUtilMutableBits:(id<OrgApacheLuceneUtilMutableBits>)bits
                      withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
              withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                                                withInt:(jint)newDelCount
                      withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_LIVEDOCS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat, LIVEDOCS_EXTENSION_, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SIZE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat, SIZE_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_DOC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat, DOC_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_END_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat, END_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_init(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat *new_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat)

#endif

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_) && (OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_

#define OrgApacheLuceneUtilBits_RESTRICT 1
#define OrgApacheLuceneUtilBits_INCLUDE 1
#include "org/apache/lucene/util/Bits.h"

@class JavaUtilBitSet;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits : NSObject < OrgApacheLuceneUtilBits > {
 @public
  JavaUtilBitSet *bits_;
  jint size_;
}

#pragma mark Public

- (jboolean)getWithInt:(jint)index;

- (jint)length;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilBitSet:(JavaUtilBitSet *)bits
                               withInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits, bits_, JavaUtilBitSet *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_initWithJavaUtilBitSet_withInt_(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits *self, JavaUtilBitSet *bits, jint size);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits *new_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits_initWithJavaUtilBitSet_withInt_(JavaUtilBitSet *bits, jint size) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits)

#endif

#if !defined (_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_) && (OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_INCLUDE)
#define _OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_

#define OrgApacheLuceneUtilMutableBits_RESTRICT 1
#define OrgApacheLuceneUtilMutableBits_INCLUDE 1
#include "org/apache/lucene/util/MutableBits.h"

@class JavaUtilBitSet;

@interface OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits : OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextBits < OrgApacheLuceneUtilMutableBits >

#pragma mark Public

- (void)clearWithInt:(jint)bit;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilBitSet:(JavaUtilBitSet *)bits
                               withInt:(jint)size;

- (instancetype)initWithInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_initWithInt_(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits *new_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_initWithJavaUtilBitSet_withInt_(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits *self, JavaUtilBitSet *bits, jint size);

FOUNDATION_EXPORT OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits *new_OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits_initWithJavaUtilBitSet_withInt_(JavaUtilBitSet *bits, jint size) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_SimpleTextMutableBits)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsSimpletextSimpleTextLiveDocsFormat_INCLUDE_ALL")
