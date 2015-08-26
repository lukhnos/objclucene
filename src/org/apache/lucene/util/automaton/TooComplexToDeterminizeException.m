//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/TooComplexToDeterminizeException.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/RegExp.h"
#include "org/apache/lucene/util/automaton/TooComplexToDeterminizeException.h"

@interface OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException () {
 @public
  OrgApacheLuceneUtilAutomatonAutomaton *automaton_;
  OrgApacheLuceneUtilAutomatonRegExp *regExp_;
  jint maxDeterminizedStates_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException, automaton_, OrgApacheLuceneUtilAutomatonAutomaton *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException, regExp_, OrgApacheLuceneUtilAutomatonRegExp *)

@implementation OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException

- (instancetype)initWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)regExp
withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException:(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *)cause {
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_(self, regExp, cause);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                                      withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, automaton, maxDeterminizedStates);
  return self;
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)getAutomaton {
  return automaton_;
}

- (OrgApacheLuceneUtilAutomatonRegExp *)getRegExp {
  return regExp_;
}

- (jint)getMaxDeterminizedStates {
  return maxDeterminizedStates_;
}

- (void)dealloc {
  RELEASE_(automaton_);
  RELEASE_(regExp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilAutomatonRegExp:withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException:", "TooComplexToDeterminizeException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:withInt:", "TooComplexToDeterminizeException", NULL, 0x1, NULL, NULL },
    { "getAutomaton", NULL, "Lorg.apache.lucene.util.automaton.Automaton;", 0x1, NULL, NULL },
    { "getRegExp", NULL, "Lorg.apache.lucene.util.automaton.RegExp;", 0x1, NULL, NULL },
    { "getMaxDeterminizedStates", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "automaton_", NULL, 0x92, "Lorg.apache.lucene.util.automaton.Automaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "regExp_", NULL, 0x92, "Lorg.apache.lucene.util.automaton.RegExp;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDeterminizedStates_", NULL, 0x92, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException = { 2, "TooComplexToDeterminizeException", "org.apache.lucene.util.automaton", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException;
}

@end

void OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *self, OrgApacheLuceneUtilAutomatonRegExp *regExp, OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *cause) {
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, JreStrcat("$$$I$", @"Determinizing ", [((OrgApacheLuceneUtilAutomatonRegExp *) nil_chk(regExp)) getOriginalString], @" would result in more than ", ((OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *) nil_chk(cause))->maxDeterminizedStates_, @" states."), cause);
  JreStrongAssign(&self->regExp_, regExp);
  JreStrongAssign(&self->automaton_, cause->automaton_);
  self->maxDeterminizedStates_ = cause->maxDeterminizedStates_;
}

OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *new_OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_(OrgApacheLuceneUtilAutomatonRegExp *regExp, OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *cause) {
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *self = [OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException alloc];
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_(self, regExp, cause);
  return self;
}

void OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates) {
  JavaLangRuntimeException_initWithNSString_(self, JreStrcat("$I$I$I$", @"Determinizing automaton with ", [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton)) getNumStates], @" states and ", [automaton getNumTransitions], @" transitions would result in more than ", maxDeterminizedStates, @" states."));
  JreStrongAssign(&self->automaton_, automaton);
  JreStrongAssign(&self->regExp_, nil);
  self->maxDeterminizedStates_ = maxDeterminizedStates;
}

OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *new_OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates) {
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *self = [OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException alloc];
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, automaton, maxDeterminizedStates);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException)
