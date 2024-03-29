//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/Automata.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonAutomata")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonAutomata
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonAutomata 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonAutomata 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonAutomata

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilAutomatonAutomata_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonAutomata || defined(INCLUDE_OrgApacheLuceneUtilAutomatonAutomata))
#define OrgApacheLuceneUtilAutomatonAutomata_

@class IOSIntArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilCollection;

/*!
 @brief Construction of basic automata.
 */
@interface OrgApacheLuceneUtilAutomatonAutomata : NSObject

#pragma mark Public

/*!
 @brief Accept any single character starting from the specified state, returning the new state
 */
+ (jint)appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                       withInt:(jint)state;

/*!
 @brief Appends the specified character to the specified state, returning a new state.
 */
+ (jint)appendCharWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                    withInt:(jint)state
                                                    withInt:(jint)c;

/*!
 @brief Returns a new (deterministic) automaton that accepts all binary terms.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyBinary;

/*!
 @brief Returns a new (deterministic) automaton that accepts any single codepoint.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyChar;

/*!
 @brief Returns a new (deterministic) automaton that accepts all strings.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyString;

/*!
 @brief Returns a new (deterministic) automaton that accepts the single given
  binary term.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeBinaryWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

/*!
 @brief Creates a new deterministic, minimal automaton accepting
   all binary terms in the specified interval.Note that unlike
   <code>makeDecimalInterval</code>, the returned automaton is infinite,
   because terms behave like floating point numbers leading with
   a decimal point.
 However, in the special case where min == max,
   and both are inclusive, the automata will be finite and accept
   exactly one term.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)min
                                                                                 withBoolean:(jboolean)minInclusive
                                                             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)max
                                                                                 withBoolean:(jboolean)maxInclusive;

/*!
 @brief Returns a new (deterministic) automaton that accepts a single codepoint of
  the given value.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeCharWithInt:(jint)c;

/*!
 @brief Returns a new (deterministic) automaton that accepts a single codepoint whose
  value is in the given interval (including both end points).
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeCharRangeWithInt:(jint)min
                                                        withInt:(jint)max;

/*!
 @brief Returns a new automaton that accepts strings representing decimal (base 10)
  non-negative integers in the given interval.
 @param min minimal value of interval
 @param max maximal value of interval (both end points are included in the           interval)
 @param digits if  &gt;  0, use fixed number of digits (strings must be prefixed           by 0's to obtain the right length) - otherwise, the number of           digits is not fixed (any number of leading 0s is accepted)
 @throw IllegalArgumentExceptionif min &gt; max or if numbers in the
               interval cannot be expressed with the given fixed number of
               digits
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeDecimalIntervalWithInt:(jint)min
                                                              withInt:(jint)max
                                                              withInt:(jint)digits;

/*!
 @brief Returns a new (deterministic) automaton with the empty language.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeEmpty;

/*!
 @brief Returns a new (deterministic) automaton that accepts only the empty string.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeEmptyString;

/*!
 @brief Returns a new (deterministic) automaton that accepts the single given
  string from the specified unicode code points.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringWithIntArray:(IOSIntArray *)word
                                                          withInt:(jint)offset
                                                          withInt:(jint)length;

/*!
 @brief Returns a new (deterministic) automaton that accepts the single given
  string.
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringWithNSString:(NSString *)s;

/*!
 @brief Returns a new (deterministic and minimal) automaton that accepts the union
  of the given collection of <code>BytesRef</code>s representing UTF-8 encoded
  strings.
 @param utf8Strings The input strings, UTF-8 encoded. The collection must be in sorted
            order.
 @return An <code>Automaton</code> accepting all input strings. The resulting
          automaton is codepoint based (full unicode codepoints on
          transitions).
 */
+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringUnionWithJavaUtilCollection:(id<JavaUtilCollection>)utf8Strings;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonAutomata)

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmpty(void);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmptyString(void);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyString(void);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary(void);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyChar(void);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilAutomatonAutomata_appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint state);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeCharWithInt_(jint c);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilAutomatonAutomata_appendCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint state, jint c);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(OrgApacheLuceneUtilBytesRef *min, jboolean minInclusive, OrgApacheLuceneUtilBytesRef *max, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeDecimalIntervalWithInt_withInt_withInt_(jint min, jint max, jint digits);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithNSString_(NSString *s);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *term);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(IOSIntArray *word, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringUnionWithJavaUtilCollection_(id<JavaUtilCollection> utf8Strings);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonAutomata)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonAutomata")
