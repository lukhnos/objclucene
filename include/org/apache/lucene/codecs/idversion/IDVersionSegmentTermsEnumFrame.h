//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionSegmentTermsEnumFrame.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame || defined(INCLUDE_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame))
#define OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame_

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneCodecsBlockTermState;
@class OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum;
@class OrgApacheLuceneIndexTermsEnum_SeekStatus;
@class OrgApacheLuceneStoreByteArrayDataInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST_Arc;

@interface OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame : NSObject {
 @public
  jint ord_;
  jboolean hasTerms_;
  jboolean hasTermsOrig_;
  jboolean isFloor_;
  /*!
   @brief Highest version of any term in this block.
   */
  jlong maxIDVersion_;
  OrgApacheLuceneUtilFstFST_Arc *arc_;
  jlong fp_;
  jlong fpOrig_;
  jlong fpEnd_;
  IOSByteArray *suffixBytes_;
  OrgApacheLuceneStoreByteArrayDataInput *suffixesReader_;
  IOSByteArray *floorData_;
  OrgApacheLuceneStoreByteArrayDataInput *floorDataReader_;
  jint prefix_;
  jint entCount_;
  jint nextEnt_;
  jboolean isLastInFloor_;
  jboolean isLeafBlock_;
  jlong lastSubFP_;
  jint nextFloorLabel_;
  jint numFollowFloorBlocks_;
  jint metaDataUpto_;
  OrgApacheLuceneCodecsBlockTermState *state_;
  IOSLongArray *longs_;
  IOSByteArray *bytes_;
  OrgApacheLuceneStoreByteArrayDataInput *bytesReader_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum:(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *)ste
                                                                                                withInt:(jint)ord;

- (void)decodeMetaData;

- (jint)getTermBlockOrd;

- (jboolean)next;

- (jboolean)nextLeaf;

- (jboolean)nextNonLeaf;

- (void)scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target;

- (void)scanToSubBlockWithLong:(jlong)subFP;

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)scanToTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target
                                                                            withBoolean:(jboolean)exactOnly;

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)scanToTermLeafWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target
                                                                                withBoolean:(jboolean)exactOnly;

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)scanToTermNonLeafWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target
                                                                                   withBoolean:(jboolean)exactOnly;

- (void)setFloorDataWithOrgApacheLuceneStoreByteArrayDataInput:(OrgApacheLuceneStoreByteArrayDataInput *)inArg
                               withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)source;

#pragma mark Package-Private

- (void)loadBlock;

- (void)loadNextFloorBlock;

- (void)rewind;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, arc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, suffixBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, suffixesReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, floorData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, floorDataReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, state_, OrgApacheLuceneCodecsBlockTermState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, longs_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, bytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame, bytesReader_, OrgApacheLuceneStoreByteArrayDataInput *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame_initPackagePrivateWithOrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_withInt_(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *self, OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *ste, jint ord);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *new_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame_initPackagePrivateWithOrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_withInt_(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *ste, jint ord) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame *create_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame_initPackagePrivateWithOrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum_withInt_(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnum *ste, jint ord);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionSegmentTermsEnumFrame")
