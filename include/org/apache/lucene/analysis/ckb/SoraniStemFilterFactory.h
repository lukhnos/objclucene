//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory))
#define OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisCkbSoraniStemFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>SoraniStemFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_ckbstem" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.SoraniNormalizationFilterFactory"/&gt;
      &lt;filter class="solr.SoraniStemFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new SoraniStemFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCkbSoraniStemFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory *new_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory *create_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniStemFilterFactory")
