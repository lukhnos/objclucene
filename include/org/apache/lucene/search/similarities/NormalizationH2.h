//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/NormalizationH2.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesNormalizationH2_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesNormalizationH2_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesNormalizationH2_) && (OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesNormalizationH2_

#define OrgApacheLuceneSearchSimilaritiesNormalization_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesNormalization_INCLUDE 1
#include "org/apache/lucene/search/similarities/Normalization.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesNormalizationH2 : OrgApacheLuceneSearchSimilaritiesNormalization

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)c;

- (jfloat)getC;

- (jfloat)tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                   withFloat:(jfloat)tf
                                                   withFloat:(jfloat)len;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesNormalizationH2)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(OrgApacheLuceneSearchSimilaritiesNormalizationH2 *self, jfloat c);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesNormalizationH2 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH2_initWithFloat_(jfloat c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesNormalizationH2_init(OrgApacheLuceneSearchSimilaritiesNormalizationH2 *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesNormalizationH2 *new_OrgApacheLuceneSearchSimilaritiesNormalizationH2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesNormalizationH2)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesNormalizationH2_INCLUDE_ALL")
