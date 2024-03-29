//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sr/SerbianNormalizationFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory))
#define OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>SerbianNormalizationFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_srnorm" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.SerbianNormalizationFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new SerbianNormalizationFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *new_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *create_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory")
