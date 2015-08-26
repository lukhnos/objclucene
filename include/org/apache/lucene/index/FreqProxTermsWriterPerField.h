//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FreqProxTermsWriterPerField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL")
#if OrgApacheLuceneIndexFreqProxTermsWriterPerField_RESTRICT
#define OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexFreqProxTermsWriterPerField_RESTRICT

#if !defined (_OrgApacheLuceneIndexFreqProxTermsWriterPerField_) && (OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL || OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE)
#define _OrgApacheLuceneIndexFreqProxTermsWriterPerField_

#define OrgApacheLuceneIndexTermsHashPerField_RESTRICT 1
#define OrgApacheLuceneIndexTermsHashPerField_INCLUDE 1
#include "org/apache/lucene/index/TermsHashPerField.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexParallelPostingsArray;
@class OrgApacheLuceneIndexTermsHash;
@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesPayloadAttribute;
@protocol OrgApacheLuceneIndexIndexableField;

@interface OrgApacheLuceneIndexFreqProxTermsWriterPerField : OrgApacheLuceneIndexTermsHashPerField {
 @public
  jboolean hasFreq_;
  jboolean hasProx_;
  jboolean hasOffsets_;
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> payloadAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
  jlong sumTotalTermFreq_;
  jlong sumDocFreq_;
  jint docCount_;
  jboolean sawPayloads_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)invertState
                           withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)termsHash
                           withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                   withOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)nextPerField;

- (void)newPostingsArray OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (void)addTermWithInt:(jint)termID;

- (OrgApacheLuceneIndexParallelPostingsArray *)createPostingsArrayWithInt:(jint)size;

- (void)finish;

- (void)newTermWithInt:(jint)termID OBJC_METHOD_FAMILY_NONE;

- (jboolean)startWithOrgApacheLuceneIndexIndexableField:(id<OrgApacheLuceneIndexIndexableField>)f
                                            withBoolean:(jboolean)first;

- (void)writeOffsetsWithInt:(jint)termID
                    withInt:(jint)offsetAccum;

- (void)writeProxWithInt:(jint)termID
                 withInt:(jint)proxCode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxTermsWriterPerField)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField, payloadAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexFieldInvertState_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneIndexTermsHashPerField_(OrgApacheLuceneIndexFreqProxTermsWriterPerField *self, OrgApacheLuceneIndexFieldInvertState *invertState, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneIndexTermsHashPerField *nextPerField);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriterPerField *new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexFieldInvertState_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneIndexTermsHashPerField_(OrgApacheLuceneIndexFieldInvertState *invertState, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneIndexTermsHashPerField *nextPerField) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxTermsWriterPerField)

#endif

#if !defined (_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_) && (OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL || OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_INCLUDE)
#define _OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_

#define OrgApacheLuceneIndexParallelPostingsArray_RESTRICT 1
#define OrgApacheLuceneIndexParallelPostingsArray_INCLUDE 1
#include "org/apache/lucene/index/ParallelPostingsArray.h"

@class IOSIntArray;

@interface OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray : OrgApacheLuceneIndexParallelPostingsArray {
 @public
  IOSIntArray *termFreqs_;
  IOSIntArray *lastDocIDs_;
  IOSIntArray *lastDocCodes_;
  IOSIntArray *lastPositions_;
  IOSIntArray *lastOffsets_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)size
                withBoolean:(jboolean)writeFreqs
                withBoolean:(jboolean)writeProx
                withBoolean:(jboolean)writeOffsets;

#pragma mark Package-Private

- (jint)bytesPerPosting;

- (void)copyToWithOrgApacheLuceneIndexParallelPostingsArray:(OrgApacheLuceneIndexParallelPostingsArray *)toArray
                                                    withInt:(jint)numToCopy OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneIndexParallelPostingsArray *)newInstanceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, termFreqs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, lastDocIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, lastDocCodes_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, lastPositions_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, lastOffsets_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *self, jint size, jboolean writeFreqs, jboolean writeProx, jboolean writeOffsets);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_withBoolean_withBoolean_withBoolean_(jint size, jboolean writeFreqs, jboolean writeProx, jboolean writeOffsets) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray)

#endif

#pragma pop_macro("OrgApacheLuceneIndexFreqProxTermsWriterPerField_INCLUDE_ALL")
