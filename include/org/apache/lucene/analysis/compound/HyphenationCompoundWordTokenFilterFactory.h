//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory))
#define OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Factory for <code>HyphenationCompoundWordTokenFilter</code>.
 <p>
  This factory accepts the following parameters: 
 <ul>
   <li><code>hyphenator</code> (mandatory): path to the FOP xml hyphenation pattern. 
   See <a href="http://offo.sourceforge.net/hyphenation/">http://offo.sourceforge.net/hyphenation/</a>.
   <li><code>encoding</code> (optional): encoding of the xml hyphenation file. defaults to UTF-8.
   <li><code>dictionary</code> (optional): dictionary of words. defaults to no dictionary.
   <li><code>minWordSize</code> (optional): minimal word length that gets decomposed. defaults to 5.
   <li><code>minSubwordSize</code> (optional): minimum length of subwords. defaults to 2.
   <li><code>maxSubwordSize</code> (optional): maximum length of subwords. defaults to 15.
   <li><code>onlyLongestMatch</code> (optional): if true, adds only the longest matching subword 
     to the stream. defaults to false. 
 </ul>
  <br>
  <pre class="prettyprint">
  &lt;fieldType name="text_hyphncomp" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.HyphenationCompoundWordTokenFilterFactory" hyphenator="hyphenator.xml" encoding="UTF-8"
          dictionary="dictionary.txt" minWordSize="5" minSubwordSize="2" maxSubwordSize="15" onlyLongestMatch="false"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 - seealso: HyphenationCompoundWordTokenFilter
 */
@interface OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware >

#pragma mark Public

/*!
 @brief Creates a new HyphenationCompoundWordTokenFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *create_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory")
