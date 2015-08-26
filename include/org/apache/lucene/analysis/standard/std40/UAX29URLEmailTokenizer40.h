//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/std40/UAX29URLEmailTokenizer40.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_RESTRICT
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_) && (OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE_ALL || OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE)
#define _OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_

#define OrgApacheLuceneAnalysisTokenizer_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class IOSObjectArray;
@class OrgApacheLuceneUtilAttributeFactory;

#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_ALPHANUM 0
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_NUM 1
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_SOUTHEAST_ASIAN 2
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_IDEOGRAPHIC 3
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_HIRAGANA 4
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_KATAKANA 5
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_HANGUL 6
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_URL 7
#define OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_EMAIL 8

@interface OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40 : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

- (void)close;

- (void)end;

- (jint)getMaxTokenLength;

- (jboolean)incrementToken;

- (void)reset;

- (void)setMaxTokenLengthWithInt:(jint)length;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, ALPHANUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, NUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, SOUTHEAST_ASIAN, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, IDEOGRAPHIC, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, HIRAGANA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, KATAKANA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, HANGUL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, URL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, EMAIL, jint)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_TOKEN_TYPES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40, TOKEN_TYPES_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_init(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40 *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40 *new_OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40 *self, OrgApacheLuceneUtilAttributeFactory *factory);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40 *new_OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisStandardStd40UAX29URLEmailTokenizer40_INCLUDE_ALL")
