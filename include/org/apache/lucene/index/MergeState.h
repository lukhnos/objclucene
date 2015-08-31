//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MergeState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexMergeState_INCLUDE_ALL")
#if OrgApacheLuceneIndexMergeState_RESTRICT
#define OrgApacheLuceneIndexMergeState_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexMergeState_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexMergeState_RESTRICT

#if !defined (_OrgApacheLuceneIndexMergeState_) && (OrgApacheLuceneIndexMergeState_INCLUDE_ALL || OrgApacheLuceneIndexMergeState_INCLUDE)
#define _OrgApacheLuceneIndexMergeState_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneUtilInfoStream;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexMergeState : NSObject {
 @public
  OrgApacheLuceneIndexSegmentInfo *segmentInfo_;
  OrgApacheLuceneIndexFieldInfos *mergeFieldInfos_;
  IOSObjectArray *storedFieldsReaders_;
  IOSObjectArray *termVectorsReaders_;
  IOSObjectArray *normsProducers_;
  IOSObjectArray *docValuesProducers_;
  IOSObjectArray *fieldInfos_;
  IOSObjectArray *liveDocs_;
  IOSObjectArray *docMaps_;
  IOSObjectArray *fieldsProducers_;
  IOSIntArray *docBase_;
  IOSIntArray *maxDocs_;
  OrgApacheLuceneUtilInfoStream *infoStream_;
}

#pragma mark Package-Private

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)readers
 withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
   withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergeState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, segmentInfo_, OrgApacheLuceneIndexSegmentInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, mergeFieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, storedFieldsReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, termVectorsReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, normsProducers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, docValuesProducers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, fieldInfos_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, liveDocs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, docMaps_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, fieldsProducers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, docBase_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, maxDocs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeState, infoStream_, OrgApacheLuceneUtilInfoStream *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergeState_initWithJavaUtilList_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexMergeState *self, id<JavaUtilList> readers, OrgApacheLuceneIndexSegmentInfo *segmentInfo, OrgApacheLuceneUtilInfoStream *infoStream);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeState *new_OrgApacheLuceneIndexMergeState_initWithJavaUtilList_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneUtilInfoStream_(id<JavaUtilList> readers, OrgApacheLuceneIndexSegmentInfo *segmentInfo, OrgApacheLuceneUtilInfoStream *infoStream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeState)

#endif

#if !defined (_OrgApacheLuceneIndexMergeState_DocMap_) && (OrgApacheLuceneIndexMergeState_INCLUDE_ALL || OrgApacheLuceneIndexMergeState_DocMap_INCLUDE)
#define _OrgApacheLuceneIndexMergeState_DocMap_

@class OrgApacheLuceneIndexCodecReader;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneIndexMergeState_DocMap : NSObject

#pragma mark Public

+ (OrgApacheLuceneIndexMergeState_DocMap *)buildWithOrgApacheLuceneIndexCodecReader:(OrgApacheLuceneIndexCodecReader *)reader;

- (jint)getWithInt:(jint)docID;

- (jboolean)hasDeletions;

- (jint)maxDoc;

- (jint)numDeletedDocs;

- (jint)numDocs;

#pragma mark Package-Private

- (instancetype)init;

+ (OrgApacheLuceneIndexMergeState_DocMap *)buildWithInt:(jint)maxDoc
                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergeState_DocMap)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergeState_DocMap_init(OrgApacheLuceneIndexMergeState_DocMap *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeState_DocMap *OrgApacheLuceneIndexMergeState_DocMap_buildWithOrgApacheLuceneIndexCodecReader_(OrgApacheLuceneIndexCodecReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeState_DocMap *OrgApacheLuceneIndexMergeState_DocMap_buildWithInt_withOrgApacheLuceneUtilBits_(jint maxDoc, id<OrgApacheLuceneUtilBits> liveDocs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeState_DocMap)

#endif

#pragma pop_macro("OrgApacheLuceneIndexMergeState_INCLUDE_ALL")