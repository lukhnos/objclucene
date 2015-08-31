//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MappedMultiFields.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexMappedMultiFields_INCLUDE_ALL")
#if OrgApacheLuceneIndexMappedMultiFields_RESTRICT
#define OrgApacheLuceneIndexMappedMultiFields_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexMappedMultiFields_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexMappedMultiFields_RESTRICT

#if !defined (_OrgApacheLuceneIndexMappedMultiFields_) && (OrgApacheLuceneIndexMappedMultiFields_INCLUDE_ALL || OrgApacheLuceneIndexMappedMultiFields_INCLUDE)
#define _OrgApacheLuceneIndexMappedMultiFields_

#define OrgApacheLuceneIndexFilterLeafReader_RESTRICT 1
#define OrgApacheLuceneIndexFilterLeafReader_FilterFields_INCLUDE 1
#include "org/apache/lucene/index/FilterLeafReader.h"

@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexMultiFields;
@class OrgApacheLuceneIndexTerms;

@interface OrgApacheLuceneIndexMappedMultiFields : OrgApacheLuceneIndexFilterLeafReader_FilterFields {
 @public
  OrgApacheLuceneIndexMergeState *mergeState_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                   withOrgApacheLuceneIndexMultiFields:(OrgApacheLuceneIndexMultiFields *)multiFields;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMappedMultiFields)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields, mergeState_, OrgApacheLuceneIndexMergeState *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMappedMultiFields *self, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields);

FOUNDATION_EXPORT OrgApacheLuceneIndexMappedMultiFields *new_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMappedMultiFields)

#endif

#pragma pop_macro("OrgApacheLuceneIndexMappedMultiFields_INCLUDE_ALL")