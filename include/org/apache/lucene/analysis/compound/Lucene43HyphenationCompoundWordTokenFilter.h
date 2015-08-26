//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/Lucene43HyphenationCompoundWordTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_RESTRICT
#define OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_) && (OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_

#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_RESTRICT 1
#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE 1
#include "org/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase.h"

@class OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@class OrgXmlSaxInputSource;

@interface OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter : OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize;

+ (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)getHyphenationTreeWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)hyphenationSource;

+ (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)getHyphenationTreeWithNSString:(NSString *)hyphenationFilename;

#pragma mark Protected

- (void)decompose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, jint minWordSize, jint minSubwordSize, jint maxSubwordSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, jint minWordSize, jint minSubwordSize, jint maxSubwordSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_getHyphenationTreeWithNSString_(NSString *hyphenationFilename);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(OrgXmlSaxInputSource *hyphenationSource);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_INCLUDE_ALL")
