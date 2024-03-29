//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/ModifierQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief Builds no object, it only returns the <code>Query</code> object set on the 
 <code>ModifierQueryNode</code> object using a 
 <code>QueryTreeBuilder.QUERY_TREE_BUILDER_TAGID</code> tag.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder")
