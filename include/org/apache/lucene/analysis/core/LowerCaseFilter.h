//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LowerCaseFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCoreLowerCaseFilter_RESTRICT
#define OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCoreLowerCaseFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCoreLowerCaseFilter_) && (OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCoreLowerCaseFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisCoreLowerCaseFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLowerCaseFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCoreLowerCaseFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseFilter *new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLowerCaseFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCoreLowerCaseFilter_INCLUDE_ALL")
