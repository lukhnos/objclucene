//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ga/IrishLowerCaseFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory))
#define OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_

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
 @brief Factory for <code>IrishLowerCaseFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_ga" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.IrishLowerCaseFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new IrishLowerCaseFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory *new_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory *create_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory")
