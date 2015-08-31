//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/StopFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCoreStopFilter_RESTRICT
#define OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCoreStopFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCoreStopFilter_) && (OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCoreStopFilter_

#define OrgApacheLuceneAnalysisUtilFilteringTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilFilteringTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/util/FilteringTokenFilter.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@protocol JavaUtilList;

@interface OrgApacheLuceneAnalysisCoreStopFilter : OrgApacheLuceneAnalysisUtilFilteringTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)makeStopSetWithJavaUtilList:(id<JavaUtilList>)stopWords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)makeStopSetWithJavaUtilList:(id<JavaUtilList>)stopWords
                                                             withBoolean:(jboolean)ignoreCase;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)makeStopSetWithNSStringArray:(IOSObjectArray *)stopWords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)makeStopSetWithNSStringArray:(IOSObjectArray *)stopWords
                                                              withBoolean:(jboolean)ignoreCase;

#pragma mark Protected

- (jboolean)accept;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreStopFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCoreStopFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreStopFilter *new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithNSStringArray_(IOSObjectArray *stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithJavaUtilList_(id<JavaUtilList> stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithNSStringArray_withBoolean_(IOSObjectArray *stopWords, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithJavaUtilList_withBoolean_(id<JavaUtilList> stopWords, jboolean ignoreCase);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreStopFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCoreStopFilter_INCLUDE_ALL")