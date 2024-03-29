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
#include "org/apache/lucene/search/WildcardQuery.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/WildcardQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchWildcardQuery

+ (jchar)WILDCARD_STRING {
  return OrgApacheLuceneSearchWildcardQuery_WILDCARD_STRING;
}

+ (jchar)WILDCARD_CHAR {
  return OrgApacheLuceneSearchWildcardQuery_WILDCARD_CHAR;
}

+ (jchar)WILDCARD_ESCAPE {
  return OrgApacheLuceneSearchWildcardQuery_WILDCARD_ESCAPE;
}

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
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [buffer appendWithNSString:[self getField]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term_)) text]];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 2, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexTerm:withInt:);
  methods[2].selector = @selector(toAutomatonWithOrgApacheLuceneIndexTerm:);
  methods[3].selector = @selector(getTerm);
  methods[4].selector = @selector(toStringWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "WILDCARD_STRING", "C", .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_STRING, 0x19, -1, -1, -1, -1 },
    { "WILDCARD_CHAR", "C", .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_CHAR, 0x19, -1, -1, -1, -1 },
    { "WILDCARD_ESCAPE", "C", .constantValue.asUnichar = OrgApacheLuceneSearchWildcardQuery_WILDCARD_ESCAPE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneIndexTerm;I", "toAutomaton", "toString", "LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchWildcardQuery = { "WildcardQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchWildcardQuery;
}

@end

void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_(self, term, OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(term));
}

OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

OrgApacheLuceneSearchWildcardQuery *create_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term, jint maxDeterminizedStates) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, term, OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(term), maxDeterminizedStates);
}

OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxDeterminizedStates) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_withInt_, term, maxDeterminizedStates)
}

OrgApacheLuceneSearchWildcardQuery *create_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxDeterminizedStates) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_withInt_, term, maxDeterminizedStates)
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneSearchWildcardQuery_toAutomatonWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *wildcardquery) {
  OrgApacheLuceneSearchWildcardQuery_initialize();
  id<JavaUtilList> automata = create_JavaUtilArrayList_init();
  NSString *wildcardText = JreRetainedLocalValue([((OrgApacheLuceneIndexTerm *) nil_chk(wildcardquery)) text]);
  for (jint i = 0; i < [((NSString *) nil_chk(wildcardText)) java_length]; ) {
    jint c = [wildcardText java_codePointAt:i];
    jint length = JavaLangCharacter_charCountWithInt_(c);
    switch (c) {
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_STRING:
      [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeAnyString()];
      break;
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_CHAR:
      [automata addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeAnyChar()];
      break;
      case OrgApacheLuceneSearchWildcardQuery_WILDCARD_ESCAPE:
      if (i + length < [wildcardText java_length]) {
        jint nextChar = [wildcardText java_codePointAt:i + length];
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
