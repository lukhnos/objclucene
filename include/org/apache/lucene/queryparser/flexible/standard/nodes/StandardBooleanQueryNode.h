//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/StandardBooleanQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_) && (OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"

@protocol JavaUtilList;

@interface OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
                         withBoolean:(jboolean)disableCoord;

- (jboolean)isDisableCoord;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_initWithJavaUtilList_withBoolean_(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *self, id<JavaUtilList> clauses, jboolean disableCoord);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_initWithJavaUtilList_withBoolean_(id<JavaUtilList> clauses, jboolean disableCoord) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_INCLUDE_ALL")
