//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortedSetSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector")
#ifdef RESTRICT_OrgApacheLuceneSearchSortedSetSelector
#define INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSortedSetSelector

#if !defined (OrgApacheLuceneSearchSortedSetSelector_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector))
#define OrgApacheLuceneSearchSortedSetSelector_

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneSearchSortedSetSelector_Type;

/*!
 @brief Selects a value from the document's set to use as the representative value
 */
@interface OrgApacheLuceneSearchSortedSetSelector : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Wraps a multi-valued SortedSetDocValues as a single-valued view, using the specified selector
 */
+ (OrgApacheLuceneIndexSortedDocValues *)wrapWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)sortedSet
                                        withOrgApacheLuceneSearchSortedSetSelector_Type:(OrgApacheLuceneSearchSortedSetSelector_Type *)selector;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector)

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneSearchSortedSetSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchSortedSetSelector_Type_(OrgApacheLuceneIndexSortedSetDocValues *sortedSet, OrgApacheLuceneSearchSortedSetSelector_Type *selector);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSelector_init(OrgApacheLuceneSearchSortedSetSelector *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector *new_OrgApacheLuceneSearchSortedSetSelector_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector *create_OrgApacheLuceneSearchSortedSetSelector_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector)

#endif

#if !defined (OrgApacheLuceneSearchSortedSetSelector_Type_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector_Type))
#define OrgApacheLuceneSearchSortedSetSelector_Type_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSortedSetSelector_Type_Enum) {
  OrgApacheLuceneSearchSortedSetSelector_Type_Enum_MIN = 0,
  OrgApacheLuceneSearchSortedSetSelector_Type_Enum_MAX = 1,
  OrgApacheLuceneSearchSortedSetSelector_Type_Enum_MIDDLE_MIN = 2,
  OrgApacheLuceneSearchSortedSetSelector_Type_Enum_MIDDLE_MAX = 3,
};

/*!
 @brief Type of selection to perform.
 <p>
 Limitations:
 <ul>
 <li>Fields containing <code>Integer.MAX_VALUE</code> or more unique values
 are unsupported.
 <li>Selectors other than (<code>Type.MIN</code>) require 
 optional codec support. However several codecs provided by Lucene, 
 including the current default codec, support this.
 </ul>
 */
@interface OrgApacheLuceneSearchSortedSetSelector_Type : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneSearchSortedSetSelector_Type *)MIN;

+ (OrgApacheLuceneSearchSortedSetSelector_Type *)MAX;

+ (OrgApacheLuceneSearchSortedSetSelector_Type *)MIDDLE_MIN;

+ (OrgApacheLuceneSearchSortedSetSelector_Type *)MIDDLE_MAX;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneSearchSortedSetSelector_Type *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneSearchSortedSetSelector_Type_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector_Type)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_values_[];

/*!
 @brief Selects the minimum value in the set
 */
inline OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_get_MIN();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedSetSelector_Type, MIN)

/*!
 @brief Selects the maximum value in the set
 */
inline OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_get_MAX();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedSetSelector_Type, MAX)

/*!
 @brief Selects the middle value in the set.
 <p>
 If the set has an even number of values, the lower of the middle two is chosen.
 */
inline OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_get_MIDDLE_MIN();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedSetSelector_Type, MIDDLE_MIN)

/*!
 @brief Selects the middle value in the set.
 <p>
 If the set has an even number of values, the higher of the middle two is chosen
 */
inline OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_get_MIDDLE_MAX();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSortedSetSelector_Type, MIDDLE_MAX)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSortedSetSelector_Type_values();

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_Type *OrgApacheLuceneSearchSortedSetSelector_Type_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector_Type)

#endif

#if !defined (OrgApacheLuceneSearchSortedSetSelector_MinValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector_MinValue))
#define OrgApacheLuceneSearchSortedSetSelector_MinValue_

#define RESTRICT_OrgApacheLuceneIndexSortedDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedDocValues 1
#include "org/apache/lucene/index/SortedDocValues.h"

@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Wraps a SortedSetDocValues and returns the first ordinal (min)
 */
