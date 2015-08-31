//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.java
//

#include "J2ObjC_source.h"
#include "java/util/Locale.h"
#include "java/util/TimeZone.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/document/DateTools.h"
#include "org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.h"
#include "org/apache/lucene/search/MultiTermQuery.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration : NSObject

@end

@implementation OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setLowercaseExpandedTermsWithBoolean:", "setLowercaseExpandedTerms", "V", 0x401, NULL, NULL },
    { "getLowercaseExpandedTerms", NULL, "Z", 0x401, NULL, NULL },
    { "setAllowLeadingWildcardWithBoolean:", "setAllowLeadingWildcard", "V", 0x401, NULL, NULL },
    { "setEnablePositionIncrementsWithBoolean:", "setEnablePositionIncrements", "V", 0x401, NULL, NULL },
    { "getEnablePositionIncrements", NULL, "Z", 0x401, NULL, NULL },
    { "setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:", "setMultiTermRewriteMethod", "V", 0x401, NULL, NULL },
    { "getMultiTermRewriteMethod", NULL, "Lorg.apache.lucene.search.MultiTermQuery$RewriteMethod;", 0x401, NULL, NULL },
    { "setFuzzyPrefixLengthWithInt:", "setFuzzyPrefixLength", "V", 0x401, NULL, NULL },
    { "setLocaleWithJavaUtilLocale:", "setLocale", "V", 0x401, NULL, NULL },
    { "getLocale", NULL, "Ljava.util.Locale;", 0x401, NULL, NULL },
    { "setTimeZoneWithJavaUtilTimeZone:", "setTimeZone", "V", 0x401, NULL, NULL },
    { "getTimeZone", NULL, "Ljava.util.TimeZone;", 0x401, NULL, NULL },
    { "setPhraseSlopWithInt:", "setPhraseSlop", "V", 0x401, NULL, NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x401, NULL, NULL },
    { "getAllowLeadingWildcard", NULL, "Z", 0x401, NULL, NULL },
    { "getFuzzyMinSim", NULL, "F", 0x401, NULL, NULL },
    { "getFuzzyPrefixLength", NULL, "I", 0x401, NULL, NULL },
    { "getPhraseSlop", NULL, "I", 0x401, NULL, NULL },
    { "setFuzzyMinSimWithFloat:", "setFuzzyMinSim", "V", 0x401, NULL, NULL },
    { "setDateResolutionWithOrgApacheLuceneDocumentDateTools_ResolutionEnum:", "setDateResolution", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration = { 2, "CommonQueryParserConfiguration", "org.apache.lucene.queryparser.flexible.standard", NULL, 0x609, 20, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration)