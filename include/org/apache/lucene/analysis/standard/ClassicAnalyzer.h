//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardClassicAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardClassicAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisStandardClassicAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisStandardClassicAnalyzer))
#define OrgApacheLuceneAnalysisStandardClassicAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Filters <code>ClassicTokenizer</code> with <code>ClassicFilter</code>, <code>LowerCaseFilter</code>
  and <code>StopFilter</code>, using a list of
  English stop words.
 ClassicAnalyzer was named StandardAnalyzer in Lucene versions prior to 3.1. 
  As of 3.1, <code>StandardAnalyzer</code> implements Unicode text segmentation,
  as specified by UAX#29.
 */
@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase
@property (readonly, class) jint DEFAULT_MAX_TOKEN_LENGTH NS_SWIFT_NAME(DEFAULT_MAX_TOKEN_LENGTH);
@property (readonly, class, strong) OrgApacheLuceneAnalysisUtilCharArraySet *STOP_WORDS_SET NS_SWIFT_NAME(STOP_WORDS_SET);

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words (<code>STOP_WORDS_SET</code>
 ).
 */
- (instancetype __nonnull)init;

/*!
 @brief Builds an analyzer with the given stop words.
 @param stopWords stop words
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords;

/*!
 @brief Builds an analyzer with the stop words from the given reader.
 - seealso: WordlistLoader#getWordSet(Reader)
 @param stopwords Reader to read stop words from
 */
- (instancetype __nonnull)initWithJavaIoReader:(JavaIoReader *)stopwords;

/*!
 - seealso: #setMaxTokenLength
 */
- (jint)getMaxTokenLength;

/*!
 @brief Set maximum allowed token length.If a token is seen
  that exceeds this length then it is discarded.
 This
  setting only takes effect the next time tokenStream or
  tokenStream is called.
 */
- (void)setMaxTokenLengthWithInt:(jint)length;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

/*!
 @brief Default maximum allowed token length
 */
inline jint OrgApacheLuceneAnalysisStandardClassicAnalyzer_get_DEFAULT_MAX_TOKEN_LENGTH(void);
#define OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH 255
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicAnalyzer, DEFAULT_MAX_TOKEN_LENGTH, jint)

/*!
 @brief An unmodifiable set containing some common English words that are usually not
   useful for searching.
 */
inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisStandardClassicAnalyzer_get_STOP_WORDS_SET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, STOP_WORDS_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, JavaIoReader *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer")
