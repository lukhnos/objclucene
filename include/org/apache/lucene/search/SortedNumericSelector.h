//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortedNumericSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector")
#ifdef RESTRICT_OrgApacheLuceneSearchSortedNumericSelector
#define INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSortedNumericSelector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSortedNumericSelector_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedNumericSelector))
#define OrgApacheLuceneSearchSortedNumericSelector_

@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneSearchSortField_Type;
@class OrgApacheLuceneSearchSortedNumericSelector_Type;

/*!
 @brief Selects a value from the document's list to use as the representative value
 <p>
  This provides a NumericDocValues view over the SortedNumeric, for use with sorting,
  expressions, function queries, etc.
 */
@interface OrgApacheLuceneSearchSortedNumericSelector : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Wraps a multi-valued SortedNumericDocValues as a single-valued view, using the specified selector 
  and numericType.
 */
+ (OrgApacheLuceneIndexNumericDocValues *)wrapWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sortedNumeric
                                         withOrgApacheLuceneSearchSortedNumericSelector_Type:(OrgApacheLuceneSearchSortedNumericSelector_Type *)selector
                                                     withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)numericType;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSelector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedNumericSelector_init(OrgApacheLuceneSearchSortedNumericSelector *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector *new_OrgApacheLuceneSearchSortedNumericSelector_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector *create_OrgApacheLuceneSearchSortedNumericSelector_init(void);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_Type_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneIndexSortedNumericDocValues *sortedNumeric, OrgApacheLuceneSearchSortedNumericSelector_Type *selector, OrgApacheLuceneSearchSortField_Type *numericType);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedNumericSelector)

#endif

#if !defined (OrgApacheLuceneSearchSortedNumericSelector_Type_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedNumericSelector_Type))
#define OrgApacheLuceneSearchSortedNumericSelector_Type_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSortedNumericSelector_Type_Enum) {
  OrgApacheLuceneSearchSortedNumericSelector_Type_Enum_MIN = 0,
  OrgApacheLuceneSearchSortedNumericSelector_Type_Enum_MAX = 1,
};

/*!
 @brief Type of selection to perform.
 */
@interface OrgApacheLuceneSearchSortedNumericSelector_Type : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneSearchSortedNumericSelector_Type *MIN NS_SWIFT_NAME(MIN);
@property (readonly, class, nonnull) OrgApacheLuceneSearchSortedNumericSelector_Type *MAX NS_SWIFT_NAME(MAX);
#pragma mark Public

+ (OrgApacheLuceneSearchSortedNumericSelector_Type *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneSearchSortedNumericSelector_Type_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSelector_Type)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_Type *OrgApacheLuceneSearchSortedNumericSelector_Type_values_[];

/*!
 @brief Selects the minimum value in the set
 */
inline OrgApacheLuceneSearchSortedNumericSelector_Type *OrgApacheLuceneSearchSortedNumericSelector_Type_get_MIN(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedNumericSelector_Type, MIN)

/*!
 @brief Selects the maximum value in the set
 */
inline OrgApacheLuceneSearchSortedNumericSelector_Type *OrgApacheLuceneSearchSortedNumericSelector_Type_get_MAX(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedNumericSelector_Type, MAX)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSortedNumericSelector_Type_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_Type *OrgApacheLuceneSearchSortedNumericSelector_Type_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_Type *OrgApacheLuceneSearchSortedNumericSelector_Type_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedNumericSelector_Type)

#endif

#if !defined (OrgApacheLuceneSearchSortedNumericSelector_MinValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedNumericSelector_MinValue))
#define OrgApacheLuceneSearchSortedNumericSelector_MinValue_

#define RESTRICT_OrgApacheLuceneIndexNumericDocValues 1
#define INCLUDE_OrgApacheLuceneIndexNumericDocValues 1
#include "org/apache/lucene/index/NumericDocValues.h"

@class OrgApacheLuceneIndexSortedNumericDocValues;

/*!
 @brief Wraps a SortedNumericDocValues and returns the first value (min)
 */
@interface OrgApacheLuceneSearchSortedNumericSelector_MinValue : OrgApacheLuceneIndexNumericDocValues {
 @public
  OrgApacheLuceneIndexSortedNumericDocValues *in_;
}

#pragma mark Public

- (jlong)getWithInt:(jint)docID;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSelector_MinValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedNumericSelector_MinValue, in_, OrgApacheLuceneIndexSortedNumericDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedNumericSelector_MinValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneSearchSortedNumericSelector_MinValue *self, OrgApacheLuceneIndexSortedNumericDocValues *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_MinValue *new_OrgApacheLuceneSearchSortedNumericSelector_MinValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_MinValue *create_OrgApacheLuceneSearchSortedNumericSelector_MinValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedNumericSelector_MinValue)

#endif

#if !defined (OrgApacheLuceneSearchSortedNumericSelector_MaxValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedNumericSelector_MaxValue))
#define OrgApacheLuceneSearchSortedNumericSelector_MaxValue_

#define RESTRICT_OrgApacheLuceneIndexNumericDocValues 1
#define INCLUDE_OrgApacheLuceneIndexNumericDocValues 1
#include "org/apache/lucene/index/NumericDocValues.h"

@class OrgApacheLuceneIndexSortedNumericDocValues;

/*!
 @brief Wraps a SortedNumericDocValues and returns the last value (max)
 */
@interface OrgApacheLuceneSearchSortedNumericSelector_MaxValue : OrgApacheLuceneIndexNumericDocValues {
 @public
  OrgApacheLuceneIndexSortedNumericDocValues *in_;
}

#pragma mark Public

- (jlong)getWithInt:(jint)docID;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedNumericSelector_MaxValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedNumericSelector_MaxValue, in_, OrgApacheLuceneIndexSortedNumericDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedNumericSelector_MaxValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneSearchSortedNumericSelector_MaxValue *self, OrgApacheLuceneIndexSortedNumericDocValues *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_MaxValue *new_OrgApacheLuceneSearchSortedNumericSelector_MaxValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedNumericSelector_MaxValue *create_OrgApacheLuceneSearchSortedNumericSelector_MaxValue_initWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedNumericSelector_MaxValue)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortedNumericSelector")
