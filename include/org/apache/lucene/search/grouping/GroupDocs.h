//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/GroupDocs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingGroupDocs_RESTRICT
#define OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingGroupDocs_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingGroupDocs_) && (OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE_ALL || OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE)
#define _OrgApacheLuceneSearchGroupingGroupDocs_

@class IOSObjectArray;

@interface OrgApacheLuceneSearchGroupingGroupDocs : NSObject {
 @public
  id groupValue_;
  jfloat maxScore_;
  jfloat score_;
  IOSObjectArray *scoreDocs_;
  jint totalHits_;
  IOSObjectArray *groupSortValues_;
}

#pragma mark Public

- (instancetype)initWithFloat:(jfloat)score
                    withFloat:(jfloat)maxScore
                      withInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
                       withId:(id)groupValue
            withNSObjectArray:(IOSObjectArray *)groupSortValues;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingGroupDocs)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, groupValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, scoreDocs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, groupSortValues_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(OrgApacheLuceneSearchGroupingGroupDocs *self, jfloat score, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupDocs *new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat score, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingGroupDocs)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingGroupDocs_INCLUDE_ALL")
