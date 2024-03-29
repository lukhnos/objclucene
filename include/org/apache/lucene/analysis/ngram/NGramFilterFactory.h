//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramNGramFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramNGramFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisNgramNGramFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisNgramNGramFilterFactory))
#define OrgApacheLuceneAnalysisNgramNGramFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>NGramTokenFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_ngrm" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.NGramFilterFactory" minGramSize="1" maxGramSize="2"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisNgramNGramFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new NGramFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramNGramFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNgramNGramFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramFilterFactory *new_OrgApacheLuceneAnalysisNgramNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramFilterFactory *create_OrgApacheLuceneAnalysisNgramNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramNGramFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramFilterFactory")
