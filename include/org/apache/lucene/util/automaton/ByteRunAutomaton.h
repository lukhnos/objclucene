//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/ByteRunAutomaton.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonByteRunAutomaton_RESTRICT
#define OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonByteRunAutomaton_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonByteRunAutomaton_) && (OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonByteRunAutomaton_

#define OrgApacheLuceneUtilAutomatonRunAutomaton_RESTRICT 1
#define OrgApacheLuceneUtilAutomatonRunAutomaton_INCLUDE 1
#include "org/apache/lucene/util/automaton/RunAutomaton.h"

@class IOSByteArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;

@interface OrgApacheLuceneUtilAutomatonByteRunAutomaton : OrgApacheLuceneUtilAutomatonRunAutomaton

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                  withBoolean:(jboolean)isBinary
                                                      withInt:(jint)maxDeterminizedStates;

- (jboolean)runWithByteArray:(IOSByteArray *)s
                     withInt:(jint)offset
                     withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonByteRunAutomaton)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonByteRunAutomaton)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonByteRunAutomaton_INCLUDE_ALL")
