//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/QueryParserTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserClassicQueryParserTokenManager_RESTRICT
#define OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserClassicQueryParserTokenManager_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_) && (OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE_ALL || OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE)
#define _OrgApacheLuceneQueryparserClassicQueryParserTokenManager_

#define OrgApacheLuceneQueryparserClassicQueryParserConstants_RESTRICT 1
#define OrgApacheLuceneQueryparserClassicQueryParserConstants_INCLUDE 1
#include "org/apache/lucene/queryparser/classic/QueryParserConstants.h"

@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneQueryparserClassicToken;
@protocol OrgApacheLuceneQueryparserClassicCharStream;

@interface OrgApacheLuceneQueryparserClassicQueryParserTokenManager : NSObject < OrgApacheLuceneQueryparserClassicQueryParserConstants > {
 @public
  id<OrgApacheLuceneQueryparserClassicCharStream> input_stream_;
  jchar curChar_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream;

- (instancetype)initWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream
                                                            withInt:(jint)lexState;

- (OrgApacheLuceneQueryparserClassicToken *)getNextToken;

- (void)ReInitWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream;

- (void)ReInitWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream
                                                      withInt:(jint)lexState;

- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (OrgApacheLuceneQueryparserClassicToken *)jjFillToken;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserClassicQueryParserTokenManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, input_stream_, id<OrgApacheLuceneQueryparserClassicCharStream>)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec0_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec0_, IOSLongArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec1_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec1_, IOSLongArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec3_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec3_, IOSLongArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec4_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec4_, IOSLongArray *)

FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjnextStates_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjnextStates_, IOSIntArray *)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjstrLiteralImages_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjstrLiteralImages_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_lexStateNames_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, lexStateNames_, IOSObjectArray *)

FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjnewLexState_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjnewLexState_, IOSIntArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjtoToken_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjtoToken_, IOSLongArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjtoSkip_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjtoSkip_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_(OrgApacheLuceneQueryparserClassicQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserClassicCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *new_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_(id<OrgApacheLuceneQueryparserClassicCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_withInt_(OrgApacheLuceneQueryparserClassicQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserClassicCharStream> stream, jint lexState);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *new_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_withInt_(id<OrgApacheLuceneQueryparserClassicCharStream> stream, jint lexState) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserClassicQueryParserTokenManager_INCLUDE_ALL")
