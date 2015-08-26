//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_) && (OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_

#define OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/QueryParserHelper.h"

#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.h"

@class IOSObjectArray;
@class JavaUtilLocale;
@class JavaUtilTimeZone;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentDateTools_ResolutionEnum;
@class OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser : OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper < OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (jboolean)getAllowLeadingWildcard;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

- (OrgApacheLuceneDocumentDateTools_ResolutionEnum *)getDateResolution;

- (id<JavaUtilMap>)getDateResolutionMap;

- (OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum *)getDefaultOperator;

- (jboolean)getEnablePositionIncrements;

- (id<JavaUtilMap>)getFieldsBoost;

- (jfloat)getFuzzyMinSim;

- (jint)getFuzzyPrefixLength;

- (JavaUtilLocale *)getLocale;

- (jboolean)getLowercaseExpandedTerms;

- (void)getMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields;

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getMultiTermRewriteMethod;

- (id<JavaUtilMap>)getNumericConfigMap;

- (jint)getPhraseSlop;

- (JavaUtilTimeZone *)getTimeZone;

- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                     withNSString:(NSString *)defaultField;

- (void)setAllowLeadingWildcardWithBoolean:(jboolean)allowLeadingWildcard;

- (void)setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)setDateResolutionWithJavaUtilMap:(id<JavaUtilMap>)dateRes;

- (void)setDateResolutionWithOrgApacheLuceneDocumentDateTools_ResolutionEnum:(OrgApacheLuceneDocumentDateTools_ResolutionEnum *)dateResolution;

- (void)setDateResolutionMapWithJavaUtilMap:(id<JavaUtilMap>)dateRes;

- (void)setDefaultOperatorWithOrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum:(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum *)operator_;

- (void)setDefaultPhraseSlopWithInt:(jint)defaultPhraseSlop;

- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enabled;

- (void)setFieldsBoostWithJavaUtilMap:(id<JavaUtilMap>)boosts;

- (void)setFuzzyMinSimWithFloat:(jfloat)fuzzyMinSim;

- (void)setFuzzyPrefixLengthWithInt:(jint)fuzzyPrefixLength;

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)setLowercaseExpandedTermsWithBoolean:(jboolean)lowercaseExpandedTerms;

- (void)setMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields;

- (void)setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (void)setNumericConfigMapWithJavaUtilMap:(id<JavaUtilMap>)numericConfigMap;

- (void)setPhraseSlopWithInt:(jint)defaultPhraseSlop;

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE_ALL")
