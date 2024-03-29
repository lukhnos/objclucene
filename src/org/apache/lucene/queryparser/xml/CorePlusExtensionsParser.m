//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/CorePlusExtensionsParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/xml/CoreParser.h"
#include "org/apache/lucene/queryparser/xml/CorePlusExtensionsParser.h"
#include "org/apache/lucene/queryparser/xml/FilterBuilderFactory.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilderFactory.h"
#include "org/apache/lucene/queryparser/xml/builders/BooleanFilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/BoostingQueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/DuplicateFilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/FuzzyLikeThisQueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/LikeThisQueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/TermsFilterBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/CorePlusExtensionsParser must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser ()

- (instancetype)initWithNSString:(NSString *)defaultField
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
withOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)parser;

@end

__attribute__((unused)) static void OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *self, NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser);

__attribute__((unused)) static OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *new_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *create_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser);

@implementation OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
       withOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)parser {
  OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(self, analyzer, parser);
  return self;
}

- (instancetype)initWithNSString:(NSString *)defaultField
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, defaultField, analyzer);
  return self;
}

- (instancetype)initWithNSString:(NSString *)defaultField
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
withOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)parser {
  OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(self, defaultField, analyzer, parser);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneQueryparserClassicQueryParser:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[2].selector = @selector(initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneQueryparserClassicQueryParser:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneQueryparserClassicQueryParser;", "LNSString;LOrgApacheLuceneAnalysisAnalyzer;", "LNSString;LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneQueryparserClassicQueryParser;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser = { "CorePlusExtensionsParser", "org.apache.lucene.queryparser.xml", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser;
}

@end

void OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(self, nil, analyzer, parser);
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *new_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_, analyzer, parser)
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *create_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_, analyzer, parser)
}

void OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *self, NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(self, defaultField, analyzer, nil);
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *new_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, defaultField, analyzer)
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *create_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, defaultField, analyzer)
}

void OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *self, NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  OrgApacheLuceneQueryparserXmlCoreParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(self, defaultField, analyzer, parser);
  [((OrgApacheLuceneQueryparserXmlFilterBuilderFactory *) nil_chk(self->filterFactory_)) addBuilderWithNSString:@"TermsFilter" withOrgApacheLuceneQueryparserXmlFilterBuilder:create_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(analyzer)];
  [((OrgApacheLuceneQueryparserXmlFilterBuilderFactory *) nil_chk(self->filterFactory_)) addBuilderWithNSString:@"BooleanFilter" withOrgApacheLuceneQueryparserXmlFilterBuilder:create_OrgApacheLuceneQueryparserXmlBuildersBooleanFilterBuilder_initWithOrgApacheLuceneQueryparserXmlFilterBuilder_(self->filterFactory_)];
  [((OrgApacheLuceneQueryparserXmlFilterBuilderFactory *) nil_chk(self->filterFactory_)) addBuilderWithNSString:@"DuplicateFilter" withOrgApacheLuceneQueryparserXmlFilterBuilder:create_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init()];
  IOSObjectArray *fields = [IOSObjectArray arrayWithObjects:(id[]){ @"contents" } count:1 type:NSString_class_()];
  [((OrgApacheLuceneQueryparserXmlQueryBuilderFactory *) nil_chk(self->queryFactory_)) addBuilderWithNSString:@"LikeThisQuery" withOrgApacheLuceneQueryparserXmlQueryBuilder:create_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(analyzer, fields)];
  [((OrgApacheLuceneQueryparserXmlQueryBuilderFactory *) nil_chk(self->queryFactory_)) addBuilderWithNSString:@"BoostingQuery" withOrgApacheLuceneQueryparserXmlQueryBuilder:create_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(self->queryFactory_)];
  [((OrgApacheLuceneQueryparserXmlQueryBuilderFactory *) nil_chk(self->queryFactory_)) addBuilderWithNSString:@"FuzzyLikeThisQuery" withOrgApacheLuceneQueryparserXmlQueryBuilder:create_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(analyzer)];
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *new_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_, defaultField, analyzer, parser)
}

OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser *create_OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneQueryparserClassicQueryParser *parser) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserClassicQueryParser_, defaultField, analyzer, parser)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlCorePlusExtensionsParser)
