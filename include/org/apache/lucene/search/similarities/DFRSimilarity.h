//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DFRSimilarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDFRSimilarity")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesDFRSimilarity
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDFRSimilarity 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDFRSimilarity 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesDFRSimilarity

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesDFRSimilarity_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDFRSimilarity || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesDFRSimilarity))
#define OrgApacheLuceneSearchSimilaritiesDFRSimilarity_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesSimilarityBase 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesSimilarityBase 1
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@class OrgApacheLuceneSearchSimilaritiesAfterEffect;
@class OrgApacheLuceneSearchSimilaritiesBasicModel;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;
@class OrgApacheLuceneSearchSimilaritiesNormalization;
@protocol JavaUtilList;

/*!
 @brief Implements the <em>divergence from randomness (DFR)</em> framework
  introduced in Gianni Amati and Cornelis Joost Van Rijsbergen.2002.
 Probabilistic models of information retrieval based on measuring the
  divergence from randomness. ACM Trans. Inf. Syst. 20, 4 (October 2002),
  357-389. 
 <p>The DFR scoring formula is composed of three separate components: the 
 <em>basic model</em>, the <em>aftereffect</em> and an additional 
 <em>normalization</em> component, represented by the classes 
 <code>BasicModel</code>, <code>AfterEffect</code> and <code>Normalization</code>,
  respectively. The names of these classes were chosen to match the names of
  their counterparts in the Terrier IR engine.</p>
  <p>To construct a DFRSimilarity, you must specify the implementations for 
  all three components of DFR: 
 <ol>
     <li><code>BasicModel</code>: Basic model of information content:
         <ul>
            <li><code>BasicModelBE</code>: Limiting form of Bose-Einstein
            <li><code>BasicModelG</code>: Geometric approximation of Bose-Einstein
            <li><code>BasicModelP</code>: Poisson approximation of the Binomial
            <li><code>BasicModelD</code>: Divergence approximation of the Binomial 
            <li><code>BasicModelIn</code>: Inverse document frequency
            <li><code>BasicModelIne</code>: Inverse expected document
                frequency [mixture of Poisson and IDF]           
 <li><code>BasicModelIF</code>: Inverse term frequency
                [approximation of I(ne)]        
 </ul>
     <li><code>AfterEffect</code>: First normalization of information
         gain:        
 <ul>
            <li><code>AfterEffectL</code>: Laplace's law of succession
            <li><code>AfterEffectB</code>: Ratio of two Bernoulli processes
            <li><code>NoAfterEffect</code>: no first normalization
         </ul>
     <li><code>Normalization</code>: Second (length) normalization:
         <ul>
            <li><code>NormalizationH1</code>: Uniform distribution of term
                frequency           
 <li><code>NormalizationH2</code>: term frequency density inversely
                related to length           
 <li><code>NormalizationH3</code>: term frequency normalization
                provided by Dirichlet prior           
 <li><code>NormalizationZ</code>: term frequency normalization provided
                 by a Zipfian relation           
 <li><code>NoNormalization</code>: no second normalization
         </ul>
  </ol>
  <p>Note that <em>qtf</em>, the multiplicity of term-occurrence in the query,
  is not handled by this implementation.</p>
 - seealso: BasicModel
 - seealso: AfterEffect
 - seealso: Normalization
 */
@interface OrgApacheLuceneSearchSimilaritiesDFRSimilarity : OrgApacheLuceneSearchSimilaritiesSimilarityBase {
 @public
  /*!
   @brief The basic model for information content.
   */
  OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel_;
  /*!
   @brief The first normalization of the information content.
   */
  OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect_;
  /*!
   @brief The term frequency normalization.
   */
  OrgApacheLuceneSearchSimilaritiesNormalization *normalization_;
}

#pragma mark Public

/*!
 @brief Creates DFRSimilarity from the three components.
 <p>
  Note that <code>null</code> values are not allowed:
  if you want no normalization or after-effect, instead pass  
 <code>NoNormalization</code> or <code>NoAfterEffect</code> respectively.
 @param basicModel Basic model of information content
 @param afterEffect First normalization of information gain
 @param normalization Second (length) normalization
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSimilaritiesBasicModel:(OrgApacheLuceneSearchSimilaritiesBasicModel *)basicModel
                             withOrgApacheLuceneSearchSimilaritiesAfterEffect:(OrgApacheLuceneSearchSimilaritiesAfterEffect *)afterEffect
                           withOrgApacheLuceneSearchSimilaritiesNormalization:(OrgApacheLuceneSearchSimilaritiesNormalization *)normalization;

/*!
 @brief Returns the first normalization
 */
- (OrgApacheLuceneSearchSimilaritiesAfterEffect *)getAfterEffect;

/*!
 @brief Returns the basic model of information content
 */
- (OrgApacheLuceneSearchSimilaritiesBasicModel *)getBasicModel;

/*!
 @brief Returns the second normalization
 */
- (OrgApacheLuceneSearchSimilaritiesNormalization *)getNormalization;

- (NSString *)description;

#pragma mark Protected

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesDFRSimilarity)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, basicModel_, OrgApacheLuceneSearchSimilaritiesBasicModel *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, afterEffect_, OrgApacheLuceneSearchSimilaritiesAfterEffect *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, normalization_, OrgApacheLuceneSearchSimilaritiesNormalization *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesDFRSimilarity *self, OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesDFRSimilarity *new_OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesDFRSimilarity *create_OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDFRSimilarity")
