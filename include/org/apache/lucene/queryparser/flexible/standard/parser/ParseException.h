//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/ParseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserParseException")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserParseException
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserParseException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserParseException 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserParseException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardParserParseException_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserParseException || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardParserParseException))
#define OrgApacheLuceneQueryparserFlexibleStandardParserParseException_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException 1
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.h"

@class IOSObjectArray;
@class JavaLangThrowable;
@class OrgApacheLuceneQueryparserFlexibleStandardParserToken;
@protocol OrgApacheLuceneQueryparserFlexibleMessagesMessage;

/*!
 @brief This exception is thrown when parse errors are encountered.
 You can explicitly create objects of this exception type by
  calling the method generateParseException in the generated
  parser.
  You can modify this class to customize your error reporting
  mechanisms so long as you retain the public fields.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardParserParseException : OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException {
 @public
  /*!
   @brief This is the last token that has been consumed successfully.If
  this object has been created due to a parse error, the token
  followng this token will (therefore) be the first error token.
   */
  OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentToken_;
  /*!
   @brief Each entry in this array is an array of integers.Each array
  of integers represents a sequence of tokens (by their ordinal
  values) that is expected at this point of the parse.
   */
  IOSObjectArray *expectedTokenSequences_;
  /*!
   @brief This is a reference to the "tokenImage" array of the generated
  parser within which the parse error occurred.This array is
  defined in the generated ...Constants interface.
   */
  IOSObjectArray *tokenImage_;
  /*!
   @brief The end of line string for this machine.
   */
  NSString *eol_;
}

#pragma mark Public

/*!
 @brief The following constructors are for use by you for whatever
  purpose you can think of.Constructing the exception in this
  manner makes the exception behave in the normal way - i.e., as
  documented in the class "Throwable".
 The fields "errorToken",
  "expectedTokenSequences", and "tokenImage" do not contain
  relevant information.  The JavaCC generated code does not use
  these constructors.
 */
- (instancetype __nonnull)init;

/*!
 @brief Constructor with message.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message;

/*!
 @brief This constructor is used by the method "generateParseException"
  in the generated parser.Calling this constructor generates
  a new object of this type with the fields "currentToken",
  "expectedTokenSequences", and "tokenImage" set.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:(OrgApacheLuceneQueryparserFlexibleStandardParserToken *)currentTokenVal
                                                                          withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                                                      withNSStringArray:(IOSObjectArray *)tokenImageVal;

#pragma mark Package-Private

/*!
 @brief Used to convert raw characters to their escaped version
  when these raw version cannot be used as part of an ASCII
  string literal.
 */
+ (NSString *)add_escapesWithNSString:(NSString *)str;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)arg0
                                                              withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardParserParseException)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, currentToken_, OrgApacheLuceneQueryparserFlexibleStandardParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, expectedTokenSequences_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, tokenImage_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, eol_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleStandardParserParseException_add_escapesWithNSString_(NSString *str);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardParserParseException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserParseException")
