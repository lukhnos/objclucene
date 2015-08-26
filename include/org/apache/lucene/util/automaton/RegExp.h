//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/RegExp.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonRegExp_RESTRICT
#define OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonRegExp_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonRegExp_) && (OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonRegExp_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonRegExp_

@class JavaLangStringBuilder;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilAutomatonRegExp_KindEnum;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneUtilAutomatonAutomatonProvider;

#define OrgApacheLuceneUtilAutomatonRegExp_INTERSECTION 1
#define OrgApacheLuceneUtilAutomatonRegExp_COMPLEMENT 2
#define OrgApacheLuceneUtilAutomatonRegExp_EMPTY 4
#define OrgApacheLuceneUtilAutomatonRegExp_ANYSTRING 8
#define OrgApacheLuceneUtilAutomatonRegExp_AUTOMATON 16
#define OrgApacheLuceneUtilAutomatonRegExp_INTERVAL 32
#define OrgApacheLuceneUtilAutomatonRegExp_ALL 65535
#define OrgApacheLuceneUtilAutomatonRegExp_NONE 0

@interface OrgApacheLuceneUtilAutomatonRegExp : NSObject {
 @public
  OrgApacheLuceneUtilAutomatonRegExp_KindEnum *kind_;
  OrgApacheLuceneUtilAutomatonRegExp *exp1_, *exp2_;
  NSString *s_;
  jint c_;
  jint min_, max_, digits_;
  jint from_, to_;
  jint flags_;
  jint pos_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)s;

- (instancetype)initWithNSString:(NSString *)s
                         withInt:(jint)syntax_flags;

- (id<JavaUtilSet>)getIdentifiers;

- (NSString *)getOriginalString;

- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomaton;

- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithOrgApacheLuceneUtilAutomatonAutomatonProvider:(id<OrgApacheLuceneUtilAutomatonAutomatonProvider>)automaton_provider
                                                                                                withInt:(jint)maxDeterminizedStates;

- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithInt:(jint)maxDeterminizedStates;

- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithJavaUtilMap:(id<JavaUtilMap>)automata
                                                              withInt:(jint)maxDeterminizedStates;

- (NSString *)description;

- (NSString *)toStringTree;

#pragma mark Package-Private

- (instancetype)init;

- (void)getIdentifiersWithJavaUtilSet:(id<JavaUtilSet>)set;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeAnyChar;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeAnyString;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeAutomatonWithNSString:(NSString *)s;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeCharWithInt:(jint)c;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeCharRangeWithInt:(jint)from
                                                     withInt:(jint)to;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeComplementWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeConcatenationWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp1
                                                         withOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp2;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeEmpty;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeIntersectionWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp1
                                                        withOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp2;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeIntervalWithInt:(jint)min
                                                    withInt:(jint)max
                                                    withInt:(jint)digits;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeOptionalWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp
                                                                                 withInt:(jint)min;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp
                                                                                 withInt:(jint)min
                                                                                 withInt:(jint)max;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeStringWithNSString:(NSString *)s;

+ (OrgApacheLuceneUtilAutomatonRegExp *)makeUnionWithOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp1
                                                 withOrgApacheLuceneUtilAutomatonRegExp:(OrgApacheLuceneUtilAutomatonRegExp *)exp2;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseCharClass;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseCharClasses;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseCharClassExp;

- (jint)parseCharExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseComplExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseConcatExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseInterExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseRepeatExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseSimpleExp;

- (OrgApacheLuceneUtilAutomatonRegExp *)parseUnionExp;

- (void)toStringBuilderWithJavaLangStringBuilder:(JavaLangStringBuilder *)b;

- (void)toStringTreeWithJavaLangStringBuilder:(JavaLangStringBuilder *)b
                                 withNSString:(NSString *)indent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonRegExp)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonRegExp, kind_, OrgApacheLuceneUtilAutomatonRegExp_KindEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonRegExp, exp1_, OrgApacheLuceneUtilAutomatonRegExp *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonRegExp, exp2_, OrgApacheLuceneUtilAutomatonRegExp *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonRegExp, s_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, INTERSECTION, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, COMPLEMENT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, EMPTY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, ANYSTRING, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, AUTOMATON, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, INTERVAL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, ALL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonRegExp, NONE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonRegExp_init(OrgApacheLuceneUtilAutomatonRegExp *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *new_OrgApacheLuceneUtilAutomatonRegExp_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonRegExp_initWithNSString_(OrgApacheLuceneUtilAutomatonRegExp *self, NSString *s);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *new_OrgApacheLuceneUtilAutomatonRegExp_initWithNSString_(NSString *s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonRegExp_initWithNSString_withInt_(OrgApacheLuceneUtilAutomatonRegExp *self, NSString *s, jint syntax_flags);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *new_OrgApacheLuceneUtilAutomatonRegExp_initWithNSString_withInt_(NSString *s, jint syntax_flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeUnionWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp1, OrgApacheLuceneUtilAutomatonRegExp *exp2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeConcatenationWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp1, OrgApacheLuceneUtilAutomatonRegExp *exp2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeIntersectionWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp1, OrgApacheLuceneUtilAutomatonRegExp *exp2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeOptionalWithOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp_withInt_(OrgApacheLuceneUtilAutomatonRegExp *exp, jint min);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeRepeatWithOrgApacheLuceneUtilAutomatonRegExp_withInt_withInt_(OrgApacheLuceneUtilAutomatonRegExp *exp, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeComplementWithOrgApacheLuceneUtilAutomatonRegExp_(OrgApacheLuceneUtilAutomatonRegExp *exp);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeCharWithInt_(jint c);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeCharRangeWithInt_withInt_(jint from, jint to);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeAnyChar();

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeEmpty();

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeStringWithNSString_(NSString *s);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeAnyString();

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeAutomatonWithNSString_(NSString *s);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp *OrgApacheLuceneUtilAutomatonRegExp_makeIntervalWithInt_withInt_withInt_(jint min, jint max, jint digits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonRegExp)

#endif

#if !defined (_OrgApacheLuceneUtilAutomatonRegExp_KindEnum_) && (OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonRegExp_KindEnum_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonRegExp_KindEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneUtilAutomatonRegExp_Kind) {
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_UNION = 0,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CONCATENATION = 1,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_INTERSECTION = 2,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_OPTIONAL = 3,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT = 4,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT_MIN = 5,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT_MINMAX = 6,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_COMPLEMENT = 7,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CHAR = 8,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CHAR_RANGE = 9,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_ANYCHAR = 10,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_EMPTY = 11,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_STRING = 12,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_ANYSTRING = 13,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_AUTOMATON = 14,
  OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_INTERVAL = 15,
};

@interface OrgApacheLuceneUtilAutomatonRegExp_KindEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values();

+ (OrgApacheLuceneUtilAutomatonRegExp_KindEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp_KindEnum *OrgApacheLuceneUtilAutomatonRegExp_KindEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilAutomatonRegExp_KindEnum)

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonRegExp_KindEnum *OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[];

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_UNION OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_UNION]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_UNION)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_CONCATENATION OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CONCATENATION]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_CONCATENATION)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_INTERSECTION OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_INTERSECTION]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_INTERSECTION)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_OPTIONAL OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_OPTIONAL]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_OPTIONAL)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_REPEAT OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_REPEAT)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_REPEAT_MIN OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT_MIN]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_REPEAT_MIN)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_REPEAT_MINMAX OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_REPEAT_MINMAX]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_REPEAT_MINMAX)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_COMPLEMENT OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_COMPLEMENT]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_COMPLEMENT)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_CHAR OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CHAR]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_CHAR)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_CHAR_RANGE OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_CHAR_RANGE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_CHAR_RANGE)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_ANYCHAR OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_ANYCHAR]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_ANYCHAR)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_EMPTY OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_EMPTY]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_EMPTY)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_STRING OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_STRING]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_STRING)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_ANYSTRING OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_ANYSTRING]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_ANYSTRING)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_AUTOMATON OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_AUTOMATON]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_AUTOMATON)

#define OrgApacheLuceneUtilAutomatonRegExp_KindEnum_REGEXP_INTERVAL OrgApacheLuceneUtilAutomatonRegExp_KindEnum_values_[OrgApacheLuceneUtilAutomatonRegExp_Kind_REGEXP_INTERVAL]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum, REGEXP_INTERVAL)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonRegExp_KindEnum)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonRegExp_INCLUDE_ALL")
