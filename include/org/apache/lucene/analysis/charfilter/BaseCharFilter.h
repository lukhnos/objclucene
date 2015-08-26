//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/BaseCharFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCharfilterBaseCharFilter_RESTRICT
#define OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCharfilterBaseCharFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCharfilterBaseCharFilter_) && (OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCharfilterBaseCharFilter_

#define OrgApacheLuceneAnalysisCharFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisCharFilter_INCLUDE 1
#include "org/apache/lucene/analysis/CharFilter.h"

@class JavaIoReader;

@interface OrgApacheLuceneAnalysisCharfilterBaseCharFilter : OrgApacheLuceneAnalysisCharFilter

#pragma mark Public

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

#pragma mark Protected

- (void)addOffCorrectMapWithInt:(jint)off
                        withInt:(jint)cumulativeDiff;

- (jint)correctWithInt:(jint)currentOff;

- (jint)getLastCumulativeDiff;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCharfilterBaseCharFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharfilterBaseCharFilter_initWithJavaIoReader_(OrgApacheLuceneAnalysisCharfilterBaseCharFilter *self, JavaIoReader *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharfilterBaseCharFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE_ALL")
