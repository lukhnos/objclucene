//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/es/SpanishLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisEsSpanishLightStemmer_RESTRICT
#define OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisEsSpanishLightStemmer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisEsSpanishLightStemmer_) && (OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE_ALL || OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE)
#define _OrgApacheLuceneAnalysisEsSpanishLightStemmer_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisEsSpanishLightStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEsSpanishLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEsSpanishLightStemmer_init(OrgApacheLuceneAnalysisEsSpanishLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEsSpanishLightStemmer *new_OrgApacheLuceneAnalysisEsSpanishLightStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEsSpanishLightStemmer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisEsSpanishLightStemmer_INCLUDE_ALL")
