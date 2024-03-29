//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/EnglishAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnEnglishAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnEnglishAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisEnEnglishAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisEnEnglishAnalyzer))
#define OrgApacheLuceneAnalysisEnEnglishAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for English.
 */
@interface OrgApacheLuceneAnalysisEnEnglishAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words: <code>getDefaultStopSet</code>.
 */
- (instancetype __nonnull)init;

/*!
 @brief Builds an analyzer with the given stop words.
 @param stopwords a stopword set
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Builds an analyzer with the given stop words.If a non-empty stem exclusion set is
  provided this analyzer will add a <code>SetKeywordMarkerFilter</code> before
  stemming.
 @param stopwords a stopword set
 @param stemExclusionSet a set of terms not to be stemmed
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                              withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

/*!
 @brief Returns an unmodifiable instance of the default stop words set.
 @return default stop words set.
 */
+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

/*!
 @brief Creates a 
 <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
  which tokenizes all the text in the provided <code>Reader</code>.
 @return A
          <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
          built from an <code>StandardTokenizer</code> filtered with
          <code>StandardFilter</code>, <code>EnglishPossessiveFilter</code>, 
          <code>LowerCaseFilter</code>, <code>StopFilter</code>
          , <code>SetKeywordMarkerFilter</code> if a stem exclusion set is
          provided and <code>PorterStemFilter</code>.
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnEnglishAnalyzer)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisEnEnglishAnalyzer_getDefaultStopSet(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishAnalyzer_init(OrgApacheLuceneAnalysisEnEnglishAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *new_OrgApacheLuceneAnalysisEnEnglishAnalyzer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *create_OrgApacheLuceneAnalysisEnEnglishAnalyzer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisEnEnglishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *new_OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *create_OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisEnEnglishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *new_OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishAnalyzer *create_OrgApacheLuceneAnalysisEnEnglishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnEnglishAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishAnalyzer")
