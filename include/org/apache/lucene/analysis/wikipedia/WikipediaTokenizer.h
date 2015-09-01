//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/wikipedia/WikipediaTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_RESTRICT
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_) && (OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE)
#define _OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_

#define OrgApacheLuceneAnalysisTokenizer_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE 1
#include "org/apache/lucene/analysis/Tokenizer.h"

#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_ALPHANUM_ID 0
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_APOSTROPHE_ID 1
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_ACRONYM_ID 2
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_COMPANY_ID 3
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_EMAIL_ID 4
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_HOST_ID 5
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_NUM_ID 6
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_CJ_ID 7
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INTERNAL_LINK_ID 8
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_EXTERNAL_LINK_ID 9
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_CITATION_ID 10
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_CATEGORY_ID 11
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_BOLD_ID 12
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_ITALICS_ID 13
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_BOLD_ITALICS_ID 14
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_HEADING_ID 15
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_SUB_HEADING_ID 16
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_EXTERNAL_LINK_URL_ID 17
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_TOKENS_ONLY 0
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_UNTOKENIZED_ONLY 1
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_BOTH 2
#define OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_UNTOKENIZED_TOKEN_FLAG 1

@interface OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INTERNAL_LINK_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, INTERNAL_LINK_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_EXTERNAL_LINK_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, EXTERNAL_LINK_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_EXTERNAL_LINK_URL_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, EXTERNAL_LINK_URL_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_CITATION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, CITATION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_CATEGORY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, CATEGORY_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_BOLD_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, BOLD_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_ITALICS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, ITALICS_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_BOLD_ITALICS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, BOLD_ITALICS_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_HEADING_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, HEADING_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_SUB_HEADING_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, SUB_HEADING_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, ALPHANUM_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, APOSTROPHE_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, ACRONYM_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, COMPANY_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, EMAIL_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, HOST_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, NUM_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, CJ_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, INTERNAL_LINK_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, EXTERNAL_LINK_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, CITATION_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, CATEGORY_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, BOLD_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, ITALICS_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, BOLD_ITALICS_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, HEADING_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, SUB_HEADING_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, EXTERNAL_LINK_URL_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, TOKENS_ONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, UNTOKENIZED_ONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, BOTH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer, UNTOKENIZED_TOKEN_FLAG, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_init(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer *new_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_INCLUDE_ALL")
