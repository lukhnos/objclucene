//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestMode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestMode")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellSuggestMode
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestMode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestMode 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellSuggestMode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpellSuggestMode_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestMode || defined(INCLUDE_OrgApacheLuceneSearchSpellSuggestMode))
#define OrgApacheLuceneSearchSpellSuggestMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSpellSuggestMode_Enum) {
  OrgApacheLuceneSearchSpellSuggestMode_Enum_SUGGEST_WHEN_NOT_IN_INDEX = 0,
  OrgApacheLuceneSearchSpellSuggestMode_Enum_SUGGEST_MORE_POPULAR = 1,
  OrgApacheLuceneSearchSpellSuggestMode_Enum_SUGGEST_ALWAYS = 2,
};

/*!
 @brief Set of strategies for suggesting related terms
 */
@interface OrgApacheLuceneSearchSpellSuggestMode : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneSearchSpellSuggestMode *SUGGEST_WHEN_NOT_IN_INDEX NS_SWIFT_NAME(SUGGEST_WHEN_NOT_IN_INDEX);
@property (readonly, class, nonnull) OrgApacheLuceneSearchSpellSuggestMode *SUGGEST_MORE_POPULAR NS_SWIFT_NAME(SUGGEST_MORE_POPULAR);
@property (readonly, class, nonnull) OrgApacheLuceneSearchSpellSuggestMode *SUGGEST_ALWAYS NS_SWIFT_NAME(SUGGEST_ALWAYS);
#pragma mark Public

+ (OrgApacheLuceneSearchSpellSuggestMode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneSearchSpellSuggestMode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_values_[];

/*!
 @brief Generate suggestions only for terms not in the index (default)
 */
inline OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_get_SUGGEST_WHEN_NOT_IN_INDEX(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_WHEN_NOT_IN_INDEX)

/*!
 @brief Return only suggested words that are as frequent or more frequent than the
  searched word
 */
inline OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_get_SUGGEST_MORE_POPULAR(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_MORE_POPULAR)

/*!
 @brief Always attempt to offer suggestions (however, other parameters may limit
  suggestions.For example, see 
 <code>DirectSpellChecker.setMaxQueryFrequency(float)</code> ).
 */
inline OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_get_SUGGEST_ALWAYS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_ALWAYS)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSpellSuggestMode_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestMode *OrgApacheLuceneSearchSpellSuggestMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestMode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestMode")
