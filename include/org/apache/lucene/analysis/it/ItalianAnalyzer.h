//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/it/ItalianAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisItItalianAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisItItalianAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisItItalianAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisItItalianAnalyzer))
#define OrgApacheLuceneAnalysisItItalianAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for Italian.
 */
@interface OrgApacheLuceneAnalysisItItalianAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase
@property (readonly, copy, class) NSString *DEFAULT_STOPWORD_FILE NS_SWIFT_NAME(DEFAULT_STOPWORD_FILE);

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words: <code>DEFAULT_STOPWORD_FILE</code>.
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
          <code>StandardFilter</code>, <code>ElisionFilter</code>, <code>LowerCaseFilter</code>, <code>StopFilter</code>
          , <code>SetKeywordMarkerFilter</code> if a stem exclusion set is
          provided and <code>ItalianLightStemFilter</code>.
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisItItalianAnalyzer)

/*!
 @brief File containing default Italian stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisItItalianAnalyzer_get_DEFAULT_STOPWORD_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisItItalianAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisItItalianAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisItItalianAnalyzer_getDefaultStopSet(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisItItalianAnalyzer_init(OrgApacheLuceneAnalysisItItalianAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *new_OrgApacheLuceneAnalysisItItalianAnalyzer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *create_OrgApacheLuceneAnalysisItItalianAnalyzer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisItItalianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *new_OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *create_OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisItItalianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *new_OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianAnalyzer *create_OrgApacheLuceneAnalysisItItalianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisItItalianAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianAnalyzer")
