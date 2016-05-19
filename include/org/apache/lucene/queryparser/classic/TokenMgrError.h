//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/TokenMgrError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserClassicTokenMgrError")
#ifdef RESTRICT_OrgApacheLuceneQueryparserClassicTokenMgrError
#define INCLUDE_ALL_OrgApacheLuceneQueryparserClassicTokenMgrError 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserClassicTokenMgrError 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserClassicTokenMgrError

#if !defined (OrgApacheLuceneQueryparserClassicTokenMgrError_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserClassicTokenMgrError || defined(INCLUDE_OrgApacheLuceneQueryparserClassicTokenMgrError))
#define OrgApacheLuceneQueryparserClassicTokenMgrError_

#define RESTRICT_JavaLangError 1
#define INCLUDE_JavaLangError 1
#include "java/lang/Error.h"

/*!
 @brief Token Manager Error.
 */
@interface OrgApacheLuceneQueryparserClassicTokenMgrError : JavaLangError {
 @public
  /*!
   @brief Indicates the reason why the exception is thrown.
   It will have
 one of the above 4 values.
   */
  jint errorCode_;
}

+ (jint)LEXICAL_ERROR;

+ (jint)STATIC_LEXER_ERROR;

+ (jint)INVALID_LEXICAL_STATE;

+ (jint)LOOP_DETECTED;

#pragma mark Public

/*!
 @brief No arg constructor.
 */
- (instancetype)init;

/*!
 @brief Full Constructor.
 */
- (instancetype)initWithBoolean:(jboolean)EOFSeen
                        withInt:(jint)lexState
                        withInt:(jint)errorLine
                        withInt:(jint)errorColumn
                   withNSString:(NSString *)errorAfter
                       withChar:(jchar)curChar
                        withInt:(jint)reason;

/*!
 @brief Constructor with message and reason.
 */
- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)reason;

/*!
 @brief You can also modify the body of this method to customize your error messages.
 For example, cases like LOOP_DETECTED and INVALID_LEXICAL_STATE are not
 of end-users concern, so you can return something like :
 "Internal Error : Please file a bug report .... "
 from this method for such cases in the release version of your parser.
 */
- (NSString *)getMessage;

#pragma mark Protected

/*!
 @brief Replaces unprintable characters by their escaped (or unicode escaped)
 equivalents in the given string
 */
+ (NSString *)addEscapesWithNSString:(NSString *)str;

/*!
 @brief Returns a detailed message for the Error when it is thrown by the
 token manager to indicate a lexical error.
 Parameters :
 EOFSeen     : indicates if EOF caused the lexical error
 curLexState : lexical state in which this error occurred
 errorLine   : line number when the error occurred
 errorColumn : column number when the error occurred
 errorAfter  : prefix that was seen before this error occurred
 curchar     : the offending character
 Note: You can customize the lexical error message by modifying this method.
 */
+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserClassicTokenMgrError)

/*!
 @brief Lexical error occurred.
 */
inline jint OrgApacheLuceneQueryparserClassicTokenMgrError_get_LEXICAL_ERROR();
#define OrgApacheLuceneQueryparserClassicTokenMgrError_LEXICAL_ERROR 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserClassicTokenMgrError, LEXICAL_ERROR, jint)

/*!
 @brief An attempt was made to create a second instance of a static token manager.
 */
inline jint OrgApacheLuceneQueryparserClassicTokenMgrError_get_STATIC_LEXER_ERROR();
#define OrgApacheLuceneQueryparserClassicTokenMgrError_STATIC_LEXER_ERROR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserClassicTokenMgrError, STATIC_LEXER_ERROR, jint)

/*!
 @brief Tried to change to an invalid lexical state.
 */
inline jint OrgApacheLuceneQueryparserClassicTokenMgrError_get_INVALID_LEXICAL_STATE();
#define OrgApacheLuceneQueryparserClassicTokenMgrError_INVALID_LEXICAL_STATE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserClassicTokenMgrError, INVALID_LEXICAL_STATE, jint)

/*!
 @brief Detected (and bailed out of) an infinite loop in the token manager.
 */
inline jint OrgApacheLuceneQueryparserClassicTokenMgrError_get_LOOP_DETECTED();
#define OrgApacheLuceneQueryparserClassicTokenMgrError_LOOP_DETECTED 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserClassicTokenMgrError, LOOP_DETECTED, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserClassicTokenMgrError_addEscapesWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserClassicTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicTokenMgrError_init(OrgApacheLuceneQueryparserClassicTokenMgrError *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *new_OrgApacheLuceneQueryparserClassicTokenMgrError_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *create_OrgApacheLuceneQueryparserClassicTokenMgrError_init();

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryparserClassicTokenMgrError *self, NSString *message, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *new_OrgApacheLuceneQueryparserClassicTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *create_OrgApacheLuceneQueryparserClassicTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryparserClassicTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *new_OrgApacheLuceneQueryparserClassicTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicTokenMgrError *create_OrgApacheLuceneQueryparserClassicTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicTokenMgrError)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserClassicTokenMgrError")
