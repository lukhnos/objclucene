//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/commongrams/CommonGramsFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory))
#define OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Constructs a <code>CommonGramsFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_cmmngrms" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.CommonGramsFilterFactory" words="commongramsstopwords.txt" ignoreCase="false"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

/*!
 @brief Creates a new CommonGramsFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getCommonWords;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

- (jboolean)isIgnoreCase;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory *new_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory *create_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory")
