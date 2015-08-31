//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/NormalizationH1.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesNormalizationH1_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesNormalizationH1_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesNormalizationH1_) && (OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesNormalizationH1_

#define OrgApacheLuceneSearchSimilaritiesNormalization_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesNormalization_INCLUDE 1
#include "org/apache/lucene/search/similarities/Normalization.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesNormalizationH1 : OrgApacheLuceneSearchSimilaritiesNormalization

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)c;

- (jfloat)getC;

- (jfloat)tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                   withFloat:(jfloat)tf
                                                   withFloat:(jfloat)len;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesNormalizationH1)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesNormalizationH1_initWithFloat_(OrgApacheLuceneSearchSimilaritiesNormalizationH1 *self, jfloat c);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesNormalizationH1 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH1_initWithFloat_(jfloat c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesNormalizationH1_init(OrgApacheLuceneSearchSimilaritiesNormalizationH1 *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesNormalizationH1 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesNormalizationH1)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesNormalizationH1_INCLUDE_ALL")