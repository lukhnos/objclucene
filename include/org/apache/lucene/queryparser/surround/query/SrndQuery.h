//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SrndQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundQuerySrndQuery_RESTRICT
#define OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundQuerySrndQuery_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundQuerySrndQuery_) && (OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundQuerySrndQuery_

@class JavaLangStringBuilder;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneQueryparserSurroundQuerySrndQuery : NSObject < NSCopying >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)clone;

- (jboolean)isEqual:(id)obj;

- (jfloat)getWeight;

- (NSString *)getWeightOperator;

- (NSString *)getWeightString;

- (NSUInteger)hash;

- (jboolean)isFieldsSubQueryAcceptable;

- (jboolean)isWeighted;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldWithNSString:(NSString *)fieldName
    withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (void)setWeightWithFloat:(jfloat)w;

- (NSString *)description;

#pragma mark Protected

- (void)weightToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySrndQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySrndQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundQuerySrndQuery_INCLUDE_ALL")
