//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWordScoreComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordScoreComparator")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordScoreComparator
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordScoreComparator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordScoreComparator 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordScoreComparator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpellSuggestWordScoreComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordScoreComparator || defined(INCLUDE_OrgApacheLuceneSearchSpellSuggestWordScoreComparator))
#define OrgApacheLuceneSearchSpellSuggestWordScoreComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

@class OrgApacheLuceneSearchSpellSuggestWord;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToDoubleFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilFunctionToLongFunction;

/*!
 @brief Score first, then frequency
 */
@interface OrgApacheLuceneSearchSpellSuggestWordScoreComparator : NSObject < JavaUtilComparator >

#pragma mark Public

/*!
 @brief Creates a new comparator that will compare by <code>SuggestWord.score</code>,
  then by <code>SuggestWord.freq</code>, then by <code>SuggestWord.string</code>.
 */
- (instancetype __nonnull)init;

- (jint)compareWithId:(OrgApacheLuceneSearchSpellSuggestWord *)first
               withId:(OrgApacheLuceneSearchSpellSuggestWord *)second;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestWordScoreComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordScoreComparator_init(OrgApacheLuceneSearchSpellSuggestWordScoreComparator *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordScoreComparator *new_OrgApacheLuceneSearchSpellSuggestWordScoreComparator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordScoreComparator *create_OrgApacheLuceneSearchSpellSuggestWordScoreComparator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestWordScoreComparator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordScoreComparator")
