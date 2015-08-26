//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/GroupDocs.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"

@implementation OrgApacheLuceneSearchGroupingGroupDocs

- (instancetype)initWithFloat:(jfloat)score
                    withFloat:(jfloat)maxScore
                      withInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
                       withId:(id)groupValue
            withNSObjectArray:(IOSObjectArray *)groupSortValues {
  OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(self, score, maxScore, totalHits, scoreDocs, groupValue, groupSortValues);
  return self;
}

- (void)dealloc {
  RELEASE_(groupValue_);
  RELEASE_(scoreDocs_);
  RELEASE_(groupSortValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withFloat:withInt:withOrgApacheLuceneSearchScoreDocArray:withId:withNSObjectArray:", "GroupDocs", NULL, 0x1, NULL, "(FFI[Lorg/apache/lucene/search/ScoreDoc;TGROUP_VALUE_TYPE;[Ljava/lang/Object;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", NULL, 0x11, "TGROUP_VALUE_TYPE;", NULL, "TGROUP_VALUE_TYPE;", .constantValue.asLong = 0 },
    { "maxScore_", NULL, 0x11, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "score_", NULL, 0x11, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "scoreDocs_", NULL, 0x11, "[Lorg.apache.lucene.search.ScoreDoc;", NULL, NULL, .constantValue.asLong = 0 },
    { "totalHits_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "groupSortValues_", NULL, 0x11, "[Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingGroupDocs = { 2, "GroupDocs", "org.apache.lucene.search.grouping", NULL, 0x1, 1, methods, 6, fields, 0, NULL, 0, NULL, NULL, "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneSearchGroupingGroupDocs;
}

@end

void OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(OrgApacheLuceneSearchGroupingGroupDocs *self, jfloat score, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) {
  NSObject_init(self);
  self->score_ = score;
  self->maxScore_ = maxScore;
  self->totalHits_ = totalHits;
  JreStrongAssign(&self->scoreDocs_, scoreDocs);
  JreStrongAssign(&self->groupValue_, groupValue);
  JreStrongAssign(&self->groupSortValues_, groupSortValues);
}

OrgApacheLuceneSearchGroupingGroupDocs *new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat score, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) {
  OrgApacheLuceneSearchGroupingGroupDocs *self = [OrgApacheLuceneSearchGroupingGroupDocs alloc];
  OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(self, score, maxScore, totalHits, scoreDocs, groupValue, groupSortValues);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingGroupDocs)
