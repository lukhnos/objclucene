//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/QueryParserUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_) && (OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)escapeWithNSString:(NSString *)s;

+ (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                withNSStringArray:(IOSObjectArray *)fields
withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
              withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
 withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil)

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_parseWithNSString_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(NSString *query, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_escapeWithNSString_(NSString *s);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_init(OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil *new_OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardQueryParserUtil_INCLUDE_ALL")
