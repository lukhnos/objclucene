//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisStandardClassicTokenizer_RESTRICT
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisStandardClassicTokenizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisStandardClassicTokenizer_) && (OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE)
#define _OrgApacheLuceneAnalysisStandardClassicTokenizer_

#define OrgApacheLuceneAnalysisTokenizer_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class IOSObjectArray;
@class OrgApacheLuceneUtilAttributeFactory;

#define OrgApacheLuceneAnalysisStandardClassicTokenizer_ALPHANUM 0
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_APOSTROPHE 1
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_ACRONYM 2
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_COMPANY 3
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_EMAIL 4
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_HOST 5
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_NUM 6
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_CJ 7
#define OrgApacheLuceneAnalysisStandardClassicTokenizer_ACRONYM_DEP 8

@interface OrgApacheLuceneAnalysisStandardClassicTokenizer : OrgApacheLuceneAnalysisTokenizer

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

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicTokenizer)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, ALPHANUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, APOSTROPHE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, ACRONYM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, COMPANY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, EMAIL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, HOST, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, NUM, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, CJ, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, ACRONYM_DEP, jint)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisStandardClassicTokenizer_TOKEN_TYPES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardClassicTokenizer, TOKEN_TYPES_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicTokenizer_init(OrgApacheLuceneAnalysisStandardClassicTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicTokenizer *new_OrgApacheLuceneAnalysisStandardClassicTokenizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisStandardClassicTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicTokenizer *new_OrgApacheLuceneAnalysisStandardClassicTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicTokenizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisStandardClassicTokenizer_INCLUDE_ALL")
