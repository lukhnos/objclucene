//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/UAX29URLEmailAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_RESTRICT
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_) && (OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE_ALL || OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE)
#define _OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_

#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

#define OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_DEFAULT_MAX_TOKEN_LENGTH 255

@interface OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)stopwords;

- (jint)getMaxTokenLength;

- (void)setMaxTokenLengthWithInt:(jint)length;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer, DEFAULT_MAX_TOKEN_LENGTH, jint)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_STOP_WORDS_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer, STOP_WORDS_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_init(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *self, JavaIoReader *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisStandardUAX29URLEmailAnalyzer_INCLUDE_ALL")