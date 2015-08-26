//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/UserInputQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_

#define OrgApacheLuceneQueryparserXmlQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneQueryparserClassicQueryParser;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)parser;

- (instancetype)initWithNSString:(NSString *)defaultField
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

#pragma mark Protected

- (OrgApacheLuceneQueryparserClassicQueryParser *)createQueryParserWithNSString:(NSString *)fieldName
                                            withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *self, OrgApacheLuceneQueryparserClassicQueryParser *parser);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserClassicQueryParser *parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *self, NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_INCLUDE_ALL")
