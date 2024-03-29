//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ScoreMode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinScoreMode")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinScoreMode
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinScoreMode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinScoreMode 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinScoreMode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinScoreMode_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinScoreMode || defined(INCLUDE_OrgApacheLuceneSearchJoinScoreMode))
#define OrgApacheLuceneSearchJoinScoreMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchJoinScoreMode_Enum) {
  OrgApacheLuceneSearchJoinScoreMode_Enum_None = 0,
  OrgApacheLuceneSearchJoinScoreMode_Enum_Avg = 1,
  OrgApacheLuceneSearchJoinScoreMode_Enum_Max = 2,
  OrgApacheLuceneSearchJoinScoreMode_Enum_Total = 3,
  OrgApacheLuceneSearchJoinScoreMode_Enum_Min = 4,
};

/*!
 @brief How to aggregate multiple child hit scores into a single parent score.
 */
@interface OrgApacheLuceneSearchJoinScoreMode : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneSearchJoinScoreMode *None NS_SWIFT_NAME(None);
@property (readonly, class, nonnull) OrgApacheLuceneSearchJoinScoreMode *Avg NS_SWIFT_NAME(Avg);
@property (readonly, class, nonnull) OrgApacheLuceneSearchJoinScoreMode *Max NS_SWIFT_NAME(Max);
@property (readonly, class, nonnull) OrgApacheLuceneSearchJoinScoreMode *Total NS_SWIFT_NAME(Total);
@property (readonly, class, nonnull) OrgApacheLuceneSearchJoinScoreMode *Min NS_SWIFT_NAME(Min);
#pragma mark Public

+ (OrgApacheLuceneSearchJoinScoreMode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneSearchJoinScoreMode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchJoinScoreMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_values_[];

/*!
 @brief Do no scoring.
 */
inline OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_get_None(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchJoinScoreMode, None)

/*!
 @brief Parent hit's score is the average of all child scores.
 */
inline OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_get_Avg(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchJoinScoreMode, Avg)

/*!
 @brief Parent hit's score is the max of all child scores.
 */
inline OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_get_Max(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchJoinScoreMode, Max)

/*!
 @brief Parent hit's score is the sum of all child scores.
 */
inline OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_get_Total(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchJoinScoreMode, Total)

/*!
 @brief Parent hit's score is the min of all child scores.
 */
inline OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_get_Min(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchJoinScoreMode, Min)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchJoinScoreMode_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinScoreMode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinScoreMode")
