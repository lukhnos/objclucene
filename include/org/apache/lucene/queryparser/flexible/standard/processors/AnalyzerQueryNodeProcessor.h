//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/AnalyzerQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processor verifies if <code>ConfigurationKeys.ANALYZER</code>
  is defined in the <code>QueryConfigHandler</code>.If it is and the analyzer is
  not <code>null</code>, it looks for every <code>FieldQueryNode</code> that is not 
 <code>WildcardQueryNode</code>, <code>FuzzyQueryNode</code> or 
 <code>RangeQueryNode</code> contained in the query node tree, then it applies
  the analyzer to that <code>FieldQueryNode</code> object.
 <br>
  <br>
  If the analyzer return only one term, the returned term is set to the 
 <code>FieldQueryNode</code> and it's returned. <br>
  <br>
  If the analyzer return more than one term, a <code>TokenizedPhraseQueryNode</code>
  or <code>MultiPhraseQueryNode</code> is created, whether there is one or more
  terms at the same position, and it's returned. <br>
  <br>
  If no term is returned by the analyzer a <code>NoTokenFoundQueryNode</code> object
  is returned.
 - seealso: ConfigurationKeys#ANALYZER
 - seealso: Analyzer
 - seealso: TokenStream
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype __nonnull)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor")
