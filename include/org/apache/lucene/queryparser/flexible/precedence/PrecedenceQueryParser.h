//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/PrecedenceQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser

#if !defined (OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser || defined(INCLUDE_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser))
#define OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser 1
#include "org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.h"

@class OrgApacheLuceneAnalysisAnalyzer;

/*!
 @brief <p>
 This query parser works exactly as the standard query parser ( <code>StandardQueryParser</code> ), 
 except that it respect the boolean precedence, so &lt;a AND b OR c AND d&gt; is parsed to &lt;(+a +b) (+c +d)&gt;
 instead of &lt;+a +b +c +d&gt;.
 </p>
 <p>
 EXPERT: This class extends <code>StandardQueryParser</code>, but uses <code>PrecedenceQueryNodeProcessorPipeline</code>
 instead of <code>StandardQueryNodeProcessorPipeline</code> to process the query tree.
 </p>
 - seealso: StandardQueryParser
 */
@interface OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser : OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser

#pragma mark Public

/*!
 - seealso: StandardQueryParser#StandardQueryParser()
 */
- (instancetype)init;

/*!
 - seealso: StandardQueryParser#StandardQueryParser(Analyzer)
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *create_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init();

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *create_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser")
