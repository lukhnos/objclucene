//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/ParseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardParserParseException_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardParserParseException_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_) && (OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardParserParseException_

#define OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.h"

@class IOSObjectArray;
@class OrgApacheLuceneQueryparserFlexibleStandardParserToken;
@protocol OrgApacheLuceneQueryparserFlexibleMessagesMessage;

@interface OrgApacheLuceneQueryparserFlexibleStandardParserParseException : OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException {
 @public
  OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentToken_;
  IOSObjectArray *expectedTokenSequences_;
  IOSObjectArray *tokenImage_;
  NSString *eol_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message;

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:(OrgApacheLuceneQueryparserFlexibleStandardParserToken *)currentTokenVal
                                                                withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                                            withNSStringArray:(IOSObjectArray *)tokenImageVal;

#pragma mark Package-Private

+ (NSString *)add_escapesWithNSString:(NSString *)str;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardParserParseException)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, currentToken_, OrgApacheLuceneQueryparserFlexibleStandardParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, expectedTokenSequences_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, tokenImage_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, eol_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleStandardParserParseException_add_escapesWithNSString_(NSString *str);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardParserParseException_INCLUDE_ALL")
