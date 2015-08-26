//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DFRSimilarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesDFRSimilarity_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesDFRSimilarity_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesDFRSimilarity_) && (OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesDFRSimilarity_

#define OrgApacheLuceneSearchSimilaritiesSimilarityBase_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesSimilarityBase_INCLUDE 1
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@class OrgApacheLuceneSearchSimilaritiesAfterEffect;
@class OrgApacheLuceneSearchSimilaritiesBasicModel;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;
@class OrgApacheLuceneSearchSimilaritiesNormalization;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchSimilaritiesDFRSimilarity : OrgApacheLuceneSearchSimilaritiesSimilarityBase {
 @public
  OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel_;
  OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect_;
  OrgApacheLuceneSearchSimilaritiesNormalization *normalization_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesBasicModel:(OrgApacheLuceneSearchSimilaritiesBasicModel *)basicModel
                   withOrgApacheLuceneSearchSimilaritiesAfterEffect:(OrgApacheLuceneSearchSimilaritiesAfterEffect *)afterEffect
                 withOrgApacheLuceneSearchSimilaritiesNormalization:(OrgApacheLuceneSearchSimilaritiesNormalization *)normalization;

- (OrgApacheLuceneSearchSimilaritiesAfterEffect *)getAfterEffect;

- (OrgApacheLuceneSearchSimilaritiesBasicModel *)getBasicModel;

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

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesDFRSimilarity)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, basicModel_, OrgApacheLuceneSearchSimilaritiesBasicModel *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, afterEffect_, OrgApacheLuceneSearchSimilaritiesAfterEffect *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity, normalization_, OrgApacheLuceneSearchSimilaritiesNormalization *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesDFRSimilarity *self, OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesDFRSimilarity *new_OrgApacheLuceneSearchSimilaritiesDFRSimilarity_initWithOrgApacheLuceneSearchSimilaritiesBasicModel_withOrgApacheLuceneSearchSimilaritiesAfterEffect_withOrgApacheLuceneSearchSimilaritiesNormalization_(OrgApacheLuceneSearchSimilaritiesBasicModel *basicModel, OrgApacheLuceneSearchSimilaritiesAfterEffect *afterEffect, OrgApacheLuceneSearchSimilaritiesNormalization *normalization) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesDFRSimilarity)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesDFRSimilarity_INCLUDE_ALL")
