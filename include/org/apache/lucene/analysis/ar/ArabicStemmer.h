//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisArArabicStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisArArabicStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisArArabicStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisArArabicStemmer))
#define OrgApacheLuceneAnalysisArArabicStemmer_

@class IOSCharArray;
@class IOSObjectArray;

/*!
 @brief Stemmer for Arabic.
 <p>
   Stemming  is done in-place for efficiency, operating on a termbuffer.  
 <p>
   Stemming is defined as:  
 <ul>
   <li> Removal of attached definite article, conjunction, and prepositions.
   <li> Stemming of common suffixes. 
 </ul>
 */
@interface OrgApacheLuceneAnalysisArArabicStemmer : NSObject
@property (readonly, class) jchar ALEF NS_SWIFT_NAME(ALEF);
@property (readonly, class) jchar BEH NS_SWIFT_NAME(BEH);
@property (readonly, class) jchar TEH_MARBUTA NS_SWIFT_NAME(TEH_MARBUTA);
@property (readonly, class) jchar TEH NS_SWIFT_NAME(TEH);
@property (readonly, class) jchar FEH NS_SWIFT_NAME(FEH);
@property (readonly, class) jchar KAF NS_SWIFT_NAME(KAF);
@property (readonly, class) jchar LAM NS_SWIFT_NAME(LAM);
@property (readonly, class) jchar NOON NS_SWIFT_NAME(NOON);
@property (readonly, class) jchar HEH NS_SWIFT_NAME(HEH);
@property (readonly, class) jchar WAW NS_SWIFT_NAME(WAW);
@property (readonly, class) jchar YEH NS_SWIFT_NAME(YEH);
@property (readonly, class, strong) IOSObjectArray *prefixes NS_SWIFT_NAME(prefixes);
@property (readonly, class, strong) IOSObjectArray *suffixes NS_SWIFT_NAME(suffixes);

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Stem an input buffer of Arabic text.
 @param s input buffer
 @param len length of input buffer
 @return length of input buffer after normalization
 */
- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

/*!
 @brief Stem a prefix off an Arabic word.
 @param s input buffer
 @param len length of input buffer
 @return new length of input buffer after stemming.
 */
- (jint)stemPrefixWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len;

/*!
 @brief Stem suffix(es) off an Arabic word.
 @param s input buffer
 @param len length of input buffer
 @return new length of input buffer after stemming
 */
- (jint)stemSuffixWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len;

#pragma mark Package-Private

/*!
 @brief Returns true if the suffix matches and can be stemmed
 @param s input buffer
 @param len length of input buffer
 @param suffix suffix to check
 @return true if the suffix matches and can be stemmed
 */
- (jboolean)endsWithCheckLengthWithCharArray:(IOSCharArray *)s
                                     withInt:(jint)len
                               withCharArray:(IOSCharArray *)suffix;

/*!
 @brief Returns true if the prefix matches and can be stemmed
 @param s input buffer
 @param len length of input buffer
 @param prefix prefix to check
 @return true if the prefix matches and can be stemmed
 */
- (jboolean)startsWithCheckLengthWithCharArray:(IOSCharArray *)s
                                       withInt:(jint)len
                                 withCharArray:(IOSCharArray *)prefix;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisArArabicStemmer)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_ALEF(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_ALEF 0x0627
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, ALEF, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_BEH(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_BEH 0x0628
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, BEH, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_TEH_MARBUTA(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_TEH_MARBUTA 0x0629
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, TEH_MARBUTA, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_TEH(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_TEH 0x062a
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, TEH, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_FEH(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_FEH 0x0641
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, FEH, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_KAF(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_KAF 0x0643
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, KAF, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_LAM(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_LAM 0x0644
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, LAM, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_NOON(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_NOON 0x0646
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, NOON, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_HEH(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_HEH 0x0647
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, HEH, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_WAW(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_WAW 0x0648
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, WAW, jchar)

inline jchar OrgApacheLuceneAnalysisArArabicStemmer_get_YEH(void);
#define OrgApacheLuceneAnalysisArArabicStemmer_YEH 0x064a
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisArArabicStemmer, YEH, jchar)

inline IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_get_prefixes(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_prefixes;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisArArabicStemmer, prefixes, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_get_suffixes(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_suffixes;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisArArabicStemmer, suffixes, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisArArabicStemmer_init(OrgApacheLuceneAnalysisArArabicStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicStemmer *new_OrgApacheLuceneAnalysisArArabicStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisArArabicStemmer *create_OrgApacheLuceneAnalysisArArabicStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisArArabicStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisArArabicStemmer")
