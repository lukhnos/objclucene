//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/TopGroups.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Enum.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopFieldDocs.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"
#include "org/apache/lucene/search/grouping/TopGroups.h"

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *new_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneSearchGroupingTopGroups

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)groupSort
                    withOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)withinGroupSort
                                                    withInt:(jint)totalHitCount
                                                    withInt:(jint)totalGroupedHitCount
            withOrgApacheLuceneSearchGroupingGroupDocsArray:(IOSObjectArray *)groups
                                                  withFloat:(jfloat)maxScore {
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_(self, groupSort, withinGroupSort, totalHitCount, totalGroupedHitCount, groups, maxScore);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchGroupingTopGroups:(OrgApacheLuceneSearchGroupingTopGroups *)oldTopGroups
                                           withJavaLangInteger:(JavaLangInteger *)totalGroupCount {
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(self, oldTopGroups, totalGroupCount);
  return self;
}

+ (OrgApacheLuceneSearchGroupingTopGroups *)mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray:(IOSObjectArray *)shardGroups
                                                                   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                                                                   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)docSort
                                                                                         withInt:(jint)docOffset
                                                                                         withInt:(jint)docTopN
                                   withOrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum:(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *)scoreMergeMode {
  return OrgApacheLuceneSearchGroupingTopGroups_mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_(shardGroups, groupSort, docSort, docOffset, docTopN, scoreMergeMode);
}

