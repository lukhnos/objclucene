//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/ByteRunAutomaton.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/ByteRunAutomaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/RunAutomaton.h"
#include "org/apache/lucene/util/automaton/UTF32ToUTF8.h"

@implementation OrgApacheLuceneUtilAutomatonByteRunAutomaton

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a {
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(self, a);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                  withBoolean:(jboolean)isBinary
                                                      withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(self, a, isBinary, maxDeterminizedStates);
  return self;
}

- (jboolean)runWithByteArray:(IOSByteArray *)s
                     withInt:(jint)offset
                     withInt:(jint)length {
  jint p = initial_;
  jint l = offset + length;
  for (jint i = offset; i < l; i++) {
    p = [self stepWithInt:p withInt:IOSByteArray_Get(nil_chk(s), i) & (jint) 0xFF];
    if (p == -1) return NO;
  }
  return IOSBooleanArray_Get(nil_chk(accept_), p);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:", "ByteRunAutomaton", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:withBoolean:withInt:", "ByteRunAutomaton", NULL, 0x1, NULL, NULL },
    { "runWithByteArray:withInt:withInt:", "run", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonByteRunAutomaton = { 2, "ByteRunAutomaton", "org.apache.lucene.util.automaton", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonByteRunAutomaton;
}

@end

void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a) {
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(self, a, NO, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES);
}

OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a) {
  OrgApacheLuceneUtilAutomatonByteRunAutomaton *self = [OrgApacheLuceneUtilAutomatonByteRunAutomaton alloc];
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(self, a);
  return self;
}

void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates) {
  OrgApacheLuceneUtilAutomatonRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_withInt_(self, isBinary ? a : [((OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *) [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() autorelease]) convertWithOrgApacheLuceneUtilAutomatonAutomaton:a], 256, YES, maxDeterminizedStates);
}

OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates) {
  OrgApacheLuceneUtilAutomatonByteRunAutomaton *self = [OrgApacheLuceneUtilAutomatonByteRunAutomaton alloc];
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(self, a, isBinary, maxDeterminizedStates);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonByteRunAutomaton)
