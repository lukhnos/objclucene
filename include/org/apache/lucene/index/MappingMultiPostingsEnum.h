//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MappingMultiPostingsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexMappingMultiPostingsEnum_RESTRICT
#define OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexMappingMultiPostingsEnum_RESTRICT

#if !defined (_OrgApacheLuceneIndexMappingMultiPostingsEnum_) && (OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE_ALL || OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE)
#define _OrgApacheLuceneIndexMappingMultiPostingsEnum_

#define OrgApacheLuceneIndexPostingsEnum_RESTRICT 1
#define OrgApacheLuceneIndexPostingsEnum_INCLUDE 1
#include "org/apache/lucene/index/PostingsEnum.h"

@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexMergeState_DocMap;
@class OrgApacheLuceneIndexMultiPostingsEnum;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexMappingMultiPostingsEnum : OrgApacheLuceneIndexPostingsEnum {
 @public
  jint numSubs_;
  jint upto_;
  OrgApacheLuceneIndexMergeState_DocMap *currentMap_;
  OrgApacheLuceneIndexPostingsEnum *current_;
  jint currentBase_;
  jint doc_;
  OrgApacheLuceneIndexMultiPostingsEnum *multiDocsAndPositionsEnum_;
  NSString *field_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

- (jint)docID;

- (jint)endOffset;

- (jint)freq;

- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (jint)nextDoc;

- (jint)nextPosition;

- (jint)startOffset;

#pragma mark Package-Private

- (OrgApacheLuceneIndexMappingMultiPostingsEnum *)resetWithOrgApacheLuceneIndexMultiPostingsEnum:(OrgApacheLuceneIndexMultiPostingsEnum *)postingsEnum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMappingMultiPostingsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappingMultiPostingsEnum, currentMap_, OrgApacheLuceneIndexMergeState_DocMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappingMultiPostingsEnum, current_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappingMultiPostingsEnum, multiDocsAndPositionsEnum_, OrgApacheLuceneIndexMultiPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappingMultiPostingsEnum, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(OrgApacheLuceneIndexMappingMultiPostingsEnum *self, NSString *field, OrgApacheLuceneIndexMergeState *mergeState);

FOUNDATION_EXPORT OrgApacheLuceneIndexMappingMultiPostingsEnum *new_OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(NSString *field, OrgApacheLuceneIndexMergeState *mergeState) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMappingMultiPostingsEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexMappingMultiPostingsEnum_INCLUDE_ALL")
