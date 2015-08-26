//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/RemoveDeletedQueryNodesProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/AllowLeadingWildcardProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/AnalyzerQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanQuery2ModifierNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BoostQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/DefaultPhraseSlopQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/FuzzyQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/LowercaseExpandedTermsQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MatchAllDocsQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiFieldQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/NumericQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/NumericRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/OpenRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/PhraseSlopQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/RemoveEmptyNonLeafQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/TermRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/WildcardQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:", "StandardQueryNodeProcessorPipeline", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline = { 2, "StandardQueryNodeProcessorPipeline", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsOpenRangeQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsLowercaseExpandedTermsQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsDefaultPhraseSlopQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBoostQueryNodeProcessor_init() autorelease]];
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init() autorelease]];
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *self = [OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline alloc];
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline)
