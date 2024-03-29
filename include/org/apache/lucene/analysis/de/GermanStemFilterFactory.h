//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisDeGermanStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisDeGermanStemFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisDeGermanStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisDeGermanStemFilterFactory))
#define OrgApacheLuceneAnalysisDeGermanStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisDeGermanStemFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>GermanStemFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_destem" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.GermanStemFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisDeGermanStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new GermanStemFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisDeGermanStemFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisDeGermanStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanStemFilterFactory *new_OrgApacheLuceneAnalysisDeGermanStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanStemFilterFactory *create_OrgApacheLuceneAnalysisDeGermanStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanStemFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilterFactory")
