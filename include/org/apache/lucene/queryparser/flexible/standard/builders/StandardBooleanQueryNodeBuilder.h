//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/StandardBooleanQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchBooleanQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This builder does the same as the <code>BooleanQueryNodeBuilder</code>, but this
  considers if the built <code>BooleanQuery</code> should have its coord disabled or
  not.
 <br>
 - seealso: BooleanQueryNodeBuilder
 - seealso: BooleanQuery
 - seealso: Similarity#coord(int, int)
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchBooleanQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder")
