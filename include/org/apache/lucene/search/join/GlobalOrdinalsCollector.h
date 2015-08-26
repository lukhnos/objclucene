//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/GlobalOrdinalsCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_RESTRICT
#define OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_) && (OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL || OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE)
#define _OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_

#define OrgApacheLuceneSearchCollector_RESTRICT 1
#define OrgApacheLuceneSearchCollector_INCLUDE 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@class OrgApacheLuceneUtilLongBitSet;
@protocol OrgApacheLuceneSearchLeafCollector;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsCollector : NSObject < OrgApacheLuceneSearchCollector > {
 @public
  NSString *field_;
  OrgApacheLuceneUtilLongBitSet *collectedOrds_;
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap_;
}

#pragma mark Public

- (OrgApacheLuceneUtilLongBitSet *)getCollectorOrdinals;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)needsScores;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector, collectedOrds_, OrgApacheLuceneUtilLongBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector, ordinalMap_, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *new_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector)

#endif

#if !defined (_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector_) && (OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL || OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector_INCLUDE)
#define _OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector_

#define OrgApacheLuceneSearchLeafCollector_RESTRICT 1
#define OrgApacheLuceneSearchLeafCollector_INCLUDE 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsCollector;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneUtilLongValues;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector : NSObject < OrgApacheLuceneSearchLeafCollector >

#pragma mark Public

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *)outer$
                                 withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)docTermOrds
                                       withOrgApacheLuceneUtilLongValues:(OrgApacheLuceneUtilLongValues *)segmentOrdToGlobalOrdLookup;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector *self, OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector *new_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_OrdinalMapCollector)

#endif

#if !defined (_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector_) && (OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL || OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector_INCLUDE)
#define _OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector_

#define OrgApacheLuceneSearchLeafCollector_RESTRICT 1
#define OrgApacheLuceneSearchLeafCollector_INCLUDE 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsCollector;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector : NSObject < OrgApacheLuceneSearchLeafCollector >

#pragma mark Public

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *)outer$
                                 withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)docTermOrds;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector_withOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector *self, OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector *new_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsCollector_withOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_SegmentOrdinalCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_INCLUDE_ALL")
