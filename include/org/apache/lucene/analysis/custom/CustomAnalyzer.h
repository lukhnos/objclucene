//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/custom/CustomAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCustomCustomAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCustomCustomAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCustomCustomAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisCustomCustomAnalyzer))
#define OrgApacheLuceneAnalysisCustomCustomAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzer 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzer 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class IOSObjectArray;
@class JavaIoReader;
@class JavaLangInteger;
@class OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder;
@class OrgApacheLuceneAnalysisUtilTokenizerFactory;
@class OrgApacheLuceneUtilVersion;
@class OrgLukhnosPortmobileFilePath;
@protocol JavaUtilList;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief A general-purpose Analyzer that can be created with a builder-style API.
 Under the hood it uses the factory classes <code>TokenizerFactory</code>,
  <code>TokenFilterFactory</code>, and <code>CharFilterFactory</code>.
  <p>You can create an instance of this Analyzer using the builder: 
 <pre class="prettyprint">
  Analyzer ana = CustomAnalyzer.builder(Paths.get(&quot;/path/to/config/dir&quot;))
    .withTokenizer(&quot;standard&quot;)
    .addTokenFilter(&quot;standard&quot;)
    .addTokenFilter(&quot;lowercase&quot;)
    .addTokenFilter(&quot;stop&quot;, &quot;ignoreCase&quot;, &quot;false&quot;, &quot;words&quot;, &quot;stopwords.txt&quot;, &quot;format&quot;, &quot;wordset&quot;)
    .build(); 
 
@endcode
  The parameters passed to components are also used by Apache Solr and are documented
  on their corresponding factory classes. Refer to documentation of subclasses of 
 <code>TokenizerFactory</code>, <code>TokenFilterFactory</code>, and <code>CharFilterFactory</code>.
  <p>The list of names to be used for components can be looked up through: 
 <code>TokenizerFactory.availableTokenizers()</code>, <code>TokenFilterFactory.availableTokenFilters()</code>,
  and <code>CharFilterFactory.availableCharFilters()</code>.
 */
@interface OrgApacheLuceneAnalysisCustomCustomAnalyzer : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

/*!
 @brief Returns a builder for custom analyzers that loads all resources from classpath.
 All path names given must be absolute with package prefixes.
 */
+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builder;

/*!
 @brief Returns a builder for custom analyzers that loads all resources from the given
  file system base directory.Place, e.g., stop word files there.
 Files that are not in the given directory are loaded from classpath.
 */
+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builderWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)configDir;

/*!
 @brief Returns a builder for custom analyzers that loads all resources using the given <code>ResourceLoader</code>.
 */
+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builderWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

/*!
 @brief Returns the list of char filters that are used in this analyzer.
 */
- (id<JavaUtilList>)getCharFilterFactories;

- (jint)getOffsetGapWithNSString:(NSString *)fieldName;

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName;

/*!
 @brief Returns the list of token filters that are used in this analyzer.
 */
- (id<JavaUtilList>)getTokenFilterFactories;

/*!
 @brief Returns the tokenizer that is used in this analyzer.
 */
- (OrgApacheLuceneAnalysisUtilTokenizerFactory *)getTokenizerFactory;

- (NSString *)description;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)defaultMatchVersion
       withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray:(IOSObjectArray *)charFilters
             withOrgApacheLuceneAnalysisUtilTokenizerFactory:(OrgApacheLuceneAnalysisUtilTokenizerFactory *)tokenizer
      withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray:(IOSObjectArray *)tokenFilters
                                         withJavaLangInteger:(JavaLangInteger *)posIncGap
                                         withJavaLangInteger:(JavaLangInteger *)offsetGap;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCustomCustomAnalyzer)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builder(void);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *configDir);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgApacheLuceneAnalysisUtilResourceLoader_(id<OrgApacheLuceneAnalysisUtilResourceLoader> loader);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(OrgApacheLuceneAnalysisCustomCustomAnalyzer *self, OrgApacheLuceneUtilVersion *defaultMatchVersion, IOSObjectArray *charFilters, OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer, IOSObjectArray *tokenFilters, JavaLangInteger *posIncGap, JavaLangInteger *offsetGap);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer *new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(OrgApacheLuceneUtilVersion *defaultMatchVersion, IOSObjectArray *charFilters, OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer, IOSObjectArray *tokenFilters, JavaLangInteger *posIncGap, JavaLangInteger *offsetGap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer *create_OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(OrgApacheLuceneUtilVersion *defaultMatchVersion, IOSObjectArray *charFilters, OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer, IOSObjectArray *tokenFilters, JavaLangInteger *posIncGap, JavaLangInteger *offsetGap);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCustomCustomAnalyzer)

