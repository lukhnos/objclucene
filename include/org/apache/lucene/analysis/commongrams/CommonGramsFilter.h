//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/commongrams/CommonGramsFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter

#if !defined (OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter))
#define OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Construct bigrams for frequently occurring terms while indexing.
 Single terms
 are still indexed too, with bigrams overlaid. This is achieved through the
 use of <code>PositionIncrementAttribute.setPositionIncrement(int)</code>. Bigrams have a type
 of <code>GRAM_TYPE</code> Example:
 <ul>
 <li>input:"the quick brown fox"</li>
 <li>output:|"the","the-quick"|"brown"|"fox"|</li>
 <li>"the-quick" has a position increment of 0 so it is in the same position
 as "the" "the-quick" has a term.type() of "gram"</li>
 </ul>
 */
@interface OrgApacheLuceneAnalysisCommongramsCommonGramsFilter : OrgApacheLuceneAnalysisTokenFilter

+ (NSString *)GRAM_TYPE;

#pragma mark Public

/*!
 @brief Construct a token stream filtering the given input using a Set of common
 words to create bigrams.
 Outputs both unigrams with position increment and
 bigrams with position increment 0 type=gram where one or both of the words
 in a potential bigram are in the set of common words .
 @param input TokenStream input in filter chain
 @param commonWords The set of common words.
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)commonWords;

/*!
 @brief Inserts bigrams for common words into a token stream.
 For each input token,
 output the token. If the token and/or the following token are in the list
 of common words also output a bigram with position increment 0 and
 type="gram"
 TODO:Consider adding an option to not emit unigram stopwords
 as in CDL XTF BigramStopFilter, CommonGramsQueryFilter would need to be
 changed to work with this.
 TODO: Consider optimizing for the case of three
 commongrams i.e "man of the year" normally produces 3 bigrams: "man-of",
 "of-the", "the-year" but with proper management of positions we could
 eliminate the middle bigram "of-the"and save a disk seek and a whole set of
 position lookups.
 */
- (jboolean)incrementToken;

/*!
 
 */
- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter)

inline NSString *OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_get_GRAM_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_GRAM_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, GRAM_TYPE, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *commonWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *new_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *commonWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *create_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *commonWords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter")
