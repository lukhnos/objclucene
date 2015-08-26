//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/WildcardQuery.java
//

#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/AutomatonQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/WildcardQuery.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"

@implementation OrgApacheLuceneSearchWildcardQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(self, term, maxDeterminizedStates);
  return self;
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)wildcardquery {
  return OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(wildcardquery);
}

- (OrgApacheLuceneIndexTerm *)getTerm {
  return term_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [buffer appendWithNSString:[self getField]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term_)) text]];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerm:", "WildcardQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withInt:", "WildcardQuery", NULL, 0x1, NULL, NULL },
    { "toAutomatonWithOrgApacheLuceneIndexTerm:", "toAutomaton", "Lorg.apache.lucene.util.automaton.Automaton;", 0x9, NULL, NULL },
    { "getTerm", NULL, "Lorg.apache.lucene.index.Term;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "WILDCARD_STRING", "WILDCARD_STRING", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_STRING },
    { "WILDCARD_CHAR", "WILDCARD_CHAR", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_CHAR },
    { "WILDCARD_ESCAPE", "WILDCARD_ESCAPE", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_ESCAPE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchWildcardQuery = { 2, "WildcardQuery", "org.apache.lucene.search", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchWildcardQuery;
}

@end

void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(self, term, OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(term));
}

OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchWildcardQuery *self = [OrgApacheLuceneSearchWildcardQuery alloc];
  OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, term, OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(term), maxDeterminizedStates);
}

OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchWildcardQuery *self = [OrgApacheLuceneSearchWildcardQuery alloc];
  OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(self, term, maxDeterminizedStates);
  return self;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *wildcardquery) {
  OrgApacheLuceneSearchWildcardQuery_initialize();
  id<JavaUtilList> automata = [new_JavaUtilArrayList_init() autorelease];
  NSString *wildcardText = [((OrgApacheLuceneIndexTerm *) nil_chk(wildcardquery)) text];
  for (jint i = 0; i < ((jint) [((NSString *) nil_chk(wildcardText)) length]); ) {
    jint c = [wildcardText codePointAt:i];
    jint length = JavaLangCharacter_charCountWithInt_(c);
    switch (c) {
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_STRING:
      [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeAnyString()];
      break;
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_CHAR:
      [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeAnyChar()];
      break;
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_ESCAPE:
      if (i + length < ((jint) [wildcardText length])) {
        jint nextChar = [wildcardText codePointAt:i + length];
        length += JavaLangCharacter_charCountWithInt_(nextChar);
        [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeCharWithInt_(nextChar)];
        break;
      }
      default:
      [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeCharWithInt_(c)];
    }
    i += length;
  }
  return OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(automata);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchWildcardQuery)
