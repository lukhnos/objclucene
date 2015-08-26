//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicTokenizerImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_RESTRICT
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_) && (OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE_ALL || OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE)
#define _OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_

@class IOSObjectArray;
@class JavaIoReader;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_YYEOF -1
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_YYINITIAL 0
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ALPHANUM 0
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_APOSTROPHE 1
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ACRONYM 2
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_COMPANY 3
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_EMAIL 4
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_HOST 5
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_NUM 6
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_CJ 7
#define OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_ACRONYM_DEP 8

@interface OrgApacheLuceneAnalysisStandardClassicTokenizerImpl : NSObject

#pragma mark Public

- (jint)getNextToken;

- (void)getTextWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)t;

- (void)setBufferSizeWithInt:(jint)numChars;

- (void)yybeginWithInt:(jint)newState;

- (jint)yychar;

- (jchar)yycharatWithInt:(jint)pos;

- (void)yyclose;

- (jint)yylength;

- (void)yypushbackWithInt:(jint)number;

- (void)yyresetWithJavaIoReader:(JavaIoReader *)reader;

- (jint)yystate;

- (NSString *)yytext;

#pragma mark Package-Private

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, YYEOF, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, YYINITIAL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ALPHANUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, APOSTROPHE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ACRONYM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, COMPANY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, EMAIL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, HOST, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, NUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, CJ, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, ACRONYM_DEP, jint)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_TOKEN_TYPES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl, TOKEN_TYPES_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicTokenizerImpl *new_OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_initWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicTokenizerImpl)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisStandardClassicTokenizerImpl_INCLUDE_ALL")
