//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/gl/GalicianMinimalStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory

#if !defined (OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory))
#define OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>GalicianMinimalStemFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_glplural" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
 &lt;filter class="solr.GalicianMinimalStemFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new GalicianMinimalStemFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory *create_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGlGalicianMinimalStemFilterFactory")
