//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/MultiPhraseQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_) && (OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_

#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchMultiPhraseQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchMultiPhraseQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_INCLUDE_ALL")
