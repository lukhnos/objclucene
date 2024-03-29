//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LambdaTTF.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaTTF")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambdaTTF
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaTTF 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaTTF 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambdaTTF

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesLambdaTTF_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaTTF || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesLambdaTTF))
#define OrgApacheLuceneSearchSimilaritiesLambdaTTF_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesLambda 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesLambda 1
#include "org/apache/lucene/search/similarities/Lambda.h"

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

/*!
 @brief Computes lambda as <code>totalTermFreq+1 / numberOfDocuments+1</code>.
 */
@interface OrgApacheLuceneSearchSimilaritiesLambdaTTF : OrgApacheLuceneSearchSimilaritiesLambda

#pragma mark Public

/*!
 @brief Sole constructor: parameter-free
 */
- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

- (jfloat)lambdaWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesLambdaTTF)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLambdaTTF_init(OrgApacheLuceneSearchSimilaritiesLambdaTTF *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLambdaTTF *new_OrgApacheLuceneSearchSimilaritiesLambdaTTF_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLambdaTTF *create_OrgApacheLuceneSearchSimilaritiesLambdaTTF_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesLambdaTTF)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaTTF")
