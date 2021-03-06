//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/TimeZone.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/document/DateTools.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryParserHelper.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/StandardSyntaxParser.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"
#include "org/apache/lucene/search/FuzzyQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@$", @"<StandardQueryParser config=\"", [self getQueryConfigHandler], @"\"/>");
}

- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                     withNSString:(NSString *)defaultField {
  return (OrgApacheLuceneSearchQuery *) cast_chk([super parseWithNSString:query withNSString:defaultField], [OrgApacheLuceneSearchQuery class]);
}

- (OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator *)getDefaultOperator {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DEFAULT_OPERATOR)];
}

- (void)setDefaultOperatorWithOrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator:(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator *)operator_ {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DEFAULT_OPERATOR) withId:operator_];
}

- (void)setLowercaseExpandedTermsWithBoolean:(jboolean)lowercaseExpandedTerms {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, LOWERCASE_EXPANDED_TERMS) withId:JavaLangBoolean_valueOfWithBoolean_(lowercaseExpandedTerms)];
}

- (jboolean)getLowercaseExpandedTerms {
  JavaLangBoolean *lowercaseExpandedTerms = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, LOWERCASE_EXPANDED_TERMS)];
  if (lowercaseExpandedTerms == nil) {
    return true;
  }
  else {
    return [lowercaseExpandedTerms booleanValue];
  }
}

- (void)setAllowLeadingWildcardWithBoolean:(jboolean)allowLeadingWildcard {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ALLOW_LEADING_WILDCARD) withId:JavaLangBoolean_valueOfWithBoolean_(allowLeadingWildcard)];
}

- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enabled {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ENABLE_POSITION_INCREMENTS) withId:JavaLangBoolean_valueOfWithBoolean_(enabled)];
}

- (jboolean)getEnablePositionIncrements {
  JavaLangBoolean *enablePositionsIncrements = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ENABLE_POSITION_INCREMENTS)];
  if (enablePositionsIncrements == nil) {
    return false;
  }
  else {
    return [enablePositionsIncrements booleanValue];
  }
}

- (void)setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_TERM_REWRITE_METHOD) withId:method];
}

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getMultiTermRewriteMethod {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_TERM_REWRITE_METHOD)];
}

- (void)setMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields {
  if (fields == nil) {
    fields = [IOSObjectArray arrayWithLength:0 type:JavaLangCharSequence_class_()];
  }
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_FIELDS) withId:fields];
}

- (void)getMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_FIELDS)];
}

- (void)setFuzzyPrefixLengthWithInt:(jint)fuzzyPrefixLength {
  OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config = [self getQueryConfigHandler];
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *fuzzyConfig = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk(config)) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG)];
  if (fuzzyConfig == nil) {
    fuzzyConfig = create_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init();
    [config setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG) withId:fuzzyConfig];
  }
  [fuzzyConfig setPrefixLengthWithInt:fuzzyPrefixLength];
}

- (void)setNumericConfigMapWithJavaUtilMap:(id<JavaUtilMap>)numericConfigMap {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, NUMERIC_CONFIG_MAP) withId:numericConfigMap];
}

- (id<JavaUtilMap>)getNumericConfigMap {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, NUMERIC_CONFIG_MAP)];
}

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, LOCALE) withId:locale];
}

- (JavaUtilLocale *)getLocale {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, LOCALE)];
}

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, TIMEZONE) withId:timeZone];
}

- (JavaUtilTimeZone *)getTimeZone {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, TIMEZONE)];
}

- (void)setDefaultPhraseSlopWithInt:(jint)defaultPhraseSlop {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, PHRASE_SLOP) withId:JavaLangInteger_valueOfWithInt_(defaultPhraseSlop)];
}

- (void)setPhraseSlopWithInt:(jint)defaultPhraseSlop {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, PHRASE_SLOP) withId:JavaLangInteger_valueOfWithInt_(defaultPhraseSlop)];
}

- (void)setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ANALYZER) withId:analyzer];
}

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ANALYZER)];
}

- (jboolean)getAllowLeadingWildcard {
  JavaLangBoolean *allowLeadingWildcard = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, ALLOW_LEADING_WILDCARD)];
  if (allowLeadingWildcard == nil) {
    return false;
  }
  else {
    return [allowLeadingWildcard booleanValue];
  }
}

- (jfloat)getFuzzyMinSim {
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *fuzzyConfig = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG)];
  if (fuzzyConfig == nil) {
    return OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity;
  }
  else {
    return [fuzzyConfig getMinSimilarity];
  }
}

- (jint)getFuzzyPrefixLength {
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *fuzzyConfig = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG)];
  if (fuzzyConfig == nil) {
    return OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength;
  }
  else {
    return [fuzzyConfig getPrefixLength];
  }
}

- (jint)getPhraseSlop {
  JavaLangInteger *phraseSlop = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, PHRASE_SLOP)];
  if (phraseSlop == nil) {
    return 0;
  }
  else {
    return [phraseSlop intValue];
  }
}

- (void)setFuzzyMinSimWithFloat:(jfloat)fuzzyMinSim {
  OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config = [self getQueryConfigHandler];
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *fuzzyConfig = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk(config)) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG)];
  if (fuzzyConfig == nil) {
    fuzzyConfig = create_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init();
    [config setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG) withId:fuzzyConfig];
  }
  [fuzzyConfig setMinSimilarityWithFloat:fuzzyMinSim];
}

- (void)setFieldsBoostWithJavaUtilMap:(id<JavaUtilMap>)boosts {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FIELD_BOOST_MAP) withId:boosts];
}

- (id<JavaUtilMap>)getFieldsBoost {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FIELD_BOOST_MAP)];
}

