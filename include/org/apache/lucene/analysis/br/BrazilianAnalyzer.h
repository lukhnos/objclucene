//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/br/BrazilianAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisBrBrazilianAnalyzer_RESTRICT
#define OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisBrBrazilianAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisBrBrazilianAnalyzer_) && (OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE_ALL || OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE)
#define _OrgApacheLuceneAnalysisBrBrazilianAnalyzer_

#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

@interface OrgApacheLuceneAnalysisBrBrazilianAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisBrBrazilianAnalyzer)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisBrBrazilianAnalyzer_DEFAULT_STOPWORD_FILE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisBrBrazilianAnalyzer, DEFAULT_STOPWORD_FILE_, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisBrBrazilianAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisBrBrazilianAnalyzer_init(OrgApacheLuceneAnalysisBrBrazilianAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisBrBrazilianAnalyzer *new_OrgApacheLuceneAnalysisBrBrazilianAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisBrBrazilianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisBrBrazilianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisBrBrazilianAnalyzer *new_OrgApacheLuceneAnalysisBrBrazilianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisBrBrazilianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisBrBrazilianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisBrBrazilianAnalyzer *new_OrgApacheLuceneAnalysisBrBrazilianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisBrBrazilianAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisBrBrazilianAnalyzer_INCLUDE_ALL")
