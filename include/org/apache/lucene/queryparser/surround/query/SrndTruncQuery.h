//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SrndTruncQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_RESTRICT
#define OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_) && (OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_

#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_RESTRICT 1
#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_INCLUDE 1
#include "org/apache/lucene/queryparser/surround/query/SimpleTerm.h"

@class JavaLangStringBuilder;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor;

@interface OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery : OrgApacheLuceneQueryparserSurroundQuerySimpleTerm

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)truncated
                        withChar:(jchar)unlimited
                        withChar:(jchar)mask;

- (NSString *)getTruncated;

- (NSString *)toStringUnquoted;

- (void)visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)fieldName
withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:(id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>)mtv;

#pragma mark Protected

- (void)appendRegExpForCharWithChar:(jchar)c
          withJavaLangStringBuilder:(JavaLangStringBuilder *)re;

- (jboolean)matchingCharWithChar:(jchar)c;

- (void)truncatedToPrefixAndPattern;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_initWithNSString_withChar_withChar_(OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery *self, NSString *truncated, jchar unlimited, jchar mask);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery *new_OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_initWithNSString_withChar_withChar_(NSString *truncated, jchar unlimited, jchar mask) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundQuerySrndTruncQuery_INCLUDE_ALL")
