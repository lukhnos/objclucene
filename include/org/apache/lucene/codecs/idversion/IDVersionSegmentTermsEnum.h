//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionSegmentTermsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum || defined(INCLUDE_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum))
#define OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_

#define RESTRICT_OrgApacheLuceneIndexTermsEnum 1
#define INCLUDE_OrgApacheLuceneIndexTermsEnum 1
#include "org/apache/lucene/index/TermsEnum.h"

@class OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame;
@class OrgApacheLuceneCodecsIdversionVersionFieldReader;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTermState;
@class OrgApacheLuceneIndexTermsEnum_SeekStatus;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;
@class OrgApacheLuceneUtilFstFST_Arc;
@class OrgApacheLuceneUtilFstPairOutputs_Pair;

/*!
 @brief Iterates through terms in this field; this class is public so users
   can cast it to call <code>seekExact(BytesRef, long)</code> for
   optimistic-concurreny, and also <code>getVersion</code> to get the
   version of the currently seek'd term.
 */
@interface OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum : OrgApacheLuceneIndexTermsEnum {
 @public
  OrgApacheLuceneStoreIndexInput *in_;
  OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *currentFrame_;
  jboolean termExists_;
  OrgApacheLuceneCodecsIdversionVersionFieldReader *fr_;
  OrgApacheLuceneUtilBytesRefBuilder *term_;
}

#pragma mark Public

- (jint)docFreq;

/*!
 @brief Get the version of the currently seek'd term; only valid if we are
   positioned.
 */
- (jlong)getVersion;

- (OrgApacheLuceneUtilBytesRef *)next;

- (jlong)ord;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target;

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target;

/*!
 @brief Optimized version of <code>seekExact(BytesRef)</code> that can
   sometimes fail-fast if the version indexed with the requested ID
   is less than the specified minIDVersion.Applications that index
   a monotonically increasing global version with each document can
   use this for fast optimistic concurrency.
 */
- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target
                                            withLong:(jlong)minIDVersion;

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)otherState;

- (void)seekExactWithLong:(jlong)ord;

- (OrgApacheLuceneUtilBytesRef *)term;

- (OrgApacheLuceneIndexTermState *)termState;

- (NSString *)description;

- (jlong)totalTermFreq;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneCodecsIdversionVersionFieldReader:(OrgApacheLuceneCodecsIdversionVersionFieldReader *)fr;

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

- (void)initIndexInput OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(OrgApacheLuceneUtilFstFST_Arc *)arc
                                                                                                    withLong:(jlong)fp
                                                                                                     withInt:(jint)length;

- (OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(OrgApacheLuceneUtilFstFST_Arc *)arc
                                                                  withOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)frameData
                                                                                                     withInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum, in_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum, currentFrame_, OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum, fr_, OrgApacheLuceneCodecsIdversionVersionFieldReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum, term_, OrgApacheLuceneUtilBytesRefBuilder *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_initWithOrgApacheLuceneCodecsIdversionVersionFieldReader_(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *self, OrgApacheLuceneCodecsIdversionVersionFieldReader *fr);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *new_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_initWithOrgApacheLuceneCodecsIdversionVersionFieldReader_(OrgApacheLuceneCodecsIdversionVersionFieldReader *fr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *create_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_initWithOrgApacheLuceneCodecsIdversionVersionFieldReader_(OrgApacheLuceneCodecsIdversionVersionFieldReader *fr);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum")