- (void)dealloc {
  RELEASE_(totalGroupCount_);
  RELEASE_(groups_);
  RELEASE_(groupSort_);
  RELEASE_(withinGroupSort_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSortFieldArray:withOrgApacheLuceneSearchSortFieldArray:withInt:withInt:withOrgApacheLuceneSearchGroupingGroupDocsArray:withFloat:", "TopGroups", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchGroupingTopGroups:withJavaLangInteger:", "TopGroups", NULL, 0x1, NULL, NULL },
    { "mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray:withOrgApacheLuceneSearchSort:withOrgApacheLuceneSearchSort:withInt:withInt:withOrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum:", "merge", "Lorg.apache.lucene.search.grouping.TopGroups;", 0x9, "Ljava.io.IOException;", "<T:Ljava/lang/Object;>([Lorg/apache/lucene/search/grouping/TopGroups<TT;>;Lorg/apache/lucene/search/Sort;Lorg/apache/lucene/search/Sort;IILorg/apache/lucene/search/grouping/TopGroups$ScoreMergeMode;)Lorg/apache/lucene/search/grouping/TopGroups<TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "totalHitCount_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "totalGroupedHitCount_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "totalGroupCount_", NULL, 0x11, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "groups_", NULL, 0x11, "[Lorg.apache.lucene.search.grouping.GroupDocs;", NULL, "[Lorg/apache/lucene/search/grouping/GroupDocs<TGROUP_VALUE_TYPE;>;", .constantValue.asLong = 0 },
    { "groupSort_", NULL, 0x11, "[Lorg.apache.lucene.search.SortField;", NULL, NULL, .constantValue.asLong = 0 },
    { "withinGroupSort_", NULL, 0x11, "[Lorg.apache.lucene.search.SortField;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxScore_", NULL, 0x11, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.grouping.TopGroups$ScoreMergeMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingTopGroups = { 2, "TopGroups", "org.apache.lucene.search.grouping", NULL, 0x1, 3, methods, 7, fields, 0, NULL, 1, inner_classes, NULL, "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneSearchGroupingTopGroups;
}

@end

void OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_(OrgApacheLuceneSearchGroupingTopGroups *self, IOSObjectArray *groupSort, IOSObjectArray *withinGroupSort, jint totalHitCount, jint totalGroupedHitCount, IOSObjectArray *groups, jfloat maxScore) {
  NSObject_init(self);
  JreStrongAssign(&self->groupSort_, groupSort);
  JreStrongAssign(&self->withinGroupSort_, withinGroupSort);
  self->totalHitCount_ = totalHitCount;
  self->totalGroupedHitCount_ = totalGroupedHitCount;
  JreStrongAssign(&self->groups_, groups);
  JreStrongAssign(&self->totalGroupCount_, nil);
  self->maxScore_ = maxScore;
}

OrgApacheLuceneSearchGroupingTopGroups *new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_(IOSObjectArray *groupSort, IOSObjectArray *withinGroupSort, jint totalHitCount, jint totalGroupedHitCount, IOSObjectArray *groups, jfloat maxScore) {
  OrgApacheLuceneSearchGroupingTopGroups *self = [OrgApacheLuceneSearchGroupingTopGroups alloc];
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_(self, groupSort, withinGroupSort, totalHitCount, totalGroupedHitCount, groups, maxScore);
  return self;
}

void OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(OrgApacheLuceneSearchGroupingTopGroups *self, OrgApacheLuceneSearchGroupingTopGroups *oldTopGroups, JavaLangInteger *totalGroupCount) {
  NSObject_init(self);
  JreStrongAssign(&self->groupSort_, ((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(oldTopGroups))->groupSort_);
  JreStrongAssign(&self->withinGroupSort_, oldTopGroups->withinGroupSort_);
  self->totalHitCount_ = oldTopGroups->totalHitCount_;
  self->totalGroupedHitCount_ = oldTopGroups->totalGroupedHitCount_;
  JreStrongAssign(&self->groups_, oldTopGroups->groups_);
  self->maxScore_ = oldTopGroups->maxScore_;
  JreStrongAssign(&self->totalGroupCount_, totalGroupCount);
}

OrgApacheLuceneSearchGroupingTopGroups *new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(OrgApacheLuceneSearchGroupingTopGroups *oldTopGroups, JavaLangInteger *totalGroupCount) {
  OrgApacheLuceneSearchGroupingTopGroups *self = [OrgApacheLuceneSearchGroupingTopGroups alloc];
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(self, oldTopGroups, totalGroupCount);
  return self;
}

OrgApacheLuceneSearchGroupingTopGroups *OrgApacheLuceneSearchGroupingTopGroups_mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_(IOSObjectArray *shardGroups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *docSort, jint docOffset, jint docTopN, OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *scoreMergeMode) {
  OrgApacheLuceneSearchGroupingTopGroups_initialize();
  if (((IOSObjectArray *) nil_chk(shardGroups))->size_ == 0) {
    return nil;
  }
  jint totalHitCount = 0;
  jint totalGroupedHitCount = 0;
  JavaLangInteger *totalGroupCount = nil;
  jint numGroups = ((IOSObjectArray *) nil_chk(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_))->size_;
  {
    IOSObjectArray *a__ = shardGroups;
    OrgApacheLuceneSearchGroupingTopGroups * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchGroupingTopGroups * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchGroupingTopGroups *shard = *b__++;
      if (numGroups != ((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(shard))->groups_->size_) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"number of groups differs across shards; you must pass same top groups to all shards' second-pass collector") autorelease];
      }
      totalHitCount += shard->totalHitCount_;
      totalGroupedHitCount += shard->totalGroupedHitCount_;
      if (shard->totalGroupCount_ != nil) {
        if (totalGroupCount == nil) {
          totalGroupCount = JavaLangInteger_valueOfWithInt_(0);
        }
        JreBoxedPlusAssignInt(&totalGroupCount, [shard->totalGroupCount_ intValue]);
      }
    }
  }
  IOSObjectArray *mergedGroupDocs = [IOSObjectArray arrayWithLength:numGroups type:OrgApacheLuceneSearchGroupingGroupDocs_class_()];
  IOSObjectArray *shardTopDocs;
  if (docSort == nil) {
    shardTopDocs = [IOSObjectArray arrayWithLength:shardGroups->size_ type:OrgApacheLuceneSearchTopDocs_class_()];
  }
  else {
    shardTopDocs = [IOSObjectArray arrayWithLength:shardGroups->size_ type:OrgApacheLuceneSearchTopFieldDocs_class_()];
  }
  jfloat totalMaxScore = JavaLangFloat_MIN_VALUE;
  for (jint groupIDX = 0; groupIDX < numGroups; groupIDX++) {
    id groupValue = ((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_, groupIDX)))->groupValue_;
    jfloat maxScore = JavaLangFloat_MIN_VALUE;
    jint totalHits = 0;
    jdouble scoreSum = 0.0;
    for (jint shardIDX = 0; shardIDX < shardGroups->size_; shardIDX++) {
      OrgApacheLuceneSearchGroupingTopGroups *shard = IOSObjectArray_Get(shardGroups, shardIDX);
      OrgApacheLuceneSearchGroupingGroupDocs *shardGroupDocs = IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(shard))->groups_, groupIDX);
      if (groupValue == nil) {
        if (((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->groupValue_ != nil) {
          @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"group values differ across shards; you must pass same top groups to all shards' second-pass collector") autorelease];
        }
      }
      else if (![groupValue isEqual:((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->groupValue_]) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"group values differ across shards; you must pass same top groups to all shards' second-pass collector") autorelease];
      }
      if (docSort == nil) {
        IOSObjectArray_SetAndConsume(nil_chk(shardTopDocs), shardIDX, new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->totalHits_, shardGroupDocs->scoreDocs_, shardGroupDocs->maxScore_));
      }
      else {
        IOSObjectArray_SetAndConsume(nil_chk(shardTopDocs), shardIDX, new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->totalHits_, shardGroupDocs->scoreDocs_, [docSort getSort], shardGroupDocs->maxScore_));
      }
      maxScore = JavaLangMath_maxWithFloat_withFloat_(maxScore, ((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->maxScore_);
      totalHits += shardGroupDocs->totalHits_;
      JrePlusAssignDoubleD(&scoreSum, shardGroupDocs->score_);
    }
    OrgApacheLuceneSearchTopDocs *mergedTopDocs;
    if (docSort == nil) {
      mergedTopDocs = OrgApacheLuceneSearchTopDocs_mergeWithInt_withOrgApacheLuceneSearchTopDocsArray_(docOffset + docTopN, shardTopDocs);
    }
    else {
      mergedTopDocs = OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(docSort, docOffset + docTopN, (IOSObjectArray *) check_class_cast(shardTopDocs, [IOSObjectArray class]));
    }
    IOSObjectArray *mergedScoreDocs;
    if (docOffset == 0) {
      mergedScoreDocs = ((OrgApacheLuceneSearchTopDocs *) nil_chk(mergedTopDocs))->scoreDocs_;
    }
    else if (docOffset >= ((IOSObjectArray *) nil_chk(((OrgApacheLuceneSearchTopDocs *) nil_chk(mergedTopDocs))->scoreDocs_))->size_) {
      mergedScoreDocs = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    }
    else {
      mergedScoreDocs = [IOSObjectArray arrayWithLength:mergedTopDocs->scoreDocs_->size_ - docOffset type:OrgApacheLuceneSearchScoreDoc_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mergedTopDocs->scoreDocs_, docOffset, mergedScoreDocs, 0, mergedTopDocs->scoreDocs_->size_ - docOffset);
    }
    jfloat groupScore;
    switch ([scoreMergeMode ordinal]) {
      case OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeMode_None:
      groupScore = JavaLangFloat_NaN;
      break;
      case OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeMode_Avg:
      if (totalHits > 0) {
        groupScore = (jfloat) (scoreSum / totalHits);
      }
      else {
        groupScore = JavaLangFloat_NaN;
      }
      break;
      case OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeMode_Total:
      groupScore = (jfloat) scoreSum;
      break;
      default:
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"can't handle ScoreMergeMode ", scoreMergeMode)) autorelease];
    }
    IOSObjectArray_SetAndConsume(mergedGroupDocs, groupIDX, new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(groupScore, maxScore, totalHits, mergedScoreDocs, groupValue, ((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_, groupIDX)))->groupSortValues_));
    totalMaxScore = JavaLangMath_maxWithFloat_withFloat_(totalMaxScore, maxScore);
  }
  if (totalGroupCount != nil) {
    OrgApacheLuceneSearchGroupingTopGroups *result = [new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort], docSort == nil ? nil : [docSort getSort], totalHitCount, totalGroupedHitCount, mergedGroupDocs, totalMaxScore) autorelease];
    return [new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(result, totalGroupCount) autorelease];
  }
  else {
    return [new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort], docSort == nil ? nil : [docSort getSort], totalHitCount, totalGroupedHitCount, mergedGroupDocs, totalMaxScore) autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingTopGroups)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum)

OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_values_[3];

@implementation OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_values() {
  OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_values_ count:3 type:OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_values();
}

+ (OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *e = OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum class]) {
    OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_None = new_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(@"None", 0);
    OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_Total = new_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(@"Total", 1);
    OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_Avg = new_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(@"Avg", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "None", "None", 0x4019, "Lorg.apache.lucene.search.grouping.TopGroups$ScoreMergeMode;", &OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_None, NULL, .constantValue.asLong = 0 },
    { "Total", "Total", 0x4019, "Lorg.apache.lucene.search.grouping.TopGroups$ScoreMergeMode;", &OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_Total, NULL, .constantValue.asLong = 0 },
    { "Avg", "Avg", 0x4019, "Lorg.apache.lucene.search.grouping.TopGroups$ScoreMergeMode;", &OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_Avg, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.grouping.TopGroups$ScoreMergeMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum = { 2, "ScoreMergeMode", "org.apache.lucene.search.grouping", "TopGroups", 0x4019, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/search/grouping/TopGroups$ScoreMergeMode;>;" };
  return &_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum;
}

@end

void OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *new_OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum *self = [OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum alloc];
  OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingTopGroups_ScoreMergeModeEnum)