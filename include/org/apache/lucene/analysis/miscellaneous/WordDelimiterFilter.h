//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/WordDelimiterFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_) && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_LOWER 1
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_UPPER 2
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_DIGIT 4
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SUBWORD_DELIM 8
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHA 3
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHANUM 7
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_GENERATE_WORD_PARTS 1
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_GENERATE_NUMBER_PARTS 2
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_WORDS 4
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_NUMBERS 8
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_ALL 16
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_PRESERVE_ORIGINAL 32
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SPLIT_ON_CASE_CHANGE 64
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SPLIT_ON_NUMERICS 128
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_STEM_ENGLISH_POSSESSIVE 256

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, LOWER, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, UPPER, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, DIGIT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, SUBWORD_DELIM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, ALPHA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, ALPHANUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, GENERATE_WORD_PARTS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, GENERATE_NUMBER_PARTS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, CATENATE_WORDS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, CATENATE_NUMBERS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, CATENATE_ALL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, PRESERVE_ORIGINAL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, SPLIT_ON_CASE_CHANGE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, SPLIT_ON_NUMERICS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, STEM_ENGLISH_POSSESSIVE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_init(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL")
