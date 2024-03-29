//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory))
#define OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>PortugueseStemFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_ptstem" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.PortugueseStemFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new PortugueseStemFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory *new_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory *create_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseStemFilterFactory")
