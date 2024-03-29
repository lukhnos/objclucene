//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43NGramTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer))
#define OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief Old broken version of <code>NGramTokenizer</code>.
 */
@interface OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer : OrgApacheLuceneAnalysisTokenizer
@property (readonly, class) jint DEFAULT_MIN_NGRAM_SIZE NS_SWIFT_NAME(DEFAULT_MIN_NGRAM_SIZE);
@property (readonly, class) jint DEFAULT_MAX_NGRAM_SIZE NS_SWIFT_NAME(DEFAULT_MAX_NGRAM_SIZE);

#pragma mark Public

/*!
 @brief Creates NGramTokenizer with default min and max n-grams.
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates NGramTokenizer with given min and max n-grams.
 @param factory<code>org.apache.lucene.util.AttributeFactory</code>  to use
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                              withInt:(jint)minGram
                                                              withInt:(jint)maxGram;

/*!
 @brief Creates NGramTokenizer with given min and max n-grams.
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype __nonnull)initWithInt:(jint)minGram
                              withInt:(jint)maxGram;

- (void)end;

/*!
 @brief Returns the next token in the stream, or null at EOS.
 */
- (jboolean)incrementToken;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer)

inline jint OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_get_DEFAULT_MIN_NGRAM_SIZE(void);
#define OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MIN_NGRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, DEFAULT_MIN_NGRAM_SIZE, jint)

inline jint OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_get_DEFAULT_MAX_NGRAM_SIZE(void);
#define OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MAX_NGRAM_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, DEFAULT_MAX_NGRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer")