@interface OrgApacheLuceneSearchSortedSetSelector_MinValue : OrgApacheLuceneIndexSortedDocValues {
 @public
  OrgApacheLuceneIndexSortedSetDocValues *in_;
}

#pragma mark Public

- (jint)getOrdWithInt:(jint)docID;

- (jint)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

- (jint)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector_MinValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSelector_MinValue, in_, OrgApacheLuceneIndexSortedSetDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSelector_MinValue_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneSearchSortedSetSelector_MinValue *self, OrgApacheLuceneIndexSortedSetDocValues *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MinValue *new_OrgApacheLuceneSearchSortedSetSelector_MinValue_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MinValue *create_OrgApacheLuceneSearchSortedSetSelector_MinValue_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector_MinValue)

#endif

#if !defined (OrgApacheLuceneSearchSortedSetSelector_MaxValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector_MaxValue))
#define OrgApacheLuceneSearchSortedSetSelector_MaxValue_

#define RESTRICT_OrgApacheLuceneIndexSortedDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedDocValues 1
#include "org/apache/lucene/index/SortedDocValues.h"

@class OrgApacheLuceneIndexRandomAccessOrds;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Wraps a SortedSetDocValues and returns the last ordinal (max)
 */
@interface OrgApacheLuceneSearchSortedSetSelector_MaxValue : OrgApacheLuceneIndexSortedDocValues {
 @public
  OrgApacheLuceneIndexRandomAccessOrds *in_;
}

#pragma mark Public

- (jint)getOrdWithInt:(jint)docID;

- (jint)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

- (jint)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexRandomAccessOrds:(OrgApacheLuceneIndexRandomAccessOrds *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector_MaxValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSelector_MaxValue, in_, OrgApacheLuceneIndexRandomAccessOrds *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSelector_MaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneSearchSortedSetSelector_MaxValue *self, OrgApacheLuceneIndexRandomAccessOrds *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MaxValue *new_OrgApacheLuceneSearchSortedSetSelector_MaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MaxValue *create_OrgApacheLuceneSearchSortedSetSelector_MaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector_MaxValue)

#endif

#if !defined (OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue))
#define OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue_

#define RESTRICT_OrgApacheLuceneIndexSortedDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedDocValues 1
#include "org/apache/lucene/index/SortedDocValues.h"

@class OrgApacheLuceneIndexRandomAccessOrds;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Wraps a SortedSetDocValues and returns the middle ordinal (or min of the two)
 */
@interface OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue : OrgApacheLuceneIndexSortedDocValues {
 @public
  OrgApacheLuceneIndexRandomAccessOrds *in_;
}

#pragma mark Public

- (jint)getOrdWithInt:(jint)docID;

- (jint)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

- (jint)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexRandomAccessOrds:(OrgApacheLuceneIndexRandomAccessOrds *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue, in_, OrgApacheLuceneIndexRandomAccessOrds *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue *self, OrgApacheLuceneIndexRandomAccessOrds *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue *new_OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue *create_OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector_MiddleMinValue)

#endif

#if !defined (OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector || defined(INCLUDE_OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue))
#define OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue_

#define RESTRICT_OrgApacheLuceneIndexSortedDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedDocValues 1
#include "org/apache/lucene/index/SortedDocValues.h"

@class OrgApacheLuceneIndexRandomAccessOrds;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Wraps a SortedSetDocValues and returns the middle ordinal (or max of the two)
 */
@interface OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue : OrgApacheLuceneIndexSortedDocValues {
 @public
  OrgApacheLuceneIndexRandomAccessOrds *in_;
}

#pragma mark Public

- (jint)getOrdWithInt:(jint)docID;

- (jint)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

- (jint)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexRandomAccessOrds:(OrgApacheLuceneIndexRandomAccessOrds *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue, in_, OrgApacheLuceneIndexRandomAccessOrds *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue *self, OrgApacheLuceneIndexRandomAccessOrds *inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue *new_OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue *create_OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue_initWithOrgApacheLuceneIndexRandomAccessOrds_(OrgApacheLuceneIndexRandomAccessOrds *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSelector_MiddleMaxValue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortedSetSelector")
