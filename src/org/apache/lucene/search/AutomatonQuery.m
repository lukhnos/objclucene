//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/AutomatonQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/AutomatonQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/CompiledAutomaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"

@implementation OrgApacheLuceneSearchAutomatonQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
       withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(self, term, automaton);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
       withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                         withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, term, automaton, maxDeterminizedStates);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
       withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                         withInt:(jint)maxDeterminizedStates
                                     withBoolean:(jboolean)isBinary {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(self, term, automaton, maxDeterminizedStates, isBinary);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts {
  return [((OrgApacheLuceneUtilAutomatonCompiledAutomaton *) nil_chk(compiled_)) getTermsEnumWithOrgApacheLuceneIndexTerms:terms];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((jint) [((OrgApacheLuceneUtilAutomatonCompiledAutomaton *) nil_chk(compiled_)) hash]);
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [term_ hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (![super isEqual:obj]) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneSearchAutomatonQuery *other = (OrgApacheLuceneSearchAutomatonQuery *) check_class_cast(obj, [OrgApacheLuceneSearchAutomatonQuery class]);
  if (![((OrgApacheLuceneUtilAutomatonCompiledAutomaton *) nil_chk(compiled_)) isEqual:other->compiled_]) return NO;
  if (term_ == nil) {
    if (other->term_ != nil) return NO;
  }
  else if (![term_ isEqual:other->term_]) return NO;
  return YES;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  if (![((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) field])) isEqual:field]) {
    [buffer appendWithNSString:[term_ field]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[[self getClass] getSimpleName]];
  [buffer appendWithNSString:@" {"];
  [buffer appendWithChar:0x000a];
  [buffer appendWithNSString:[((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton_)) description]];
  [buffer appendWithNSString:@"}"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)getAutomaton {
  return automaton_;
}

- (void)dealloc {
  RELEASE_(automaton_);
  RELEASE_(compiled_);
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneUtilAutomatonAutomaton:", "AutomatonQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneUtilAutomatonAutomaton:withInt:", "AutomatonQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneUtilAutomatonAutomaton:withInt:withBoolean:", "AutomatonQuery", NULL, 0x1, NULL, NULL },
    { "getTermsEnumWithOrgApacheLuceneIndexTerms:withOrgApacheLuceneUtilAttributeSource:", "getTermsEnum", "Lorg.apache.lucene.index.TermsEnum;", 0x4, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAutomaton", NULL, "Lorg.apache.lucene.util.automaton.Automaton;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "automaton_", NULL, 0x14, "Lorg.apache.lucene.util.automaton.Automaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "compiled_", NULL, 0x14, "Lorg.apache.lucene.util.automaton.CompiledAutomaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "term_", NULL, 0x14, "Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchAutomatonQuery = { 2, "AutomatonQuery", "org.apache.lucene.search", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchAutomatonQuery;
}

@end

void OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchAutomatonQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, term, automaton, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES);
}

OrgApacheLuceneSearchAutomatonQuery *new_OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton) {
  OrgApacheLuceneSearchAutomatonQuery *self = [OrgApacheLuceneSearchAutomatonQuery alloc];
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(self, term, automaton);
  return self;
}

void OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneSearchAutomatonQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(self, term, automaton, maxDeterminizedStates, NO);
}

OrgApacheLuceneSearchAutomatonQuery *new_OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchAutomatonQuery *self = [OrgApacheLuceneSearchAutomatonQuery alloc];
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, term, automaton, maxDeterminizedStates);
  return self;
}

void OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(OrgApacheLuceneSearchAutomatonQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates, jboolean isBinary) {
  OrgApacheLuceneSearchMultiTermQuery_initWithNSString_(self, [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]);
  JreStrongAssign(&self->term_, term);
  JreStrongAssign(&self->automaton_, automaton);
  JreStrongAssignAndConsume(&self->compiled_, new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(automaton, nil, YES, maxDeterminizedStates, isBinary));
}

OrgApacheLuceneSearchAutomatonQuery *new_OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneUtilAutomatonAutomaton *automaton, jint maxDeterminizedStates, jboolean isBinary) {
  OrgApacheLuceneSearchAutomatonQuery *self = [OrgApacheLuceneSearchAutomatonQuery alloc];
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(self, term, automaton, maxDeterminizedStates, isBinary);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchAutomatonQuery)
