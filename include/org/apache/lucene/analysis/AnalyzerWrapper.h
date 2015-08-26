//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/AnalyzerWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisAnalyzerWrapper_RESTRICT
#define OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisAnalyzerWrapper_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisAnalyzerWrapper_) && (OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE_ALL || OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE)
#define _OrgApacheLuceneAnalysisAnalyzerWrapper_

#define OrgApacheLuceneAnalysisAnalyzer_RESTRICT 1
#define OrgApacheLuceneAnalysisAnalyzer_INCLUDE 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

@interface OrgApacheLuceneAnalysisAnalyzerWrapper : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

- (jint)getOffsetGapWithNSString:(NSString *)fieldName;

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName;

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader OBJC_METHOD_FAMILY_NONE;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy;

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

- (JavaIoReader *)wrapReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisAnalyzerWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(OrgApacheLuceneAnalysisAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *reuseStrategy);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisAnalyzerWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisAnalyzerWrapper_INCLUDE_ALL")
