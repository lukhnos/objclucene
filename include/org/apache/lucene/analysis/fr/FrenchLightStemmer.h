//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fr/FrenchLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchLightStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisFrFrenchLightStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchLightStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchLightStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisFrFrenchLightStemmer

#if !defined (OrgApacheLuceneAnalysisFrFrenchLightStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchLightStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisFrFrenchLightStemmer))
#define OrgApacheLuceneAnalysisFrFrenchLightStemmer_

@class IOSCharArray;

/*!
 @brief Light Stemmer for French.
 <p>
 This stemmer implements the "UniNE" algorithm in:
 <i>Light Stemming Approaches for the French, Portuguese, German and Hungarian Languages</i>
 Jacques Savoy
 */
@interface OrgApacheLuceneAnalysisFrFrenchLightStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFrFrenchLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFrFrenchLightStemmer_init(OrgApacheLuceneAnalysisFrFrenchLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFrFrenchLightStemmer *new_OrgApacheLuceneAnalysisFrFrenchLightStemmer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFrFrenchLightStemmer *create_OrgApacheLuceneAnalysisFrFrenchLightStemmer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFrFrenchLightStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchLightStemmer")
