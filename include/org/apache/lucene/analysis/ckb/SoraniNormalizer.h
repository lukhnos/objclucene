//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniNormalizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniNormalizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniNormalizer

#if !defined (OrgApacheLuceneAnalysisCkbSoraniNormalizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizer || defined(INCLUDE_OrgApacheLuceneAnalysisCkbSoraniNormalizer))
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_

@class IOSCharArray;

/*!
 @brief Normalizes the Unicode representation of Sorani text.
 <p>
 Normalization consists of:
 <ul>
 <li>Alternate forms of 'y' (0064, 0649) are converted to 06CC (FARSI YEH)
 <li>Alternate form of 'k' (0643) is converted to 06A9 (KEHEH)
 <li>Alternate forms of vowel 'e' (0647+200C, word-final 0647, 0629) are converted to 06D5 (AE)
 <li>Alternate (joining) form of 'h' (06BE) is converted to 0647
 <li>Alternate forms of 'rr' (0692, word-initial 0631) are converted to 0695 (REH WITH SMALL V BELOW)
 <li>Harakat, tatweel, and formatting characters such as directional controls are removed.
 </ul>
 */
@interface OrgApacheLuceneAnalysisCkbSoraniNormalizer : NSObject

+ (jchar)YEH;

+ (jchar)DOTLESS_YEH;

+ (jchar)FARSI_YEH;

+ (jchar)KAF;

+ (jchar)KEHEH;

+ (jchar)HEH;

+ (jchar)AE;

+ (jchar)ZWNJ;

+ (jchar)HEH_DOACHASHMEE;

+ (jchar)TEH_MARBUTA;

+ (jchar)REH;

+ (jchar)RREH;

+ (jchar)RREH_ABOVE;

+ (jchar)TATWEEL;

+ (jchar)FATHATAN;

+ (jchar)DAMMATAN;

+ (jchar)KASRATAN;

+ (jchar)FATHA;

+ (jchar)DAMMA;

+ (jchar)KASRA;

+ (jchar)SHADDA;

+ (jchar)SUKUN;

#pragma mark Public

- (instancetype)init;

/*!
 @brief Normalize an input buffer of Sorani text
 @param s input buffer
 @param len length of input buffer
 @return length of input buffer after normalization
 */
- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniNormalizer)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_YEH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_YEH 0x064a
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, YEH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_DOTLESS_YEH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DOTLESS_YEH 0x0649
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DOTLESS_YEH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_FARSI_YEH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FARSI_YEH 0x06cc
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FARSI_YEH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_KAF();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KAF 0x0643
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KAF, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_KEHEH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KEHEH 0x06a9
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KEHEH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_HEH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_HEH 0x0647
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, HEH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_AE();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_AE 0x06d5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, AE, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_ZWNJ();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_ZWNJ 0x200c
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, ZWNJ, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_HEH_DOACHASHMEE();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_HEH_DOACHASHMEE 0x06be
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, HEH_DOACHASHMEE, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_TEH_MARBUTA();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_TEH_MARBUTA 0x0629
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, TEH_MARBUTA, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_REH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_REH 0x0631
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, REH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_RREH();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_RREH 0x0695
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, RREH, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_RREH_ABOVE();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_RREH_ABOVE 0x0692
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, RREH_ABOVE, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_TATWEEL();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_TATWEEL 0x0640
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, TATWEEL, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_FATHATAN();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FATHATAN 0x064b
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FATHATAN, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_DAMMATAN();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DAMMATAN 0x064c
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DAMMATAN, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_KASRATAN();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KASRATAN 0x064d
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KASRATAN, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_FATHA();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_FATHA 0x064e
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, FATHA, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_DAMMA();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_DAMMA 0x064f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, DAMMA, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_KASRA();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_KASRA 0x0650
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, KASRA, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_SHADDA();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_SHADDA 0x0651
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, SHADDA, jchar)

inline jchar OrgApacheLuceneAnalysisCkbSoraniNormalizer_get_SUKUN();
#define OrgApacheLuceneAnalysisCkbSoraniNormalizer_SUKUN 0x0652
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCkbSoraniNormalizer, SUKUN, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCkbSoraniNormalizer_init(OrgApacheLuceneAnalysisCkbSoraniNormalizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniNormalizer *new_OrgApacheLuceneAnalysisCkbSoraniNormalizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniNormalizer *create_OrgApacheLuceneAnalysisCkbSoraniNormalizer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniNormalizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizer")
