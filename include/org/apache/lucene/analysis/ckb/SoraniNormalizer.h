//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniNormalizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCkbSoraniNormalizer_RESTRICT
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCkbSoraniNormalizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCkbSoraniNormalizer_) && (OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE_ALL || OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE)
#define _OrgApacheLuceneAnalysisCkbSoraniNormalizer_

@class IOSCharArray;

#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_YEH 0x064a
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DOTLESS_YEH 0x0649
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FARSI_YEH 0x06cc
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KAF 0x0643
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KEHEH 0x06a9
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_HEH 0x0647
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_AE 0x06d5
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_ZWNJ 0x200c
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_HEH_DOACHASHMEE 0x06be
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_TEH_MARBUTA 0x0629
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_REH 0x0631
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_RREH 0x0695
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_RREH_ABOVE 0x0692
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_TATWEEL 0x0640
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FATHATAN 0x064b
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DAMMATAN 0x064c
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KASRATAN 0x064d
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FATHA 0x064e
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DAMMA 0x064f
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KASRA 0x0650
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_SHADDA 0x0651
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_SUKUN 0x0652

@interface OrgApacheLuceneAnalysisCkbSoraniNormalizer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniNormalizer)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, YEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DOTLESS_YEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FARSI_YEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KAF, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KEHEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, HEH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, AE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, ZWNJ, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, HEH_DOACHASHMEE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, TEH_MARBUTA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, REH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, RREH, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, RREH_ABOVE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, TATWEEL, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FATHATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DAMMATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KASRATAN, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FATHA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DAMMA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KASRA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, SHADDA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizer, SUKUN, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCkbSoraniNormalizer_init(OrgApacheLuceneAnalysisCkbSoraniNormalizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniNormalizer *new_OrgApacheLuceneAnalysisCkbSoraniNormalizer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniNormalizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCkbSoraniNormalizer_INCLUDE_ALL")
