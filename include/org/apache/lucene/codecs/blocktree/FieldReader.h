//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/FieldReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeFieldReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsBlocktreeFieldReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeFieldReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeFieldReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsBlocktreeFieldReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsBlocktreeFieldReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeFieldReader || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeFieldReader))
#define OrgApacheLuceneCodecsBlocktreeFieldReader_

#define RESTRICT_OrgApacheLuceneIndexTerms 1
#define INCLUDE_OrgApacheLuceneIndexTerms 1
#include "org/apache/lucene/index/Terms.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader;
@class OrgApacheLuceneCodecsBlocktreeStats;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilAutomatonCompiledAutomaton;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST;
@protocol JavaUtilCollection;

/*!
 @brief BlockTree's implementation of <code>Terms</code>.
 */
@interface OrgApacheLuceneCodecsBlocktreeFieldReader : OrgApacheLuceneIndexTerms < OrgApacheLuceneUtilAccountable > {
 @public
  jlong numTerms_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  jlong sumTotalTermFreq_;
  jlong sumDocFreq_;
  jint docCount_;
  jlong indexStartFP_;
  jlong rootBlockFP_;
  OrgApacheLuceneUtilBytesRef *rootCode_;
  OrgApacheLuceneUtilBytesRef *minTerm_;
  OrgApacheLuceneUtilBytesRef *maxTerm_;
  jint longsSize_;
  WEAK_ OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent_;
  OrgApacheLuceneUtilFstFST *index_;
}

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

- (jint)getDocCount;

- (OrgApacheLuceneUtilBytesRef *)getMax;

- (OrgApacheLuceneUtilBytesRef *)getMin;

/*!
 @brief For debugging -- used by CheckIndex too
 */
- (OrgApacheLuceneCodecsBlocktreeStats *)getStats;

- (jlong)getSumDocFreq;

- (jlong)getSumTotalTermFreq;

- (jboolean)hasFreqs;

- (jboolean)hasOffsets;

- (jboolean)hasPayloads;

- (jboolean)hasPositions;

- (OrgApacheLuceneIndexTermsEnum *)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(OrgApacheLuceneUtilAutomatonCompiledAutomaton *)compiled
                                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)startTerm;

- (OrgApacheLuceneIndexTermsEnum *)iterator;

- (jlong)ramBytesUsed;

- (jlong)size;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader:(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *)parent
                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                                                            withLong:(jlong)numTerms
                                                     withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)rootCode
                                                                            withLong:(jlong)sumTotalTermFreq
                                                                            withLong:(jlong)sumDocFreq
                                                                             withInt:(jint)docCount
                                                                            withLong:(jlong)indexStartFP
                                                                             withInt:(jint)longsSize
                                                  withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)indexIn
                                                     withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minTerm
                                                     withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxTerm;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeFieldReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, rootCode_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, minTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, maxTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, index_, OrgApacheLuceneUtilFstFST *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeFieldReader *self, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilBytesRef *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeFieldReader *new_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilBytesRef *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeFieldReader *create_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilBytesRef *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeFieldReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeFieldReader")
