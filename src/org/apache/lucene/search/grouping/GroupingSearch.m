//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/GroupingSearch.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/search/CachingCollector.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/MultiCollector.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector.h"
#include "org/apache/lucene/search/grouping/AbstractAllGroupsCollector.h"
#include "org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/BlockGroupingCollector.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"
#include "org/apache/lucene/search/grouping/GroupingSearch.h"
#include "org/apache/lucene/search/grouping/TopGroups.h"
#include "org/apache/lucene/search/grouping/function/FunctionAllGroupHeadsCollector.h"
#include "org/apache/lucene/search/grouping/function/FunctionAllGroupsCollector.h"
#include "org/apache/lucene/search/grouping/function/FunctionFirstPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/function/FunctionSecondPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/term/TermAllGroupHeadsCollector.h"
#include "org/apache/lucene/search/grouping/term/TermAllGroupsCollector.h"
#include "org/apache/lucene/search/grouping/term/TermFirstPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/term/TermSecondPassGroupingCollector.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/FixedBitSet.h"

@interface OrgApacheLuceneSearchGroupingGroupingSearch () {
 @public
  NSString *groupField_;
  OrgApacheLuceneQueriesFunctionValueSource *groupFunction_;
  id<JavaUtilMap> valueSourceContext_;
  OrgApacheLuceneSearchQuery *groupEndDocs_;
  OrgApacheLuceneSearchSort *groupSort_;
  OrgApacheLuceneSearchSort *sortWithinGroup_;
  jint groupDocsOffset_;
  jint groupDocsLimit_;
  jboolean fillSortFields_;
  jboolean includeScores_;
  jboolean includeMaxScore_;
  JavaLangDouble *maxCacheRAMMB_;
  JavaLangInteger *maxDocsToCache_;
  jboolean cacheScores_;
  jboolean allGroups_;
  jboolean allGroupHeads_;
  jint initialSize_;
  id<JavaUtilCollection> matchingGroups_;
  id<OrgApacheLuceneUtilBits> matchingGroupHeads_;
}

- (instancetype)initWithNSString:(NSString *)groupField
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupFunction
                 withJavaUtilMap:(id<JavaUtilMap>)valueSourceContext
  withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)groupEndDocs;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, groupField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, groupFunction_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, valueSourceContext_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, groupEndDocs_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, groupSort_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, sortWithinGroup_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, maxCacheRAMMB_, JavaLangDouble *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, maxDocsToCache_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, matchingGroups_, id<JavaUtilCollection>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupingSearch, matchingGroupHeads_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGroupingGroupingSearch *self, NSString *groupField, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext, OrgApacheLuceneSearchQuery *groupEndDocs);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(NSString *groupField, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext, OrgApacheLuceneSearchQuery *groupEndDocs) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneSearchGroupingGroupingSearch

- (instancetype)initWithNSString:(NSString *)groupField {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(self, groupField);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupFunction
                                                  withJavaUtilMap:(id<JavaUtilMap>)valueSourceContext {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(self, groupFunction, valueSourceContext);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)groupEndDocs {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(self, groupEndDocs);
  return self;
}

- (instancetype)initWithNSString:(NSString *)groupField
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupFunction
                 withJavaUtilMap:(id<JavaUtilMap>)valueSourceContext
  withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)groupEndDocs {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(self, groupField, groupFunction, valueSourceContext, groupEndDocs);
  return self;
}

- (OrgApacheLuceneSearchGroupingTopGroups *)searchWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                          withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                 withInt:(jint)groupOffset
                                                                                 withInt:(jint)groupLimit {
  if (groupField_ != nil || groupFunction_ != nil) {
    return [self groupByFieldOrFunctionWithOrgApacheLuceneSearchIndexSearcher:searcher withOrgApacheLuceneSearchQuery:query withInt:groupOffset withInt:groupLimit];
  }
  else if (groupEndDocs_ != nil) {
    return (OrgApacheLuceneSearchGroupingTopGroups *) check_class_cast([self groupByDocBlockWithOrgApacheLuceneSearchIndexSearcher:searcher withOrgApacheLuceneSearchQuery:query withInt:groupOffset withInt:groupLimit], [OrgApacheLuceneSearchGroupingTopGroups class]);
  }
  else {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"Either groupField, groupFunction or groupEndDocs must be set.") autorelease];
  }
}

- (OrgApacheLuceneSearchGroupingTopGroups *)groupByFieldOrFunctionWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                          withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                                 withInt:(jint)groupOffset
                                                                                                 withInt:(jint)groupLimit {
  jint topN = groupOffset + groupLimit;
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *firstPassCollector;
  OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector *allGroupsCollector;
  OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *allGroupHeadsCollector;
  if (groupFunction_ != nil) {
    firstPassCollector = [new_OrgApacheLuceneSearchGroupingFunctionFunctionFirstPassGroupingCollector_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchSort_withInt_(groupFunction_, valueSourceContext_, groupSort_, topN) autorelease];
    if (allGroups_) {
      allGroupsCollector = [new_OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupsCollector_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(groupFunction_, valueSourceContext_) autorelease];
    }
    else {
      allGroupsCollector = nil;
    }
    if (allGroupHeads_) {
      allGroupHeadsCollector = [new_OrgApacheLuceneSearchGroupingFunctionFunctionAllGroupHeadsCollector_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchSort_(groupFunction_, valueSourceContext_, sortWithinGroup_) autorelease];
    }
    else {
      allGroupHeadsCollector = nil;
    }
  }
  else {
    firstPassCollector = [new_OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(groupField_, groupSort_, topN) autorelease];
    if (allGroups_) {
      allGroupsCollector = [new_OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_initWithNSString_withInt_(groupField_, initialSize_) autorelease];
    }
    else {
      allGroupsCollector = nil;
    }
    if (allGroupHeads_) {
      allGroupHeadsCollector = OrgApacheLuceneSearchGroupingTermTermAllGroupHeadsCollector_createWithNSString_withOrgApacheLuceneSearchSort_withInt_(groupField_, sortWithinGroup_, initialSize_);
    }
    else {
      allGroupHeadsCollector = nil;
    }
  }
  id<OrgApacheLuceneSearchCollector> firstRound;
  if (allGroupHeads_ || allGroups_) {
    id<JavaUtilList> collectors = [new_JavaUtilArrayList_init() autorelease];
    [collectors addWithId:firstPassCollector];
    if (allGroups_) {
      [collectors addWithId:allGroupsCollector];
    }
    if (allGroupHeads_) {
      [collectors addWithId:allGroupHeadsCollector];
    }
    firstRound = OrgApacheLuceneSearchMultiCollector_wrapWithOrgApacheLuceneSearchCollectorArray_([collectors toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[collectors size] type:OrgApacheLuceneSearchCollector_class_()]]);
  }
  else {
    firstRound = firstPassCollector;
  }
  OrgApacheLuceneSearchCachingCollector *cachedCollector = nil;
  if (maxCacheRAMMB_ != nil || maxDocsToCache_ != nil) {
    if (maxCacheRAMMB_ != nil) {
      cachedCollector = OrgApacheLuceneSearchCachingCollector_createWithOrgApacheLuceneSearchCollector_withBoolean_withDouble_(firstRound, cacheScores_, [maxCacheRAMMB_ doubleValue]);
    }
    else {
      cachedCollector = OrgApacheLuceneSearchCachingCollector_createWithOrgApacheLuceneSearchCollector_withBoolean_withInt_(firstRound, cacheScores_, [((JavaLangInteger *) nil_chk(maxDocsToCache_)) intValue]);
    }
    [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) searchWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchCollector:cachedCollector];
  }
  else {
    [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) searchWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchCollector:firstRound];
  }
  if (allGroups_) {
    JreStrongAssign(&matchingGroups_, [((OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector *) nil_chk(allGroupsCollector)) getGroups]);
  }
  else {
    JreStrongAssign(&matchingGroups_, JavaUtilCollections_emptyList());
  }
  if (allGroupHeads_) {
    JreStrongAssign(&matchingGroupHeads_, [((OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *) nil_chk(allGroupHeadsCollector)) retrieveGroupHeadsWithInt:[((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) maxDoc]]);
  }
  else {
    JreStrongAssignAndConsume(&matchingGroupHeads_, new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_([((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) maxDoc]));
  }
  id<JavaUtilCollection> topSearchGroups = [((OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *) nil_chk(firstPassCollector)) getTopGroupsWithInt:groupOffset withBoolean:fillSortFields_];
  if (topSearchGroups == nil) {
    return [new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_withFloat_([IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSortField_class_()], [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSortField_class_()], 0, 0, [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchGroupingGroupDocs_class_()], JavaLangFloat_NaN) autorelease];
  }
  jint topNInsideGroup = groupDocsOffset_ + groupDocsLimit_;
  OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *secondPassCollector;
  if (groupFunction_ != nil) {
    secondPassCollector = [new_OrgApacheLuceneSearchGroupingFunctionFunctionSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(topSearchGroups, groupSort_, sortWithinGroup_, topNInsideGroup, includeScores_, includeMaxScore_, fillSortFields_, groupFunction_, valueSourceContext_) autorelease];
  }
  else {
    secondPassCollector = [new_OrgApacheLuceneSearchGroupingTermTermSecondPassGroupingCollector_initWithNSString_withJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(groupField_, topSearchGroups, groupSort_, sortWithinGroup_, topNInsideGroup, includeScores_, includeMaxScore_, fillSortFields_) autorelease];
  }
  if (cachedCollector != nil && [cachedCollector isCached]) {
    [cachedCollector replayWithOrgApacheLuceneSearchCollector:secondPassCollector];
  }
  else {
    [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) searchWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchCollector:secondPassCollector];
  }
  if (allGroups_) {
    return [new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_([((OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *) nil_chk(secondPassCollector)) getTopGroupsWithInt:groupDocsOffset_], JavaLangInteger_valueOfWithInt_([((id<JavaUtilCollection>) nil_chk(matchingGroups_)) size])) autorelease];
  }
  else {
    return [((OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *) nil_chk(secondPassCollector)) getTopGroupsWithInt:groupDocsOffset_];
  }
}

