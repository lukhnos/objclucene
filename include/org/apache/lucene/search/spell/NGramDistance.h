//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/NGramDistance.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellNGramDistance")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellNGramDistance
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellNGramDistance 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellNGramDistance 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellNGramDistance

#if !defined (OrgApacheLuceneSearchSpellNGramDistance_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellNGramDistance || defined(INCLUDE_OrgApacheLuceneSearchSpellNGramDistance))
#define OrgApacheLuceneSearchSpellNGramDistance_

#define RESTRICT_OrgApacheLuceneSearchSpellStringDistance 1
#define INCLUDE_OrgApacheLuceneSearchSpellStringDistance 1
#include "org/apache/lucene/search/spell/StringDistance.h"

/*!
 @brief N-Gram version of edit distance based on paper by Grzegorz Kondrak, 
 "N-gram similarity and distance".
 Proceedings of the Twelfth International 
 Conference on String Processing and Information Retrieval (SPIRE 2005), pp. 115-126, 
 Buenos Aires, Argentina, November 2005. 
 http://www.cs.ualberta.ca/~kondrak/papers/spire05.pdf
 This implementation uses the position-based optimization to compute partial
 matches of n-gram sub-strings and adds a null-character prefix of size n-1 
 so that the first character is contained in the same number of n-grams as 
 a middle character.  Null-character prefix matches are discounted so that 
 strings with no matching characters will return a distance of 0.
 */
@interface OrgApacheLuceneSearchSpellNGramDistance : NSObject < OrgApacheLuceneSearchSpellStringDistance >

#pragma mark Public

/*!
 @brief Creates an N-Gram distance measure using n-grams of size 2.
 */
- (instancetype)init;

/*!
 @brief Creates an N-Gram distance measure using n-grams of the specified size.
 @param size The size of the n-gram to be used to compute the string distance.
 */
- (instancetype)initWithInt:(jint)size;

- (jboolean)isEqual:(id)obj;

- (jfloat)getDistanceWithNSString:(NSString *)source
                     withNSString:(NSString *)target;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellNGramDistance)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(OrgApacheLuceneSearchSpellNGramDistance *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellNGramDistance *new_OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellNGramDistance *create_OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(jint size);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellNGramDistance_init(OrgApacheLuceneSearchSpellNGramDistance *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellNGramDistance *new_OrgApacheLuceneSearchSpellNGramDistance_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellNGramDistance *create_OrgApacheLuceneSearchSpellNGramDistance_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellNGramDistance)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellNGramDistance")
