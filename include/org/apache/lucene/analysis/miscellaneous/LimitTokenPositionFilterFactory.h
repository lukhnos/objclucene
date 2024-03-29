//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>LimitTokenPositionFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_limit_pos" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.LimitTokenPositionFilterFactory" maxTokenPosition="3" consumeAllTokens="false" /&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
  <p>
  The <code>consumeAllTokens</code> property is optional and defaults to <code>false</code>.  
  See <code>LimitTokenPositionFilter</code> for an explanation of its use.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory {
 @public
  jint maxTokenPosition_;
  jboolean consumeAllTokens_;
}
@property (readonly, copy, class) NSString *MAX_TOKEN_POSITION_KEY NS_SWIFT_NAME(MAX_TOKEN_POSITION_KEY);
@property (readonly, copy, class) NSString *CONSUME_ALL_TOKENS_KEY NS_SWIFT_NAME(CONSUME_ALL_TOKENS_KEY);

#pragma mark Public

/*!
 @brief Creates a new LimitTokenPositionFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_get_MAX_TOKEN_POSITION_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_MAX_TOKEN_POSITION_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory, MAX_TOKEN_POSITION_KEY, NSString *)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_get_CONSUME_ALL_TOKENS_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_CONSUME_ALL_TOKENS_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory, CONSUME_ALL_TOKENS_KEY, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilterFactory")
