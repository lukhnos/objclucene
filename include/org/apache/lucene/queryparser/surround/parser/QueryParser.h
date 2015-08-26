//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/parser/QueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundParserQueryParser_RESTRICT
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundParserQueryParser_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundParserQueryParser_) && (OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundParserQueryParser_

#define OrgApacheLuceneQueryparserSurroundParserQueryParserConstants_RESTRICT 1
#define OrgApacheLuceneQueryparserSurroundParserQueryParserConstants_INCLUDE 1
#include "org/apache/lucene/queryparser/surround/parser/QueryParserConstants.h"

@class JavaUtilArrayList;
@class OrgApacheLuceneQueryparserSurroundParserParseException;
@class OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager;
@class OrgApacheLuceneQueryparserSurroundParserToken;
@class OrgApacheLuceneQueryparserSurroundQueryDistanceQuery;
@class OrgApacheLuceneQueryparserSurroundQuerySrndQuery;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserSurroundParserCharStream;

#define OrgApacheLuceneQueryparserSurroundParserQueryParser_minimumPrefixLength 3
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_minimumCharsInTrunc 3
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_truncator '*'
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_anyChar '?'
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_quote '"'
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_fieldOperator ':'
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_comma ','
#define OrgApacheLuceneQueryparserSurroundParserQueryParser_carat '^'

@interface OrgApacheLuceneQueryparserSurroundParserQueryParser : NSObject < OrgApacheLuceneQueryparserSurroundParserQueryParserConstants > {
 @public
  NSString *truncationErrorMessage_;
  NSString *boostErrorMessage_;
  OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *token_source_;
  OrgApacheLuceneQueryparserSurroundParserToken *token_;
  OrgApacheLuceneQueryparserSurroundParserToken *jj_nt_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream;

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager:(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *)tm;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)AndQuery;

- (void)disable_tracing;

- (void)enable_tracing;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)FieldsQuery;

- (id<JavaUtilList>)FieldsQueryList;

- (OrgApacheLuceneQueryparserSurroundParserParseException *)generateParseException;

- (OrgApacheLuceneQueryparserSurroundParserToken *)getNextToken;

- (OrgApacheLuceneQueryparserSurroundParserToken *)getTokenWithInt:(jint)index;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)NotQuery;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)NQuery;

- (JavaUtilArrayList *)OptionalFields;

- (void)OptionalWeightsWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)q;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)OrQuery;

+ (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)parseWithNSString:(NSString *)query;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)parse2WithNSString:(NSString *)query;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)PrefixOperatorQuery;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)PrimaryQuery;

- (void)ReInitWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream;

- (void)ReInitWithOrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager:(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *)tm;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)SimpleTerm;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)TopSrndQuery;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)WQuery;

#pragma mark Protected

- (jboolean)allowedSuffixWithNSString:(NSString *)suffixed;

- (jboolean)allowedTruncationWithNSString:(NSString *)truncated;

+ (void)checkDistanceSubQueriesWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery:(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *)distq
                                                                           withNSString:(NSString *)opName;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getAndQueryWithJavaUtilList:(id<JavaUtilList>)queries
                                                                      withBoolean:(jboolean)infix
                                withOrgApacheLuceneQueryparserSurroundParserToken:(OrgApacheLuceneQueryparserSurroundParserToken *)andToken;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getDistanceQueryWithJavaUtilList:(id<JavaUtilList>)queries
                                                                           withBoolean:(jboolean)infix
                                     withOrgApacheLuceneQueryparserSurroundParserToken:(OrgApacheLuceneQueryparserSurroundParserToken *)dToken
                                                                           withBoolean:(jboolean)ordered;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getFieldsQueryWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)q
                                                                                                   withJavaUtilArrayList:(JavaUtilArrayList *)fieldNames;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getNotQueryWithJavaUtilList:(id<JavaUtilList>)queries
                                withOrgApacheLuceneQueryparserSurroundParserToken:(OrgApacheLuceneQueryparserSurroundParserToken *)notToken;

+ (jint)getOpDistanceWithNSString:(NSString *)distanceOp;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getOrQueryWithJavaUtilList:(id<JavaUtilList>)queries
                                                                     withBoolean:(jboolean)infix
                               withOrgApacheLuceneQueryparserSurroundParserToken:(OrgApacheLuceneQueryparserSurroundParserToken *)orToken;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getPrefixQueryWithNSString:(NSString *)prefix
                                                                     withBoolean:(jboolean)quoted;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getTermQueryWithNSString:(NSString *)term
                                                                   withBoolean:(jboolean)quoted;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)getTruncQueryWithNSString:(NSString *)truncated;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserSurroundParserQueryParser)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser, truncationErrorMessage_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser, boostErrorMessage_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser, token_source_, OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser, token_, OrgApacheLuceneQueryparserSurroundParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser, jj_nt_, OrgApacheLuceneQueryparserSurroundParserToken *)

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQuerySrndQuery *OrgApacheLuceneQueryparserSurroundParserQueryParser_parseWithNSString_(NSString *query);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParser_init(OrgApacheLuceneQueryparserSurroundParserQueryParser *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParser *new_OrgApacheLuceneQueryparserSurroundParserQueryParser_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint OrgApacheLuceneQueryparserSurroundParserQueryParser_getOpDistanceWithNSString_(NSString *distanceOp);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParser_checkDistanceSubQueriesWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *distq, NSString *opName);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParser_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_(OrgApacheLuceneQueryparserSurroundParserQueryParser *self, id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParser *new_OrgApacheLuceneQueryparserSurroundParserQueryParser_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_(id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParser_initWithOrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_(OrgApacheLuceneQueryparserSurroundParserQueryParser *self, OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *tm);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParser *new_OrgApacheLuceneQueryparserSurroundParserQueryParser_initWithOrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *tm) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundParserQueryParser)

#endif

#if !defined (_OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls_) && (OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls_

@class OrgApacheLuceneQueryparserSurroundParserToken;

@interface OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls : NSObject {
 @public
  jint gen_;
  OrgApacheLuceneQueryparserSurroundParserToken *first_;
  jint arg_;
  OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls *next_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls, first_, OrgApacheLuceneQueryparserSurroundParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls, next_, OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls_init(OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls *new_OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundParserQueryParser_JJCalls)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundParserQueryParser_INCLUDE_ALL")
