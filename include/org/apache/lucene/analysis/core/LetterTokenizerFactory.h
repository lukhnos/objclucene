//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LetterTokenizerFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory))
#define OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenizerFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenizerFactory 1
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"

@class OrgApacheLuceneAnalysisCoreLetterTokenizer;
@class OrgApacheLuceneUtilAttributeFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>LetterTokenizer</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_letter" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.LetterTokenizerFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCoreLetterTokenizerFactory : OrgApacheLuceneAnalysisUtilTokenizerFactory

#pragma mark Public

/*!
 @brief Creates a new LetterTokenizerFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCoreLetterTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLetterTokenizerFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *new_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *create_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLetterTokenizerFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory")
