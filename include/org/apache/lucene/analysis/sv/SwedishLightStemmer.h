//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sv/SwedishLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisSvSwedishLightStemmer_RESTRICT
#define OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisSvSwedishLightStemmer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisSvSwedishLightStemmer_) && (OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE_ALL || OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE)
#define _OrgApacheLuceneAnalysisSvSwedishLightStemmer_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisSvSwedishLightStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSvSwedishLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(OrgApacheLuceneAnalysisSvSwedishLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSvSwedishLightStemmer *new_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSvSwedishLightStemmer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisSvSwedishLightStemmer_INCLUDE_ALL")
