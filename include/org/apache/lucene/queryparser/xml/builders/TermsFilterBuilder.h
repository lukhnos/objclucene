//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermsFilterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_

#define OrgApacheLuceneQueryparserXmlFilterBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlFilterBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_INCLUDE_ALL")