#endif

#if !defined (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder))
#define OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisCustomCustomAnalyzer;
@class OrgApacheLuceneUtilVersion;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Builder for <code>CustomAnalyzer</code>.
 - seealso: CustomAnalyzer#builder()
 - seealso: CustomAnalyzer#builder(Path)
 - seealso: CustomAnalyzer#builder(ResourceLoader)
 */
@interface OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder : NSObject

#pragma mark Public

/*!
 @brief Adds the given char filter.
 @param name is used to look up the factory with <code>CharFilterFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>CharFilterFactory.availableCharFilters()</code> .
 @param params the map of parameters to be passed to factory. The map must be modifiable.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addCharFilterWithNSString:(NSString *)name
                                                                   withJavaUtilMap:(id<JavaUtilMap>)params;

/*!
 @brief Adds the given char filter.
 @param name is used to look up the factory with <code>CharFilterFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>CharFilterFactory.availableCharFilters()</code> .
 @param params a list of factory string params as key/value pairs.   The number of parameters must be an even number, as they are pairs.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addCharFilterWithNSString:(NSString *)name
                                                                 withNSStringArray:(IOSObjectArray *)params;

/*!
 @brief Adds the given token filter.
 @param name is used to look up the factory with <code>TokenFilterFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>TokenFilterFactory.availableTokenFilters()</code> .
 @param params the map of parameters to be passed to factory. The map must be modifiable.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addTokenFilterWithNSString:(NSString *)name
                                                                    withJavaUtilMap:(id<JavaUtilMap>)params;

/*!
 @brief Adds the given token filter.
 @param name is used to look up the factory with <code>TokenFilterFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>TokenFilterFactory.availableTokenFilters()</code> .
 @param params a list of factory string params as key/value pairs.   The number of parameters must be an even number, as they are pairs.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addTokenFilterWithNSString:(NSString *)name
                                                                  withNSStringArray:(IOSObjectArray *)params;

/*!
 @brief Builds the analyzer.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer *)build;

/*!
 @brief This match version is passed as default to all tokenizers or filters.It is used unless you
  pass the parameter {code luceneMatchVersion} explicitly.
 It defaults to undefined, so the
  underlying factory will (in most cases) use <code>Version.LATEST</code>.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withDefaultMatchVersionWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)version_;

/*!
 @brief Sets the offset gap of the analyzer.The default is defined
  in the analyzer base class.
 - seealso: Analyzer#getOffsetGap(String)
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withOffsetGapWithInt:(jint)offsetGap;

/*!
 @brief Sets the position increment gap of the analyzer.
 The default is defined in the analyzer base class.
 - seealso: Analyzer#getPositionIncrementGap(String)
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withPositionIncrementGapWithInt:(jint)posIncGap;

/*!
 @brief Uses the given tokenizer.
 @param name is used to look up the factory with <code>TokenizerFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>TokenizerFactory.availableTokenizers()</code> .
 @param params the map of parameters to be passed to factory. The map must be modifiable.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withTokenizerWithNSString:(NSString *)name
                                                                   withJavaUtilMap:(id<JavaUtilMap>)params;

/*!
 @brief Uses the given tokenizer.
 @param name is used to look up the factory with <code>TokenizerFactory.forName(String, Map)</code> .
    The list of possible names can be looked up with <code>TokenizerFactory.availableTokenizers()</code> .
 @param params a list of factory string params as key/value pairs.   The number of parameters must be an even number, as they are pairs.
 */
- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withTokenizerWithNSString:(NSString *)name
                                                                 withNSStringArray:(IOSObjectArray *)params;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(id<OrgApacheLuceneAnalysisUtilResourceLoader> loader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *create_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(id<OrgApacheLuceneAnalysisUtilResourceLoader> loader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCustomCustomAnalyzer")
