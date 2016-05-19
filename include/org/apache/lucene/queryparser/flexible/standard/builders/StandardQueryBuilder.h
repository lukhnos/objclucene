//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This interface should be implemented by every class that wants to build
 <code>Query</code> objects from <code>QueryNode</code> objects.
 - seealso: QueryBuilder
 - seealso: QueryTreeBuilder
 */
@protocol OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder < OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder, NSObject, JavaObject >

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder")
