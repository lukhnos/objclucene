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

@class IOSByteArray;
@class OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

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

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter : OrgApacheLuceneAnalysisTokenFilter {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *protWords_;
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter *sorter_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                             withByteArray:(IOSByteArray *)charTypeTable
                                                   withInt:(jint)configurationFlags
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)protWords;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)configurationFlags
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)protWords;

- (jboolean)incrementToken;

- (void)reset;

#pragma mark Package-Private

+ (jboolean)isAlphaWithInt:(jint)type;

+ (jboolean)isDigitWithInt:(jint)type;

+ (jboolean)isSubwordDelimWithInt:(jint)type;

+ (jboolean)isUpperWithInt:(jint)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, protWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter, sorter_, OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter *)

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

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, IOSByteArray *charTypeTable, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, IOSByteArray *charTypeTable, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isDigitWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isSubwordDelimWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isUpperWithInt_(jint type);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter)

#endif

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter_) && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter_

#define OrgApacheLuceneUtilInPlaceMergeSorter_RESTRICT 1
#define OrgApacheLuceneUtilInPlaceMergeSorter_INCLUDE 1
#include "org/apache/lucene/util/InPlaceMergeSorter.h"

@class OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter;

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter : OrgApacheLuceneUtilInPlaceMergeSorter

#pragma mark Protected

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter:(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter_initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter *self, OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter_initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_OffsetSorter)

#endif

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation_) && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation_

@class IOSCharArray;
@class JavaLangStringBuilder;
@class OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter;

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation : NSObject {
 @public
  JavaLangStringBuilder *buffer_;
  jint startOffset_;
  jint endOffset_;
  jint type_;
  jint subwordCount_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter:(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *)outer$;

- (void)appendWithCharArray:(IOSCharArray *)text
                    withInt:(jint)offset
                    withInt:(jint)length;

- (void)clear;

- (jboolean)isEmpty;

- (void)write;

- (void)writeAndClear;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation, buffer_, JavaLangStringBuilder *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation_initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation *self, OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation_initWithOrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_WordDelimiterConcatenation)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_INCLUDE_ALL")
