//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicTokenizerImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl || defined(INCLUDE_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl))
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_

@class IOSObjectArray;
@class JavaIoReader;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

@interface OrgApacheLuceneAnalysisStandardClassicTokenizerImpl : NSObject
@property (readonly, class) jint YYEOF NS_SWIFT_NAME(YYEOF);
@property (readonly, class) jint YYINITIAL NS_SWIFT_NAME(YYINITIAL);
@property (readonly, class) jint ALPHANUM NS_SWIFT_NAME(ALPHANUM);
@property (readonly, class) jint APOSTROPHE NS_SWIFT_NAME(APOSTROPHE);
@property (readonly, class) jint ACRONYM NS_SWIFT_NAME(ACRONYM);
@property (readonly, class) jint COMPANY NS_SWIFT_NAME(COMPANY);
@property (readonly, class) jint EMAIL NS_SWIFT_NAME(EMAIL);
@property (readonly, class) jint HOST NS_SWIFT_NAME(HOST);
@property (readonly, class) jint NUM NS_SWIFT_NAME(NUM);
@property (readonly, class) jint CJ NS_SWIFT_NAME(CJ);
@property (readonly, class) jint ACRONYM_DEP NS_SWIFT_NAME(ACRONYM_DEP);
@property (readonly, class, strong) IOSObjectArray *TOKEN_TYPES NS_SWIFT_NAME(TOKEN_TYPES);

#pragma mark Public

/*!
 @brief Resumes scanning until the next regular expression is matched,
  the end of input is encountered or an I/O-Error occurs.
 @return the next token
 @throw java.io.IOExceptionif any I/O-Error occurs
 */
- (jint)getNextToken;

/*!
 @brief Fills CharTermAttribute with the current token text.
 */
- (void)getTextWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)t;

- (void)setBufferSizeWithInt:(jint)numChars;

/*!
 @brief Enters a new lexical state
 @param newState the new lexical state
 */
- (void)yybeginWithInt:(jint)newState;

- (jint)yychar;

/*!
 @brief Returns the character at position <tt>pos</tt> from the 
  matched text.
 It is equivalent to yytext().charAt(pos), but faster
 @param pos the position of the character to fetch.              A value from 0 to yylength()-1.
 @return the character at position pos
 */
- (jchar)yycharatWithInt:(jint)pos;

/*!
 @brief Closes the input stream.
 */
- (void)yyclose;

/*!
 @brief Returns the length of the matched text region.
 */
- (jint)yylength;

/*!
 @brief Pushes the specified amount of characters back into the input stream.
 They will be read again by then next call of the scanning method
 @param number the number of characters to be read again.                 This number must not be greater than yylength()!
 */
- (void)yypushbackWithInt:(jint)number;

/*!
 @brief Resets the scanner to read from a new input stream.
 Does not close the old reader.
  All internal variables are reset, the old input stream  
 <b>cannot</b> be reused (internal buffer is discarded and lost).
  Lexical state is set to <tt>ZZ_INITIAL</tt>.
  Internal scan buffer is resized down to its initial length, if it has grown.
 @param reader the new input stream
 */
- (void)yyresetWithJavaIoReader:(JavaIoReader *)reader;

/*!
 @brief Returns the current lexical state.
 */
- (jint)yystate;

/*!
 @brief Returns the text matched by the current regular expression.
 */
- (NSString *)yytext;

#pragma mark Package-Private

/*!
 @brief Creates a new scanner
 @param inArg the java.io.Reader to read input from.
 */
- (instancetype __nonnull)initPackagePrivateWithJavaIoReader:(JavaIoReader *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl)

/*!
 @brief This character denotes the end of file
 */
inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_YYEOF(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_YYEOF -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, YYEOF, jint)

/*!
 @brief lexical states
 */
inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_YYINITIAL(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_YYINITIAL 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, YYINITIAL, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_ALPHANUM(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ALPHANUM 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ALPHANUM, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_APOSTROPHE(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_APOSTROPHE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, APOSTROPHE, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_ACRONYM(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ACRONYM 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ACRONYM, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_COMPANY(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_COMPANY 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, COMPANY, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_EMAIL(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_EMAIL 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, EMAIL, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_HOST(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_HOST 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, HOST, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_NUM(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_NUM 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, NUM, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_CJ(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_CJ 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, CJ, jint)

inline jint OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_ACRONYM_DEP(void);
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ACRONYM_DEP 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ACRONYM_DEP, jint)

inline IOSObjectArray *OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_get_TOKEN_TYPES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_TOKEN_TYPES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, TOKEN_TYPES, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_initPackagePrivateWithJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicTokenizerImpl *new_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_initPackagePrivateWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicTokenizerImpl *create_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_initPackagePrivateWithJavaIoReader_(JavaIoReader *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl")
