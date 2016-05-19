//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseMinimalStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory

#if !defined (OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory))
#define OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>PortugueseMinimalStemFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_ptminstem" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
 &lt;filter class="solr.PortugueseMinimalStemFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new PortugueseMinimalStemFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory *create_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseMinimalStemFilterFactory")
