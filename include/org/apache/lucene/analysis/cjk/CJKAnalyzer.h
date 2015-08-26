//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCjkCJKAnalyzer_RESTRICT
#define OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCjkCJKAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCjkCJKAnalyzer_) && (OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE_ALL || OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE)
#define _OrgApacheLuceneAnalysisCjkCJKAnalyzer_

#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

@interface OrgApacheLuceneAnalysisCjkCJKAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKAnalyzer)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKAnalyzer_DEFAULT_STOPWORD_FILE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKAnalyzer, DEFAULT_STOPWORD_FILE_, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCjkCJKAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKAnalyzer_init(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCjkCJKAnalyzer_INCLUDE_ALL")
