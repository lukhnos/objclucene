//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/PrecedenceQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_RESTRICT
#define OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_) && (OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_

#define OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.h"

@class OrgApacheLuceneAnalysisAnalyzer;

@interface OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser : OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_INCLUDE_ALL")
