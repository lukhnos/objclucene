//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenCountAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer))
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

/*!
 @brief This Analyzer limits the number of tokens while indexing.
 It is
 a replacement for the maximum field length setting inside <code>org.apache.lucene.index.IndexWriter</code>.
 - seealso: LimitTokenCountFilter
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer : OrgApacheLuceneAnalysisAnalyzerWrapper

#pragma mark Public

/*!
 @brief Build an analyzer that limits the maximum number of tokens per field.
 This analyzer will not consume any tokens beyond the maxTokenCount limit
 - seealso: #LimitTokenCountAnalyzer(Analyzer,int,boolean)
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                                                withInt:(jint)maxTokenCount;

/*!
 @brief Build an analyzer that limits the maximum number of tokens per field.
 @param delegate the analyzer to wrap
 @param maxTokenCount max number of tokens to produce
 @param consumeAllTokens whether all tokens from the delegate should be consumed even if maxTokenCount is reached.
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                                                withInt:(jint)maxTokenCount
                                            withBoolean:(jboolean)consumeAllTokens;

- (NSString *)description;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint maxTokenCount, jboolean consumeAllTokens);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountAnalyzer")
