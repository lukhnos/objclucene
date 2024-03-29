//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/it/ItalianLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisItItalianLightStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory))
#define OrgApacheLuceneAnalysisItItalianLightStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>ItalianLightStemFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_itlgtstem" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.ItalianLightStemFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisItItalianLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new ItalianLightStemFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisItItalianLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisItItalianLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisItItalianLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianLightStemFilterFactory *new_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianLightStemFilterFactory *create_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisItItalianLightStemFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilterFactory")
