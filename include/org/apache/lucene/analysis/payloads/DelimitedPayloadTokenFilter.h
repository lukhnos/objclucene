//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/DelimitedPayloadTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_RESTRICT
#define OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_) && (OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

#define OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_DEFAULT_DELIMITER '|'

@interface OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter, DEFAULT_DELIMITER, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_init(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter *new_OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilter_INCLUDE_ALL")
