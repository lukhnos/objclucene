//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/TypeTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory))
#define OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Factory class for <code>TypeTokenFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="chars" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.TypeTokenFilterFactory" types="stoptypes.txt"
                    useWhitelist="false"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

/*!
 @brief Creates a new TypeTokenFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (id<JavaUtilSet>)getStopTypes;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory *new_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory *create_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreTypeTokenFilterFactory")
