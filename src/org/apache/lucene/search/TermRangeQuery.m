//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermRangeQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/AutomatonQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermRangeQuery.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"

@interface OrgApacheLuceneSearchTermRangeQuery () {
 @public
  OrgApacheLuceneUtilBytesRef *lowerTerm_;
  OrgApacheLuceneUtilBytesRef *upperTerm_;
  jboolean includeLower_;
  jboolean includeUpper_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, lowerTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, upperTerm_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneSearchTermRangeQuery

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerTerm
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, field, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerTerm
                                                      withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperTerm
                                                                          withBoolean:(jboolean)includeLower
                                                                          withBoolean:(jboolean)includeUpper {
  return OrgApacheLuceneSearchTermRangeQuery_toAutomatonWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(lowerTerm, upperTerm, includeLower, includeUpper);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [buffer appendWithNSString:[self getField]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithChar:includeLower_ ? '[' : '{'];
  [buffer appendWithNSString:lowerTerm_ != nil ? ([@"*" isEqual:OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(lowerTerm_)] ? @"\\*" : OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(lowerTerm_)) : @"*"];
  [buffer appendWithNSString:@" TO "];
  [buffer appendWithNSString:upperTerm_ != nil ? ([@"*" isEqual:OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(upperTerm_)] ? @"\\*" : OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(upperTerm_)) : @"*"];
  [buffer appendWithChar:includeUpper_ ? ']' : '}'];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + (includeLower_ ? 1231 : 1237);
  result = prime * result + (includeUpper_ ? 1231 : 1237);
  result = prime * result + ((lowerTerm_ == nil) ? 0 : ((jint) [lowerTerm_ hash]));
  result = prime * result + ((upperTerm_ == nil) ? 0 : ((jint) [upperTerm_ hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (![super isEqual:obj]) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneSearchTermRangeQuery *other = (OrgApacheLuceneSearchTermRangeQuery *) check_class_cast(obj, [OrgApacheLuceneSearchTermRangeQuery class]);
  if (includeLower_ != other->includeLower_) return NO;
  if (includeUpper_ != other->includeUpper_) return NO;
  if (lowerTerm_ == nil) {
    if (other->lowerTerm_ != nil) return NO;
  }
  else if (![lowerTerm_ isEqual:other->lowerTerm_]) return NO;
  if (upperTerm_ == nil) {
    if (other->upperTerm_ != nil) return NO;
  }
  else if (![upperTerm_ isEqual:other->upperTerm_]) return NO;
  return YES;
}

- (void)dealloc {
  RELEASE_(lowerTerm_);
  RELEASE_(upperTerm_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:", "TermRangeQuery", NULL, 0x1, NULL, NULL },
    { "toAutomatonWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:", "toAutomaton", "Lorg.apache.lucene.util.automaton.Automaton;", 0x9, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lowerTerm_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "upperTerm_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "includeLower_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "includeUpper_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermRangeQuery = { 2, "TermRangeQuery", "org.apache.lucene.search", NULL, 0x1, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermRangeQuery;
}

@end

void OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchTermRangeQuery *self, NSString *field, OrgApacheLuceneUtilBytesRef *lowerTerm, OrgApacheLuceneUtilBytesRef *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchAutomatonQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(self, [new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, lowerTerm) autorelease], OrgApacheLuceneSearchTermRangeQuery_toAutomatonWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(lowerTerm, upperTerm, includeLower, includeUpper), JavaLangInteger_MAX_VALUE, YES);
  JreStrongAssign(&self->lowerTerm_, lowerTerm);
  JreStrongAssign(&self->upperTerm_, upperTerm);
  self->includeLower_ = includeLower;
  self->includeUpper_ = includeUpper;
}

OrgApacheLuceneSearchTermRangeQuery *new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerTerm, OrgApacheLuceneUtilBytesRef *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchTermRangeQuery *self = [OrgApacheLuceneSearchTermRangeQuery alloc];
  OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, field, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneSearchTermRangeQuery_toAutomatonWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneUtilBytesRef *lowerTerm, OrgApacheLuceneUtilBytesRef *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchTermRangeQuery_initialize();
  if (lowerTerm == nil) {
    includeLower = YES;
  }
  if (upperTerm == nil) {
    includeUpper = YES;
  }
  return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(lowerTerm, includeLower, upperTerm, includeUpper);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermRangeQuery)
