//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/StopwordAnalyzerBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_) && (OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_

#define OrgApacheLuceneAnalysisAnalyzer_RESTRICT 1
#define OrgApacheLuceneAnalysisAnalyzer_INCLUDE 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class IOSClass;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@class OrgLukhnosPortmobileFilePath;

@interface OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase : OrgApacheLuceneAnalysisAnalyzer {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stopwords_;
}

#pragma mark Public

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getStopwordSet;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithBoolean:(jboolean)ignoreCase
                                                           withIOSClass:(IOSClass *)aClass
                                                           withNSString:(NSString *)resource
                                                           withNSString:(NSString *)comment;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)stopwords;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithJavaIoReader:(JavaIoReader *)stopwords;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase, stopwords_, OrgApacheLuceneAnalysisUtilCharArraySet *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_init(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(jboolean ignoreCase, IOSClass *aClass, NSString *resource, NSString *comment);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithJavaIoReader_(JavaIoReader *stopwords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_INCLUDE_ALL")
