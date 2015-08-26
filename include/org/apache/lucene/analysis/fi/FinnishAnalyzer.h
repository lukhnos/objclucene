//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fi/FinnishAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisFiFinnishAnalyzer_RESTRICT
#define OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisFiFinnishAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisFiFinnishAnalyzer_) && (OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE_ALL || OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE)
#define _OrgApacheLuceneAnalysisFiFinnishAnalyzer_

#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

@interface OrgApacheLuceneAnalysisFiFinnishAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFiFinnishAnalyzer)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisFiFinnishAnalyzer_DEFAULT_STOPWORD_FILE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisFiFinnishAnalyzer, DEFAULT_STOPWORD_FILE_, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFiFinnishAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFiFinnishAnalyzer_init(OrgApacheLuceneAnalysisFiFinnishAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishAnalyzer *new_OrgApacheLuceneAnalysisFiFinnishAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFiFinnishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisFiFinnishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishAnalyzer *new_OrgApacheLuceneAnalysisFiFinnishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFiFinnishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisFiFinnishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFiFinnishAnalyzer *new_OrgApacheLuceneAnalysisFiFinnishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFiFinnishAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisFiFinnishAnalyzer_INCLUDE_ALL")
