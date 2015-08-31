//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/PositiveScoresOnlyCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchPositiveScoresOnlyCollector_RESTRICT
#define OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchPositiveScoresOnlyCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchPositiveScoresOnlyCollector_) && (OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE_ALL || OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE)
#define _OrgApacheLuceneSearchPositiveScoresOnlyCollector_

#define OrgApacheLuceneSearchFilterCollector_RESTRICT 1
#define OrgApacheLuceneSearchFilterCollector_INCLUDE 1
#include "org/apache/lucene/search/FilterCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@protocol OrgApacheLuceneSearchCollector;
@protocol OrgApacheLuceneSearchLeafCollector;

@interface OrgApacheLuceneSearchPositiveScoresOnlyCollector : OrgApacheLuceneSearchFilterCollector

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)inArg;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPositiveScoresOnlyCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchPositiveScoresOnlyCollector *self, id<OrgApacheLuceneSearchCollector> inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchPositiveScoresOnlyCollector *new_OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(id<OrgApacheLuceneSearchCollector> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPositiveScoresOnlyCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchPositiveScoresOnlyCollector_INCLUDE_ALL")