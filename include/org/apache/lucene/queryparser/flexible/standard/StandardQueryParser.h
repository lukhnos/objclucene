//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser))
#define OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper 1
#include "org/apache/lucene/queryparser/flexible/core/QueryParserHelper.h"

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration 1
#include "org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.h"

@class IOSObjectArray;
@class JavaUtilLocale;
@class JavaUtilTimeZone;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentDateTools_Resolution;
@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@class OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser;
@protocol OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;

/*!
 @brief This class is a helper that enables users to easily use the Lucene query
  parser.
 <p>
  To construct a Query object from a query string, use the 
 <code>parse(String, String)</code> method: 
 <pre class="prettyprint">
  StandardQueryParser queryParserHelper = new StandardQueryParser();
  Query query = queryParserHelper.parse("a AND b", "defaultField"); 
 
@endcode
  <p>
  To change any configuration before parsing the query string do, for example: 
 <br>
  <pre class="prettyprint">
  // the query config handler returned by <code>StandardQueryParser</code> is a <code>StandardQueryConfigHandler</code>
  queryParserHelper.getQueryConfigHandler().setAnalyzer(new WhitespaceAnalyzer()); 
 
@endcode
  <p>
  The syntax for query strings is as follows (copied from the old QueryParser
  javadoc):
  A Query is a series of clauses. A clause may be prefixed by: 
 <ul>
  <li>a plus (<code>+</code>) or a minus (<code>-</code>) sign, indicating that
  the clause is required or prohibited respectively; or 
 <li>a term followed by a colon, indicating the field to be searched. This
  enables one to construct queries which search multiple fields. 
 </ul>
  
  A clause may be either: 
 <ul>
  <li>a term, indicating all the documents that contain this term; or 
 <li>a nested query, enclosed in parentheses. Note that this may be used with
  a <code>+</code>/<code>-</code> prefix to require any of a set of terms. 
 </ul>
  
  Thus, in BNF, the query grammar is:  
 @code

    Query  ::= ( Clause )*
    Clause ::= [&quot;+&quot;, &quot;-&quot;] [&lt;TERM&gt; &quot;:&quot;] ( &lt;TERM&gt; | &quot;(&quot; Query &quot;)&quot; ) 
  
@endcode
   
 <p>
  Examples of appropriately formatted queries can be found in the <a href="{@@docRoot}/org/apache/lucene/queryparser/classic/package-summary.html#package_description">
  query syntax documentation</a>.
  </p>
  <p>
  The text parser used by this helper is a <code>StandardSyntaxParser</code>.
  <p>
  The query node processor used by this helper is a 
 <code>StandardQueryNodeProcessorPipeline</code>.
  <p>
  The builder used by this helper is a <code>StandardQueryTreeBuilder</code>.
 - seealso: StandardQueryParser
 - seealso: StandardQueryConfigHandler
 - seealso: StandardSyntaxParser
 - seealso: StandardQueryNodeProcessorPipeline
 - seealso: StandardQueryTreeBuilder
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser : OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper < OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration >

#pragma mark Public

/*!
 @brief Constructs a <code>StandardQueryParser</code> object.
 */
- (instancetype __nonnull)init;

/*!
 @brief Constructs a <code>StandardQueryParser</code> object and sets an 
 <code>Analyzer</code> to it.The same as:  
 <pre class="prettyprint">
  StandardQueryParser qp = new StandardQueryParser();
  qp.getQueryConfigHandler().setAnalyzer(analyzer); 
 
@endcode
 @param analyzer the analyzer to be used by this query parser helper
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 - seealso: #setAllowLeadingWildcard(boolean)
 */
- (jboolean)getAllowLeadingWildcard;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

/*!
 @brief Returns the default <code>Resolution</code> used for certain field when
  no <code>Resolution</code> is defined for this field.
 @return the default <code>Resolution</code>
 */
- (OrgApacheLuceneDocumentDateTools_Resolution *)getDateResolution;

/*!
 @brief Returns the field to <code>Resolution</code> map used to normalize each date field.
 @return the field to <code>Resolution</code> map
 */
- (id<JavaUtilMap>)getDateResolutionMap;

/*!
 @brief Gets implicit operator setting, which will be either <code>Operator.AND</code>
  or <code>Operator.OR</code>.
 */
- (OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator *)getDefaultOperator;

/*!
 - seealso: #setEnablePositionIncrements(boolean)
 */
- (jboolean)getEnablePositionIncrements;

/*!
 @brief Returns the field to boost map used to set boost for each field.
 @return the field to boost map
 */
- (id<JavaUtilMap>)getFieldsBoost;

/*!
 @brief Get the minimal similarity for fuzzy queries.
 */
- (jfloat)getFuzzyMinSim;

/*!
 @brief Get the prefix length for fuzzy queries.
 @return Returns the fuzzyPrefixLength.
 */
- (jint)getFuzzyPrefixLength;

/*!
 @brief Returns current locale, allowing access by subclasses.
 */
- (JavaUtilLocale *)getLocale;

/*!
 - seealso: #setLowercaseExpandedTerms(boolean)
 */
- (jboolean)getLowercaseExpandedTerms;

/*!
 @brief Returns the fields used to expand the query when the field for a
  certain query is <code>null</code>
 @param fields the fields used to expand the query
 */
- (void)getMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields;

/*!
 - seealso: #setMultiTermRewriteMethod(org.apache.lucene.search.MultiTermQuery.RewriteMethod)
 */
- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getMultiTermRewriteMethod;

- (id<JavaUtilMap>)getNumericConfigMap;

/*!
 @brief Gets the default slop for phrases.
 */
- (jint)getPhraseSlop;

- (JavaUtilTimeZone *)getTimeZone;

/*!
 @brief Overrides <code>QueryParserHelper.parse(String, String)</code> so it casts the
  return object to <code>Query</code>.For more reference about this method, check 
 <code>QueryParserHelper.parse(String, String)</code>.
 @param query the query string
 @param defaultField the default field used by the text parser
 @return the object built from the query
 @throw QueryNodeException
 if something wrong happens along the three phases
 */
- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                     withNSString:(NSString *)defaultField;

/*!
 @brief Set to <code>true</code> to allow leading wildcard characters.
 <p>
  When set, <code>
 *</code> or <code>?</code> are allowed as the first character of a PrefixQuery and WildcardQuery. Note that this can produce
  very slow queries on big indexes. 
 <p>
  Default: false.
 */
- (void)setAllowLeadingWildcardWithBoolean:(jboolean)allowLeadingWildcard;

- (void)setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 @brief Sets the <code>Resolution</code> used for each field
 @param dateRes a collection that maps a field to its <code>Resolution</code>
 */
- (void)setDateResolutionWithJavaUtilMap:(id<JavaUtilMap>)dateRes;

/*!
 @brief Sets the default <code>Resolution</code> used for certain field when
  no <code>Resolution</code> is defined for this field.
 @param dateResolution the default <code>Resolution</code>
 */
- (void)setDateResolutionWithOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)dateResolution;

/*!
 @brief Sets the <code>Resolution</code> used for each field
 @param dateRes a collection that maps a field to its <code>Resolution</code>
 */
- (void)setDateResolutionMapWithJavaUtilMap:(id<JavaUtilMap>)dateRes;

/*!
 @brief Sets the boolean operator of the QueryParser.In default mode ( 
 <code>Operator.OR</code>) terms without any modifiers are considered optional:
  for example <code>capital of Hungary</code> is equal to 
 <code>capital OR of OR Hungary</code>.
 <br>
  In <code>Operator.AND</code> mode terms are considered to be in conjunction: the
  above mentioned query is parsed as <code>capital AND of AND Hungary</code>
 */
- (void)setDefaultOperatorWithOrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator:(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator *)operator_;

/*!
 @brief Sets the default slop for phrases.If zero, then exact phrase matches are
  required.
 Default value is zero.
 */
- (void)setDefaultPhraseSlopWithInt:(jint)defaultPhraseSlop;

/*!
 @brief Set to <code>true</code> to enable position increments in result query.
 <p>
  When set, result phrase and multi-phrase queries will be aware of position
  increments. Useful when e.g. a StopFilter increases the position increment
  of the token that follows an omitted token. 
 <p>
  Default: false.
 */
- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enabled;

/*!
 @brief Sets the boost used for each field.
 @param boosts a collection that maps a field to its boost
 */
- (void)setFieldsBoostWithJavaUtilMap:(id<JavaUtilMap>)boosts;

/*!
 @brief Set the minimum similarity for fuzzy queries.Default is defined on 
 <code>FuzzyQuery.defaultMinSimilarity</code>.
 */
- (void)setFuzzyMinSimWithFloat:(jfloat)fuzzyMinSim;

/*!
 @brief Set the prefix length for fuzzy queries.Default is 0.
 @param fuzzyPrefixLength The fuzzyPrefixLength to set.
 */
- (void)setFuzzyPrefixLengthWithInt:(jint)fuzzyPrefixLength;

/*!
 @brief Set locale used by date range parsing.
 */
- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Set to <code>true</code> to allow leading wildcard characters.
 <p>
  When set, <code>
 *</code> or <code>?</code> are allowed as the first character of a PrefixQuery and WildcardQuery. Note that this can produce
  very slow queries on big indexes. 
 <p>
  Default: false.
 */
- (void)setLowercaseExpandedTermsWithBoolean:(jboolean)lowercaseExpandedTerms;

/*!
 @brief Set the fields a query should be expanded to when the field is 
 <code>null</code>
 @param fields the fields used to expand the query
 */
- (void)setMultiFieldsWithJavaLangCharSequenceArray:(IOSObjectArray *)fields;

/*!
 @brief By default, it uses 
 <code>MultiTermQuery.CONSTANT_SCORE_REWRITE</code> when creating a
  prefix, wildcard and range queries.This implementation is generally
  preferable because it a) Runs faster b) Does not have the scarcity of terms
  unduly influence score c) avoids any <code>TooManyListenersException</code>
  exception.
 However, if your application really needs to use the
  old-fashioned boolean queries expansion rewriting and the above points are
  not relevant then use this change the rewrite method.
 */
- (void)setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (void)setNumericConfigMapWithJavaUtilMap:(id<JavaUtilMap>)numericConfigMap;

/*!
 @brief Sets the default slop for phrases.If zero, then exact phrase matches are
  required.
 Default value is zero.
 */
- (void)setPhraseSlopWithInt:(jint)defaultPhraseSlop;

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)arg0
                                    withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser:(id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>)arg1
                          withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)arg2
                                  withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *create_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *new_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser *create_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser")
