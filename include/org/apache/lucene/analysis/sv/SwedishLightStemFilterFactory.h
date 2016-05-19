//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sv/SwedishLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory

#if !defined (OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory))
#define OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>SwedishLightStemFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_svlgtstem" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
 &lt;filter class="solr.SwedishLightStemFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new SwedishLightStemFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory *new_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory *create_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemFilterFactory")
