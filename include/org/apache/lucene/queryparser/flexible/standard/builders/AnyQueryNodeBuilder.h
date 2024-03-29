//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/AnyQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchBooleanQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief Builds a BooleanQuery of SHOULD clauses, possibly with
  some minimum number to match.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchBooleanQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersAnyQueryNodeBuilder")
