//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/HyphenationTree.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_RESTRICT
#define OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_) && (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_

#define OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_RESTRICT 1
#define OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE 1
#include "org/apache/lucene/analysis/compound/hyphenation/TernaryTree.h"

#define OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer_RESTRICT 1
#define OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer_INCLUDE 1
#include "org/apache/lucene/analysis/compound/hyphenation/PatternConsumer.h"

@class IOSByteArray;
@class IOSCharArray;
@class JavaIoPrintStream;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class OrgApacheLuceneAnalysisCompoundHyphenationByteVector;
@class OrgApacheLuceneAnalysisCompoundHyphenationHyphenation;
@class OrgXmlSaxInputSource;

@interface OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree : OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree < OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer > {
 @public
  OrgApacheLuceneAnalysisCompoundHyphenationByteVector *vspace_;
  JavaUtilHashMap *stoplist_;
  OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *classmap_;
}

#pragma mark Public

- (instancetype)init;

- (void)addClassWithNSString:(NSString *)chargroup;

- (void)addExceptionWithNSString:(NSString *)word
           withJavaUtilArrayList:(JavaUtilArrayList *)hyphenatedword;

- (void)addPatternWithNSString:(NSString *)pattern
                  withNSString:(NSString *)ivalue;

- (NSString *)findPatternWithNSString:(NSString *)pat;

- (OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *)hyphenateWithCharArray:(IOSCharArray *)w
                                                                          withInt:(jint)offset
                                                                          withInt:(jint)len
                                                                          withInt:(jint)remainCharCount
                                                                          withInt:(jint)pushCharCount;

- (OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *)hyphenateWithNSString:(NSString *)word
                                                                         withInt:(jint)remainCharCount
                                                                         withInt:(jint)pushCharCount;

- (void)loadPatternsWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source;

- (void)printStatsWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

#pragma mark Protected

- (IOSByteArray *)getValuesWithInt:(jint)k;

- (jint)hstrcmpWithCharArray:(IOSCharArray *)s
                     withInt:(jint)si
               withCharArray:(IOSCharArray *)t
                     withInt:(jint)ti;

- (jint)packValuesWithNSString:(NSString *)values;

- (void)searchPatternsWithCharArray:(IOSCharArray *)word
                            withInt:(jint)index
                      withByteArray:(IOSByteArray *)il;

- (NSString *)unpackValuesWithInt:(jint)k;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, vspace_, OrgApacheLuceneAnalysisCompoundHyphenationByteVector *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, stoplist_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, classmap_, OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_INCLUDE_ALL")