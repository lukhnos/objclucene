//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ScoreCachingWrappingScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchScoreCachingWrappingScorer_RESTRICT
#define OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchScoreCachingWrappingScorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchScoreCachingWrappingScorer_) && (OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE_ALL || OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE)
#define _OrgApacheLuceneSearchScoreCachingWrappingScorer_

#define OrgApacheLuceneSearchFilterScorer_RESTRICT 1
#define OrgApacheLuceneSearchFilterScorer_INCLUDE 1
#include "org/apache/lucene/search/FilterScorer.h"

@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchScoreCachingWrappingScorer : OrgApacheLuceneSearchFilterScorer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoreCachingWrappingScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScoreCachingWrappingScorer *self, OrgApacheLuceneSearchScorer *scorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreCachingWrappingScorer *new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *scorer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoreCachingWrappingScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchScoreCachingWrappingScorer_INCLUDE_ALL")
