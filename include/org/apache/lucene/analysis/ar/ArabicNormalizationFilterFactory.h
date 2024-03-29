//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicNormalizationFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory))
#define OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisArArabicNormalizationFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>ArabicNormalizationFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_arnormal" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.ArabicNormalizationFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new ArabicNormalizationFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisArArabicNormalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory *new_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory *create_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicNormalizationFilterFactory")
