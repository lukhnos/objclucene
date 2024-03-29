//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/AfterEffect.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesAfterEffect
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesAfterEffect
#ifdef INCLUDE_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesAfterEffect 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesAfterEffect_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesAfterEffect))
#define OrgApacheLuceneSearchSimilaritiesAfterEffect_

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

/*!
 @brief This class acts as the base class for the implementations of the <em>first
  normalization of the informative content</em> in the DFR framework.This
  component is also called the <em>after effect</em> and is defined by the
  formula <em>Inf<sub>2</sub> = 1 - Prob<sub>2</sub></em>, where 
 <em>Prob<sub>2</sub></em> measures the <em>information gain</em>.
 - seealso: DFRSimilarity
 */
@interface OrgApacheLuceneSearchSimilaritiesAfterEffect : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

/*!
 @brief Returns an explanation for the score.
 */
- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn;

/*!
 @brief Returns the aftereffect score.
 */
- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

/*!
 @brief Subclasses must override this method to return the code of the
  after effect formula.Refer to the original paper for the list.
 */
- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesAfterEffect)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesAfterEffect_init(OrgApacheLuceneSearchSimilaritiesAfterEffect *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesAfterEffect)

#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect))
#define OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

/*!
 @brief Implementation used when there is no aftereffect.
 */
@interface OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect : OrgApacheLuceneSearchSimilaritiesAfterEffect

#pragma mark Public

/*!
 @brief Sole constructor: parameter-free
 */
- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *new_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *create_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesAfterEffect")
