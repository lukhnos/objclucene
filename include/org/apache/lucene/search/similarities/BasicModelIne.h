//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelIne.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBasicModelIne_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBasicModelIne_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBasicModelIne_) && (OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBasicModelIne_

#define OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE 1
#include "org/apache/lucene/search/similarities/BasicModel.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesBasicModelIne : OrgApacheLuceneSearchSimilaritiesBasicModel

#pragma mark Public

- (instancetype)init;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicModelIne)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicModelIne_init(OrgApacheLuceneSearchSimilaritiesBasicModelIne *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicModelIne *new_OrgApacheLuceneSearchSimilaritiesBasicModelIne_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicModelIne)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBasicModelIne_INCLUDE_ALL")