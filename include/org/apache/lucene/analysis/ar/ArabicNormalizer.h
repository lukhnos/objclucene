//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicNormalizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisArArabicNormalizer_RESTRICT
#define OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisArArabicNormalizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisArArabicNormalizer_) && (OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE_ALL || OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE)
#define _OrgApacheLuceneAnalysisArArabicNormalizer_

@class IOSCharArray;

#define OrgApacheLuceneAnalysisArArabicNormalizer_ALEF 0x0627
#define OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_MADDA 0x0622
#define OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_ABOVE 0x0623
#define OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_BELOW 0x0625
#define OrgApacheLuceneAnalysisArArabicNormalizer_YEH 0x064a
#define OrgApacheLuceneAnalysisArArabicNormalizer_DOTLESS_YEH 0x0649
#define OrgApacheLuceneAnalysisArArabicNormalizer_TEH_MARBUTA 0x0629
#define OrgApacheLuceneAnalysisArArabicNormalizer_HEH 0x0647
#define OrgApacheLuceneAnalysisArArabicNormalizer_TATWEEL 0x0640
#define OrgApacheLuceneAnalysisArArabicNormalizer_FATHATAN 0x064b
#define OrgApacheLuceneAnalysisArArabicNormalizer_DAMMATAN 0x064c
#define OrgApacheLuceneAnalysisArArabicNormalizer_KASRATAN 0x064d
#define OrgApacheLuceneAnalysisArArabicNormalizer_FATHA 0x064e
#define OrgApacheLuceneAnalysisArArabicNormalizer_DAMMA 0x064f
#define OrgApacheLuceneAnalysisArArabicNormalizer_KASRA 0x0650
#define OrgApacheLuceneAnalysisArArabicNormalizer_SHADDA 0x0651
#define OrgApacheLuceneAnalysisArArabicNormalizer_SUKUN 0x0652

@interface OrgApacheLuceneAnalysisArArabicNormalizer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisArArabicNormalizer)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, ALEF, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, ALEF_MADDA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, ALEF_HAMZA_ABOVE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, ALEF_HAMZA_BELOW, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, YEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, DOTLESS_YEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, TEH_MARBUTA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, HEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, TATWEEL, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, FATHATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, DAMMATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, KASRATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, FATHA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, DAMMA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, KASRA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, SHADDA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicNormalizer, SUKUN, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisArArabicNormalizer_init(OrgApacheLuceneAnalysisArArabicNormalizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicNormalizer *new_OrgApacheLuceneAnalysisArArabicNormalizer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisArArabicNormalizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisArArabicNormalizer_INCLUDE_ALL")