- (void)setDateResolutionWithOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)dateResolution {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DATE_RESOLUTION) withId:dateResolution];
}

- (OrgApacheLuceneDocumentDateTools_Resolution *)getDateResolution {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DATE_RESOLUTION)];
}

- (void)setDateResolutionWithJavaUtilMap:(id<JavaUtilMap>)dateRes {
  [self setDateResolutionMapWithJavaUtilMap:dateRes];
}

- (id<JavaUtilMap>)getDateResolutionMap {
  return [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FIELD_DATE_RESOLUTION_MAP)];
}

- (void)setDateResolutionMapWithJavaUtilMap:(id<JavaUtilMap>)dateRes {
  [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FIELD_DATE_RESOLUTION_MAP) withId:dateRes];
}

+ (IOSObjectArray *)__annotations_setDefaultPhraseSlopWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setDateResolutionWithJavaUtilMap_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StandardQueryParser", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "StandardQueryParser", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithNSString:withNSString:", "parse", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "getDefaultOperator", NULL, "Lorg.apache.lucene.queryparser.flexible.standard.config.StandardQueryConfigHandler$Operator;", 0x1, NULL, NULL },
    { "setDefaultOperatorWithOrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator:", "setDefaultOperator", "V", 0x1, NULL, NULL },
    { "setLowercaseExpandedTermsWithBoolean:", "setLowercaseExpandedTerms", "V", 0x1, NULL, NULL },
    { "getLowercaseExpandedTerms", NULL, "Z", 0x1, NULL, NULL },
    { "setAllowLeadingWildcardWithBoolean:", "setAllowLeadingWildcard", "V", 0x1, NULL, NULL },
    { "setEnablePositionIncrementsWithBoolean:", "setEnablePositionIncrements", "V", 0x1, NULL, NULL },
    { "getEnablePositionIncrements", NULL, "Z", 0x1, NULL, NULL },
    { "setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:", "setMultiTermRewriteMethod", "V", 0x1, NULL, NULL },
    { "getMultiTermRewriteMethod", NULL, "Lorg.apache.lucene.search.MultiTermQuery$RewriteMethod;", 0x1, NULL, NULL },
    { "setMultiFieldsWithJavaLangCharSequenceArray:", "setMultiFields", "V", 0x1, NULL, NULL },
    { "getMultiFieldsWithJavaLangCharSequenceArray:", "getMultiFields", "V", 0x1, NULL, NULL },
    { "setFuzzyPrefixLengthWithInt:", "setFuzzyPrefixLength", "V", 0x1, NULL, NULL },
    { "setNumericConfigMapWithJavaUtilMap:", "setNumericConfigMap", "V", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/queryparser/flexible/standard/config/NumericConfig;>;)V" },
    { "getNumericConfigMap", NULL, "Ljava.util.Map;", 0x1, NULL, "()Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/queryparser/flexible/standard/config/NumericConfig;>;" },
    { "setLocaleWithJavaUtilLocale:", "setLocale", "V", 0x1, NULL, NULL },
    { "getLocale", NULL, "Ljava.util.Locale;", 0x1, NULL, NULL },
    { "setTimeZoneWithJavaUtilTimeZone:", "setTimeZone", "V", 0x1, NULL, NULL },
    { "getTimeZone", NULL, "Ljava.util.TimeZone;", 0x1, NULL, NULL },
    { "setDefaultPhraseSlopWithInt:", "setDefaultPhraseSlop", "V", 0x1, NULL, NULL },
    { "setPhraseSlopWithInt:", "setPhraseSlop", "V", 0x1, NULL, NULL },
    { "setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:", "setAnalyzer", "V", 0x1, NULL, NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x1, NULL, NULL },
    { "getAllowLeadingWildcard", NULL, "Z", 0x1, NULL, NULL },
    { "getFuzzyMinSim", NULL, "F", 0x1, NULL, NULL },
    { "getFuzzyPrefixLength", NULL, "I", 0x1, NULL, NULL },
    { "getPhraseSlop", NULL, "I", 0x1, NULL, NULL },
    { "setFuzzyMinSimWithFloat:", "setFuzzyMinSim", "V", 0x1, NULL, NULL },
    { "setFieldsBoostWithJavaUtilMap:", "setFieldsBoost", "V", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;)V" },
    { "getFieldsBoost", NULL, "Ljava.util.Map;", 0x1, NULL, "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;" },
    { "setDateResolutionWithOrgApacheLuceneDocumentDateTools_Resolution:", "setDateResolution", "V", 0x1, NULL, NULL },
    { "getDateResolution", NULL, "Lorg.apache.lucene.document.DateTools$Resolution;", 0x1, NULL, NULL },
    { "setDateResolutionWithJavaUtilMap:", "setDateResolution", "V", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/CharSequence;Lorg/apache/lucene/document/DateTools$Resolution;>;)V" },
    { "getDateResolutionMap", NULL, "Ljava.util.Map;", 0x1, NULL, "()Ljava/util/Map<Ljava/lang/CharSequence;Lorg/apache/lucene/document/DateTools$Resolution;>;" },
    { "setDateResolutionMapWithJavaUtilMap:", "setDateResolutionMap", "V", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/CharSequence;Lorg/apache/lucene/document/DateTools$Resolution;>;)V" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser = { 2, "StandardQueryParser", "org.apache.lucene.queryparser.flexible.standard", NULL, 0x1, 38, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(self, create_OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_init(), create_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParser_init(), create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(nil), create_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder_init());
  [self setEnablePositionIncrementsWithBoolean:true];
}

OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser, init)
}

OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *create_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser, init)
}

void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(self);
  [self setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:analyzer];
}

OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *create_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser)
