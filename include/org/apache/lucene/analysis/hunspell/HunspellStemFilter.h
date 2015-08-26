//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hunspell/HunspellStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisHunspellHunspellStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisHunspellHunspellStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisHunspellHunspellStemFilter_) && (OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisHunspellHunspellStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisHunspellDictionary;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneAnalysisHunspellHunspellStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
             withOrgApacheLuceneAnalysisHunspellDictionary:(OrgApacheLuceneAnalysisHunspellDictionary *)dictionary;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
             withOrgApacheLuceneAnalysisHunspellDictionary:(OrgApacheLuceneAnalysisHunspellDictionary *)dictionary
                                               withBoolean:(jboolean)dedup;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
             withOrgApacheLuceneAnalysisHunspellDictionary:(OrgApacheLuceneAnalysisHunspellDictionary *)dictionary
                                               withBoolean:(jboolean)dedup
                                               withBoolean:(jboolean)longestOnly;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisHunspellHunspellStemFilter)

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneAnalysisHunspellHunspellStemFilter_lengthComparator_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilter, lengthComparator_, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_(OrgApacheLuceneAnalysisHunspellHunspellStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellHunspellStemFilter *new_OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_withBoolean_(OrgApacheLuceneAnalysisHunspellHunspellStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary, jboolean dedup);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellHunspellStemFilter *new_OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary, jboolean dedup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_withBoolean_withBoolean_(OrgApacheLuceneAnalysisHunspellHunspellStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary, jboolean dedup, jboolean longestOnly);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellHunspellStemFilter *new_OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_withBoolean_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisHunspellDictionary *dictionary, jboolean dedup, jboolean longestOnly) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHunspellHunspellStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisHunspellHunspellStemFilter_INCLUDE_ALL")
