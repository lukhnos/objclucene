//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/IntersectTermsEnumFrame.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame")
#ifdef RESTRICT_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame

#if !defined (OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame))
#define OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneCodecsBlockTermState;
@class OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum;
@class OrgApacheLuceneStoreByteArrayDataInput;
@class OrgApacheLuceneUtilAutomatonTransition;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST_Arc;

@interface OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame : NSObject {
 @public
  jint ord_;
  jlong fp_;
  jlong fpOrig_;
  jlong fpEnd_;
  jlong lastSubFP_;
  jint state_;
  jint lastState_;
  jint metaDataUpto_;
  IOSByteArray *suffixBytes_;
  OrgApacheLuceneStoreByteArrayDataInput *suffixesReader_;
  IOSByteArray *statBytes_;
  OrgApacheLuceneStoreByteArrayDataInput *statsReader_;
  IOSByteArray *floorData_;
  OrgApacheLuceneStoreByteArrayDataInput *floorDataReader_;
  jint prefix_;
  jint entCount_;
  jint nextEnt_;
  jboolean isLastInFloor_;
  jboolean isLeafBlock_;
  jint numFollowFloorBlocks_;
  jint nextFloorLabel_;
  OrgApacheLuceneUtilAutomatonTransition *transition_;
  jint transitionIndex_;
  jint transitionCount_;
  jboolean versionAutoPrefix_;
  OrgApacheLuceneUtilFstFST_Arc *arc_;
  OrgApacheLuceneCodecsBlockTermState *termState_;
  IOSLongArray *longs_;
  IOSByteArray *bytes_;
  OrgApacheLuceneStoreByteArrayDataInput *bytesReader_;
  OrgApacheLuceneUtilBytesRef *outputPrefix_;
  jint startBytePos_;
  jint suffix_;
  jint floorSuffixLeadStart_;
  jint floorSuffixLeadEnd_;
  jboolean isAutoPrefixTerm_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum:(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum *)ite
                                                                 withInt:(jint)ord;

- (void)decodeMetaData;

- (jint)getTermBlockOrd;

- (jboolean)next;

- (void)nextLeaf;

- (jboolean)nextNonLeaf;

- (void)setStateWithInt:(jint)state;

#pragma mark Package-Private

- (void)load__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)frameIndexData;

- (void)loadNextFloorBlock;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, suffixBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, suffixesReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, statBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, statsReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, floorData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, floorDataReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, transition_, OrgApacheLuceneUtilAutomatonTransition *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, arc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, termState_, OrgApacheLuceneCodecsBlockTermState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, longs_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, bytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, bytesReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame, outputPrefix_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *self, OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum *ite, jint ord);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum *ite, jint ord) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *create_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum *ite, jint ord);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame")
