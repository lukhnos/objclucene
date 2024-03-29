//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SynonymFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory))
#define OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisSynonymSynonymMap;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Factory for <code>SynonymFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_synonym" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.SynonymFilterFactory" synonyms="synonyms.txt" 
              format="solr" ignoreCase="false" expand="true" 
              tokenizerFactory="solr.WhitespaceTokenizerFactory"
              [optional tokenizer factory parameters]/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
   
 <p>
  An optional param name prefix of "tokenizerFactory." may be used for any 
  init params that the SynonymFilterFactory needs to pass to the specified 
  TokenizerFactory.  If the TokenizerFactory expects an init parameters with 
  the same name as an init param used by the SynonymFilterFactory, the prefix 
  is mandatory. 
 </p>
   
 <p>
  The optional <code>format</code> parameter controls how the synonyms will be parsed:
  It supports the short names of <code>solr</code> for <code>SolrSynonymParser</code> 
  and <code>wordnet</code> for and <code>WordnetSynonymParser</code>, or your own  
 <code>SynonymMap.Parser</code> class name. The default is <code>solr</code>.
  A custom <code>SynonymMap.Parser</code> is expected to have a constructor taking: 
 <ul>
    <li><code>boolean dedup</code> - true if duplicates should be ignored, false otherwise</li>
    <li><code>boolean expand</code> - true if conflation groups should be expanded, false if they are one-directional</li>
    <li><code><code>Analyzer</code> analyzer</code> - an analyzer used for each raw synonym</li>
  </ul>
 - seealso: SolrSynonymParserSolrSynonymParser: default format
 */
@interface OrgApacheLuceneAnalysisSynonymSynonymFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

#pragma mark Protected

/*!
 @brief Load synonyms with the given <code>SynonymMap.Parser</code> class.
 */
- (OrgApacheLuceneAnalysisSynonymSynonymMap *)loadSynonymsWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                           withNSString:(NSString *)cname
                                                                                            withBoolean:(jboolean)dedup
                                                                    withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymFilterFactory *new_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymFilterFactory *create_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSynonymFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymFilterFactory")
