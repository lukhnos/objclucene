//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/Lambda.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambda")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambda
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambda 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambda 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambda

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesLambda_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambda || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesLambda))
#define OrgApacheLuceneSearchSimilaritiesLambda_

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

/*!
 @brief The <em>lambda (&lambda;<sub>w</sub>)</em> parameter in information-based
  models.
 - seealso: IBSimilarity
 */
@interface OrgApacheLuceneSearchSimilaritiesLambda : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

/*!
 @brief Explains the lambda parameter.
 */
- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

/*!
 @brief Computes the lambda parameter.
 */
- (jfloat)lambdaWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

/*!
 @brief Subclasses must override this method to return the code of the lambda
  formula.Since the original paper is not very clear on this matter, and
  also uses the DFR naming scheme incorrectly, the codes here were chosen
  arbitrarily.
 */
- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesLambda)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLambda_init(OrgApacheLuceneSearchSimilaritiesLambda *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesLambda)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambda")
