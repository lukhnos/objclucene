//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LowerCaseTokenizerFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory))
#define OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenizerFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenizerFactory 1
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisCoreLowerCaseTokenizer;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@class OrgApacheLuceneUtilAttributeFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>LowerCaseTokenizer</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_lwrcase" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.LowerCaseTokenizerFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory : OrgApacheLuceneAnalysisUtilTokenizerFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new LowerCaseTokenizerFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory")
