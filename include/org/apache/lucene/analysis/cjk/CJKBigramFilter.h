//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKBigramFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCjkCJKBigramFilter_RESTRICT
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCjkCJKBigramFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCjkCJKBigramFilter_) && (OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCjkCJKBigramFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSIntArray;
@class OrgApacheLuceneAnalysisTokenStream;

#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HAN 1
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HIRAGANA 2
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_KATAKANA 4
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HANGUL 8

@interface OrgApacheLuceneAnalysisCjkCJKBigramFilter : OrgApacheLuceneAnalysisTokenFilter {
 @public
  IOSIntArray *buffer_;
  IOSIntArray *startOffset_;
  IOSIntArray *endOffset_;
  jint bufferLen_;
  jint index_;
  jint lastEndOffset_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)flags;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)flags
                                               withBoolean:(jboolean)outputUnigrams;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKBigramFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, buffer_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, startOffset_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, endOffset_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HAN, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HIRAGANA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, KATAKANA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HANGUL, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_DOUBLE_TYPE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, DOUBLE_TYPE_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_SINGLE_TYPE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, SINGLE_TYPE_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint flags);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint flags, jboolean outputUnigrams);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags, jboolean outputUnigrams) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKBigramFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCjkCJKBigramFilter_INCLUDE_ALL")