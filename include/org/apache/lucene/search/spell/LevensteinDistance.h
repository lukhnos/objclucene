//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/LevensteinDistance.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellLevensteinDistance")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellLevensteinDistance
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellLevensteinDistance 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellLevensteinDistance 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellLevensteinDistance

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpellLevensteinDistance_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellLevensteinDistance || defined(INCLUDE_OrgApacheLuceneSearchSpellLevensteinDistance))
#define OrgApacheLuceneSearchSpellLevensteinDistance_

#define RESTRICT_OrgApacheLuceneSearchSpellStringDistance 1
#define INCLUDE_OrgApacheLuceneSearchSpellStringDistance 1
#include "org/apache/lucene/search/spell/StringDistance.h"

/*!
 @brief Levenstein edit distance class.
 */
@interface OrgApacheLuceneSearchSpellLevensteinDistance : NSObject < OrgApacheLuceneSearchSpellStringDistance >

#pragma mark Public

/*!
 @brief Optimized to run a bit faster than the static getDistance().
 In one benchmark times were 5.3sec using ctr vs 8.5sec w/ static method, thus 37% faster.
 */
- (instancetype __nonnull)init;

- (jboolean)isEqual:(id)obj;

- (jfloat)getDistanceWithNSString:(NSString *)target
                     withNSString:(NSString *)other;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellLevensteinDistance)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellLevensteinDistance_init(OrgApacheLuceneSearchSpellLevensteinDistance *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellLevensteinDistance *new_OrgApacheLuceneSearchSpellLevensteinDistance_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellLevensteinDistance *create_OrgApacheLuceneSearchSpellLevensteinDistance_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellLevensteinDistance)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellLevensteinDistance")
