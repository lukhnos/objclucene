//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisIdIndonesianAnalyzer_RESTRICT
#define OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisIdIndonesianAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_) && (OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE_ALL || OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE)
#define _OrgApacheLuceneAnalysisIdIndonesianAnalyzer_

#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

@interface OrgApacheLuceneAnalysisIdIndonesianAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisIdIndonesianAnalyzer)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DEFAULT_STOPWORD_FILE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianAnalyzer, DEFAULT_STOPWORD_FILE_, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisIdIndonesianAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisIdIndonesianAnalyzer_INCLUDE_ALL")
