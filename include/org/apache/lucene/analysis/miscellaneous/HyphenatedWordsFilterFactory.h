//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/HyphenatedWordsFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory

#if !defined (OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>HyphenatedWordsFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_hyphn" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.HyphenatedWordsFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new HyphenatedWordsFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilterFactory")
