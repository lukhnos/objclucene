//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fr/FrenchMinimalStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_RESTRICT
#define OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_) && (OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE_ALL || OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE)
#define _OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisFrFrenchMinimalStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFrFrenchMinimalStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_init(OrgApacheLuceneAnalysisFrFrenchMinimalStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFrFrenchMinimalStemmer *new_OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFrFrenchMinimalStemmer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisFrFrenchMinimalStemmer_INCLUDE_ALL")
