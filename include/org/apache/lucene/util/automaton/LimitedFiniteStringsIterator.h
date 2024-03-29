//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/LimitedFiniteStringsIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator || defined(INCLUDE_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator))
#define OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_

#define RESTRICT_OrgApacheLuceneUtilAutomatonFiniteStringsIterator 1
#define INCLUDE_OrgApacheLuceneUtilAutomatonFiniteStringsIterator 1
#include "org/apache/lucene/util/automaton/FiniteStringsIterator.h"

@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilIntsRef;

/*!
 @brief <code>FiniteStringsIterator</code> which limits the number of iterated accepted strings.
 If more than <code>limit</code> strings are accepted,
  the first <code>limit</code> strings found are returned. 
 <p>If the <code>Automaton</code> has cycles then this iterator may throw an <code>IllegalArgumentException</code>
 , but this is not guaranteed! 
 <p>Be aware that the iteration order is implementation dependent
  and may change across releases.
 */
@interface OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator : OrgApacheLuceneUtilAutomatonFiniteStringsIterator

#pragma mark Public

/*!
 @brief Constructor.
 @param a Automaton to create finite string from.
 @param limit Maximum number of finite strings to create, or -1 for infinite.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                withInt:(jint)limit;

- (OrgApacheLuceneUtilIntsRef *)next;

/*!
 @brief Number of iterated finite strings.
 */
- (jint)size;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jint limit);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator *new_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator *create_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint limit);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator")
