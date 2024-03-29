//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LMDirichletSimilarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity))
#define OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesLMSimilarity 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesLMSimilarity 1
#include "org/apache/lucene/search/similarities/LMSimilarity.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;
@protocol JavaUtilList;
@protocol OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel;

/*!
 @brief Bayesian smoothing using Dirichlet priors.From Chengxiang Zhai and John
  Lafferty. 2001.
 A study of smoothing methods for language models applied to
  Ad Hoc information retrieval. In Proceedings of the 24th annual international
  ACM SIGIR conference on Research and development in information retrieval
  (SIGIR '01). ACM, New York, NY, USA, 334-342. 
 <p>
  The formula as defined the paper assigns a negative score to documents that
  contain the term, but with fewer occurrences than predicted by the collection
  language model. The Lucene implementation returns <code>0</code> for such
  documents. 
 </p>
 */
@interface OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity : OrgApacheLuceneSearchSimilaritiesLMSimilarity

#pragma mark Public

/*!
 @brief Instantiates the similarity with the default &mu; value of 2000.
 */
- (instancetype __nonnull)init;

/*!
 @brief Instantiates the similarity with the default &mu; value of 2000.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel;

/*!
 @brief Instantiates the similarity with the provided &mu; parameter.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel
                                                                                      withFloat:(jfloat)mu;

/*!
 @brief Instantiates the similarity with the provided &mu; parameter.
 */
- (instancetype __nonnull)initWithFloat:(jfloat)mu;

/*!
 @brief Returns the &mu; parameter.
 */
- (jfloat)getMu;

- (NSString *)getName;

#pragma mark Protected

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, jfloat mu);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(jfloat mu) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(jfloat mu);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity")