- (OrgApacheLuceneSearchGroupingTopGroups *)groupByDocBlockWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                   withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                          withInt:(jint)groupOffset
                                                                                          withInt:(jint)groupLimit {
  jint topN = groupOffset + groupLimit;
  OrgApacheLuceneSearchWeight *groupEndDocs = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) createNormalizedWeightWithOrgApacheLuceneSearchQuery:self->groupEndDocs_ withBoolean:NO];
  OrgApacheLuceneSearchGroupingBlockGroupingCollector *c = [new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchWeight_(groupSort_, topN, includeScores_, groupEndDocs) autorelease];
  [searcher searchWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchCollector:c];
  jint topNInsideGroup = groupDocsOffset_ + groupDocsLimit_;
  return [c getTopGroupsWithOrgApacheLuceneSearchSort:sortWithinGroup_ withInt:groupOffset withInt:groupDocsOffset_ withInt:topNInsideGroup withBoolean:fillSortFields_];
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setCachingInMBWithDouble:(jdouble)maxCacheRAMMB
                                                              withBoolean:(jboolean)cacheScores {
  JreStrongAssign(&self->maxCacheRAMMB_, JavaLangDouble_valueOfWithDouble_(maxCacheRAMMB));
  JreStrongAssign(&self->maxDocsToCache_, nil);
  self->cacheScores_ = cacheScores;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setCachingWithInt:(jint)maxDocsToCache
                                                       withBoolean:(jboolean)cacheScores {
  JreStrongAssign(&self->maxDocsToCache_, JavaLangInteger_valueOfWithInt_(maxDocsToCache));
  JreStrongAssign(&self->maxCacheRAMMB_, nil);
  self->cacheScores_ = cacheScores;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)disableCaching {
  JreStrongAssign(&self->maxCacheRAMMB_, nil);
  JreStrongAssign(&self->maxDocsToCache_, nil);
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupSortWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort {
  JreStrongAssign(&self->groupSort_, groupSort);
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setSortWithinGroupWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sortWithinGroup {
  JreStrongAssign(&self->sortWithinGroup_, sortWithinGroup);
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupDocsOffsetWithInt:(jint)groupDocsOffset {
  self->groupDocsOffset_ = groupDocsOffset;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupDocsLimitWithInt:(jint)groupDocsLimit {
  self->groupDocsLimit_ = groupDocsLimit;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setFillSortFieldsWithBoolean:(jboolean)fillSortFields {
  self->fillSortFields_ = fillSortFields;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setIncludeScoresWithBoolean:(jboolean)includeScores {
  self->includeScores_ = includeScores;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setIncludeMaxScoreWithBoolean:(jboolean)includeMaxScore {
  self->includeMaxScore_ = includeMaxScore;
  return self;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setAllGroupsWithBoolean:(jboolean)allGroups {
  self->allGroups_ = allGroups;
  return self;
}

- (id<JavaUtilCollection>)getAllMatchingGroups {
  return (id<JavaUtilCollection>) check_protocol_cast(matchingGroups_, JavaUtilCollection_class_());
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setAllGroupHeadsWithBoolean:(jboolean)allGroupHeads {
  self->allGroupHeads_ = allGroupHeads;
  return self;
}

- (id<OrgApacheLuceneUtilBits>)getAllGroupHeads {
  return matchingGroupHeads_;
}

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setInitialSizeWithInt:(jint)initialSize {
  self->initialSize_ = initialSize;
  return self;
}

- (void)dealloc {
  RELEASE_(groupField_);
  RELEASE_(groupFunction_);
  RELEASE_(valueSourceContext_);
  RELEASE_(groupEndDocs_);
  RELEASE_(groupSort_);
  RELEASE_(sortWithinGroup_);
  RELEASE_(maxCacheRAMMB_);
  RELEASE_(maxDocsToCache_);
  RELEASE_(matchingGroups_);
  RELEASE_(matchingGroupHeads_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "GroupingSearch", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withJavaUtilMap:", "GroupingSearch", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:", "GroupingSearch", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneQueriesFunctionValueSource:withJavaUtilMap:withOrgApacheLuceneSearchQuery:", "GroupingSearch", NULL, 0x2, NULL, NULL },
    { "searchWithOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchQuery:withInt:withInt:", "search", "Lorg.apache.lucene.search.grouping.TopGroups;", 0x1, "Ljava.io.IOException;", "<T:Ljava/lang/Object;>(Lorg/apache/lucene/search/IndexSearcher;Lorg/apache/lucene/search/Query;II)Lorg/apache/lucene/search/grouping/TopGroups<TT;>;" },
    { "groupByFieldOrFunctionWithOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchQuery:withInt:withInt:", "groupByFieldOrFunction", "Lorg.apache.lucene.search.grouping.TopGroups;", 0x4, "Ljava.io.IOException;", NULL },
    { "groupByDocBlockWithOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchQuery:withInt:withInt:", "groupByDocBlock", "Lorg.apache.lucene.search.grouping.TopGroups;", 0x4, "Ljava.io.IOException;", NULL },
    { "setCachingInMBWithDouble:withBoolean:", "setCachingInMB", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setCachingWithInt:withBoolean:", "setCaching", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "disableCaching", NULL, "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setGroupSortWithOrgApacheLuceneSearchSort:", "setGroupSort", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setSortWithinGroupWithOrgApacheLuceneSearchSort:", "setSortWithinGroup", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setGroupDocsOffsetWithInt:", "setGroupDocsOffset", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setGroupDocsLimitWithInt:", "setGroupDocsLimit", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setFillSortFieldsWithBoolean:", "setFillSortFields", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setIncludeScoresWithBoolean:", "setIncludeScores", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setIncludeMaxScoreWithBoolean:", "setIncludeMaxScore", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "setAllGroupsWithBoolean:", "setAllGroups", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "getAllMatchingGroups", NULL, "Ljava.util.Collection;", 0x1, NULL, "<T:Ljava/lang/Object;>()Ljava/util/Collection<TT;>;" },
    { "setAllGroupHeadsWithBoolean:", "setAllGroupHeads", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
    { "getAllGroupHeads", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, NULL, NULL },
    { "setInitialSizeWithInt:", "setInitialSize", "Lorg.apache.lucene.search.grouping.GroupingSearch;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "groupField_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "groupFunction_", NULL, 0x12, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "valueSourceContext_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<**>;", .constantValue.asLong = 0 },
    { "groupEndDocs_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "groupSort_", NULL, 0x2, "Lorg.apache.lucene.search.Sort;", NULL, NULL, .constantValue.asLong = 0 },
    { "sortWithinGroup_", NULL, 0x2, "Lorg.apache.lucene.search.Sort;", NULL, NULL, .constantValue.asLong = 0 },
    { "groupDocsOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "groupDocsLimit_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "fillSortFields_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "includeScores_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "includeMaxScore_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxCacheRAMMB_", NULL, 0x2, "Ljava.lang.Double;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDocsToCache_", NULL, 0x2, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "cacheScores_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "allGroups_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "allGroupHeads_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "initialSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "matchingGroups_", NULL, 0x2, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<*>;", .constantValue.asLong = 0 },
    { "matchingGroupHeads_", NULL, 0x2, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingGroupingSearch = { 2, "GroupingSearch", "org.apache.lucene.search.grouping", NULL, 0x1, 22, methods, 19, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchGroupingGroupingSearch;
}

@end

void OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(OrgApacheLuceneSearchGroupingGroupingSearch *self, NSString *groupField) {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(self, groupField, nil, nil, nil);
}

OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(NSString *groupField) {
  OrgApacheLuceneSearchGroupingGroupingSearch *self = [OrgApacheLuceneSearchGroupingGroupingSearch alloc];
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(self, groupField);
  return self;
}

void OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneSearchGroupingGroupingSearch *self, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext) {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(self, nil, groupFunction, valueSourceContext, nil);
}

OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext) {
  OrgApacheLuceneSearchGroupingGroupingSearch *self = [OrgApacheLuceneSearchGroupingGroupingSearch alloc];
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(self, groupFunction, valueSourceContext);
  return self;
}

void OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGroupingGroupingSearch *self, OrgApacheLuceneSearchQuery *groupEndDocs) {
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(self, nil, nil, nil, groupEndDocs);
}

OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *groupEndDocs) {
  OrgApacheLuceneSearchGroupingGroupingSearch *self = [OrgApacheLuceneSearchGroupingGroupingSearch alloc];
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(self, groupEndDocs);
  return self;
}

void OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGroupingGroupingSearch *self, NSString *groupField, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext, OrgApacheLuceneSearchQuery *groupEndDocs) {
  NSObject_init(self);
  JreStrongAssign(&self->groupSort_, JreLoadStatic(OrgApacheLuceneSearchSort, RELEVANCE_));
  self->groupDocsLimit_ = 1;
  self->includeScores_ = YES;
  self->includeMaxScore_ = YES;
  self->initialSize_ = 128;
  JreStrongAssign(&self->groupField_, groupField);
  JreStrongAssign(&self->groupFunction_, groupFunction);
  JreStrongAssign(&self->valueSourceContext_, valueSourceContext);
  JreStrongAssign(&self->groupEndDocs_, groupEndDocs);
}

OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(NSString *groupField, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext, OrgApacheLuceneSearchQuery *groupEndDocs) {
  OrgApacheLuceneSearchGroupingGroupingSearch *self = [OrgApacheLuceneSearchGroupingGroupingSearch alloc];
  OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_withOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withOrgApacheLuceneSearchQuery_(self, groupField, groupFunction, valueSourceContext, groupEndDocs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingGroupingSearch)
