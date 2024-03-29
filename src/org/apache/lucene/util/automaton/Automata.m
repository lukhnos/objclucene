//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/Automata.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/StringHelper.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.h"
#include "org/apache/lucene/util/automaton/Operations.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/Automata must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAutomatonAutomata ()

- (instancetype)init;

/*!
 @brief Constructs sub-automaton corresponding to decimal numbers of length
  x.substring(n).length().
 */
+ (jint)anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                             withNSString:(NSString *)x
                                                                  withInt:(jint)n;

/*!
 @brief Constructs sub-automaton corresponding to decimal numbers of value at least
  x.substring(n) and length x.substring(n).length().
 */
+ (jint)atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                    withNSString:(NSString *)x
                                                         withInt:(jint)n
                                          withJavaUtilCollection:(id<JavaUtilCollection>)initials
                                                     withBoolean:(jboolean)zeros;

/*!
 @brief Constructs sub-automaton corresponding to decimal numbers of value at most
  x.substring(n) and length x.substring(n).length().
 */
+ (jint)atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                   withNSString:(NSString *)x
                                                        withInt:(jint)n;

/*!
 @brief Constructs sub-automaton corresponding to decimal numbers of value between
  x.substring(n) and y.substring(n) and of length x.substring(n).length()
  (which must be equal to y.substring(n).length()).
 */
+ (jint)betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                    withNSString:(NSString *)x
                                                    withNSString:(NSString *)y
                                                         withInt:(jint)n
                                          withJavaUtilCollection:(id<JavaUtilCollection>)initials
                                                     withBoolean:(jboolean)zeros;

+ (jboolean)suffixIsZerosWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)br
                                                 withInt:(jint)len;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonAutomata_init(OrgApacheLuceneUtilAutomatonAutomata *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonAutomata *new_OrgApacheLuceneUtilAutomatonAutomata_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonAutomata *create_OrgApacheLuceneUtilAutomatonAutomata_init(void);

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n);

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonAutomata_atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_withJavaUtilCollection_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n, id<JavaUtilCollection> initials, jboolean zeros);

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonAutomata_atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n);

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonAutomata_betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withNSString_withInt_withJavaUtilCollection_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, NSString *y, jint n, id<JavaUtilCollection> initials, jboolean zeros);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAutomatonAutomata_suffixIsZerosWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *br, jint len);

@implementation OrgApacheLuceneUtilAutomatonAutomata

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonAutomata_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeEmpty {
  return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeEmptyString {
  return OrgApacheLuceneUtilAutomatonAutomata_makeEmptyString();
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyString {
  return OrgApacheLuceneUtilAutomatonAutomata_makeAnyString();
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyBinary {
  return OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary();
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeAnyChar {
  return OrgApacheLuceneUtilAutomatonAutomata_makeAnyChar();
}

+ (jint)appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                       withInt:(jint)state {
  return OrgApacheLuceneUtilAutomatonAutomata_appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a, state);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeCharWithInt:(jint)c {
  return OrgApacheLuceneUtilAutomatonAutomata_makeCharWithInt_(c);
}

+ (jint)appendCharWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                    withInt:(jint)state
                                                    withInt:(jint)c {
  return OrgApacheLuceneUtilAutomatonAutomata_appendCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(a, state, c);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeCharRangeWithInt:(jint)min
                                                        withInt:(jint)max {
  return OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(min, max);
}

+ (jint)anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                             withNSString:(NSString *)x
                                                                  withInt:(jint)n {
  return OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n);
}

+ (jint)atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                    withNSString:(NSString *)x
                                                         withInt:(jint)n
                                          withJavaUtilCollection:(id<JavaUtilCollection>)initials
                                                     withBoolean:(jboolean)zeros {
  return OrgApacheLuceneUtilAutomatonAutomata_atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, n, initials, zeros);
}

+ (jint)atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                   withNSString:(NSString *)x
                                                        withInt:(jint)n {
  return OrgApacheLuceneUtilAutomatonAutomata_atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n);
}

+ (jint)betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                                                    withNSString:(NSString *)x
                                                    withNSString:(NSString *)y
                                                         withInt:(jint)n
                                          withJavaUtilCollection:(id<JavaUtilCollection>)initials
                                                     withBoolean:(jboolean)zeros {
  return OrgApacheLuceneUtilAutomatonAutomata_betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, y, n, initials, zeros);
}

+ (jboolean)suffixIsZerosWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)br
                                                 withInt:(jint)len {
  return OrgApacheLuceneUtilAutomatonAutomata_suffixIsZerosWithOrgApacheLuceneUtilBytesRef_withInt_(br, len);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)min
                                                                                 withBoolean:(jboolean)minInclusive
                                                             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)max
                                                                                 withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(min, minInclusive, max, maxInclusive);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeDecimalIntervalWithInt:(jint)min
                                                              withInt:(jint)max
                                                              withInt:(jint)digits {
  return OrgApacheLuceneUtilAutomatonAutomata_makeDecimalIntervalWithInt_withInt_withInt_(min, max, digits);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringWithNSString:(NSString *)s {
  return OrgApacheLuceneUtilAutomatonAutomata_makeStringWithNSString_(s);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeBinaryWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(term);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringWithIntArray:(IOSIntArray *)word
                                                          withInt:(jint)offset
                                                          withInt:(jint)length {
  return OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(word, offset, length);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)makeStringUnionWithJavaUtilCollection:(id<JavaUtilCollection>)utf8Strings {
  return OrgApacheLuceneUtilAutomatonAutomata_makeStringUnionWithJavaUtilCollection_(utf8Strings);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 10, 11, -1, 12, -1, -1 },
    { NULL, "I", 0xa, 13, 9, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 14, 15, -1, 16, -1, -1 },
    { NULL, "Z", 0xa, 17, 18, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 19, 20, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 21, 22, 23, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 24, 25, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 26, 27, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 24, 28, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 29, 30, -1, 31, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(makeEmpty);
  methods[2].selector = @selector(makeEmptyString);
  methods[3].selector = @selector(makeAnyString);
  methods[4].selector = @selector(makeAnyBinary);
  methods[5].selector = @selector(makeAnyChar);
  methods[6].selector = @selector(appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton:withInt:);
  methods[7].selector = @selector(makeCharWithInt:);
  methods[8].selector = @selector(appendCharWithOrgApacheLuceneUtilAutomatonAutomaton:withInt:withInt:);
  methods[9].selector = @selector(makeCharRangeWithInt:withInt:);
  methods[10].selector = @selector(anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withNSString:withInt:);
  methods[11].selector = @selector(atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withNSString:withInt:withJavaUtilCollection:withBoolean:);
  methods[12].selector = @selector(atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withNSString:withInt:);
  methods[13].selector = @selector(betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withNSString:withNSString:withInt:withJavaUtilCollection:withBoolean:);
  methods[14].selector = @selector(suffixIsZerosWithOrgApacheLuceneUtilBytesRef:withInt:);
  methods[15].selector = @selector(makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef:withBoolean:withOrgApacheLuceneUtilBytesRef:withBoolean:);
  methods[16].selector = @selector(makeDecimalIntervalWithInt:withInt:withInt:);
  methods[17].selector = @selector(makeStringWithNSString:);
  methods[18].selector = @selector(makeBinaryWithOrgApacheLuceneUtilBytesRef:);
  methods[19].selector = @selector(makeStringWithIntArray:withInt:withInt:);
  methods[20].selector = @selector(makeStringUnionWithJavaUtilCollection:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "appendAnyChar", "LOrgApacheLuceneUtilAutomatonAutomaton;I", "makeChar", "I", "appendChar", "LOrgApacheLuceneUtilAutomatonAutomaton;II", "makeCharRange", "II", "anyOfRightLength", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;LNSString;I", "atLeast", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;LNSString;ILJavaUtilCollection;Z", "(Lorg/apache/lucene/util/automaton/Automaton$Builder;Ljava/lang/String;ILjava/util/Collection<Ljava/lang/Integer;>;Z)I", "atMost", "between", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;LNSString;LNSString;ILJavaUtilCollection;Z", "(Lorg/apache/lucene/util/automaton/Automaton$Builder;Ljava/lang/String;Ljava/lang/String;ILjava/util/Collection<Ljava/lang/Integer;>;Z)I", "suffixIsZeros", "LOrgApacheLuceneUtilBytesRef;I", "makeBinaryInterval", "LOrgApacheLuceneUtilBytesRef;ZLOrgApacheLuceneUtilBytesRef;Z", "makeDecimalInterval", "III", "LJavaLangIllegalArgumentException;", "makeString", "LNSString;", "makeBinary", "LOrgApacheLuceneUtilBytesRef;", "[III", "makeStringUnion", "LJavaUtilCollection;", "(Ljava/util/Collection<Lorg/apache/lucene/util/BytesRef;>;)Lorg/apache/lucene/util/automaton/Automaton;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonAutomata = { "Automata", "org.apache.lucene.util.automaton", ptrTable, methods, NULL, 7, 0x11, 21, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonAutomata;
}

@end

void OrgApacheLuceneUtilAutomatonAutomata_init(OrgApacheLuceneUtilAutomatonAutomata *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAutomatonAutomata *new_OrgApacheLuceneUtilAutomatonAutomata_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonAutomata, init)
}

OrgApacheLuceneUtilAutomatonAutomata *create_OrgApacheLuceneUtilAutomatonAutomata_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonAutomata, init)
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmpty() {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [a finishState];
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmptyString() {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [a createState];
  [a setAcceptWithInt:0 withBoolean:true];
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyString() {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint s = [a createState];
  [a setAcceptWithInt:s withBoolean:true];
  [a addTransitionWithInt:s withInt:s withInt:JavaLangCharacter_MIN_CODE_POINT withInt:JavaLangCharacter_MAX_CODE_POINT];
  [a finishState];
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary() {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint s = [a createState];
  [a setAcceptWithInt:s withBoolean:true];
  [a addTransitionWithInt:s withInt:s withInt:0 withInt:255];
  [a finishState];
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyChar() {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  return OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(JavaLangCharacter_MIN_CODE_POINT, JavaLangCharacter_MAX_CODE_POINT);
}

jint OrgApacheLuceneUtilAutomatonAutomata_appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint state) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint newState = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a)) createState];
  [a addTransitionWithInt:state withInt:newState withInt:JavaLangCharacter_MIN_CODE_POINT withInt:JavaLangCharacter_MAX_CODE_POINT];
  return newState;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeCharWithInt_(jint c) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  return OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(c, c);
}

jint OrgApacheLuceneUtilAutomatonAutomata_appendCharWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint state, jint c) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint newState = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a)) createState];
  [a addTransitionWithInt:state withInt:newState withInt:c withInt:c];
  return newState;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(jint min, jint max) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  if (min > max) {
    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint s1 = [a createState];
  jint s2 = [a createState];
  [a setAcceptWithInt:s2 withBoolean:true];
  [a addTransitionWithInt:s1 withInt:s2 withInt:min withInt:max];
  [a finishState];
  return a;
}

jint OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint s = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
  if ([((NSString *) nil_chk(x)) java_length] == n) {
    [builder setAcceptWithInt:s withBoolean:true];
  }
  else {
    [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n + 1) withInt:'0' withInt:'9'];
  }
  return s;
}

jint OrgApacheLuceneUtilAutomatonAutomata_atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_withJavaUtilCollection_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n, id<JavaUtilCollection> initials, jboolean zeros) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint s = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
  if ([((NSString *) nil_chk(x)) java_length] == n) {
    [builder setAcceptWithInt:s withBoolean:true];
  }
  else {
    if (zeros) {
      [((id<JavaUtilCollection>) nil_chk(initials)) addWithId:JavaLangInteger_valueOfWithInt_(s)];
    }
    jchar c = [x charAtWithInt:n];
    [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, n + 1, initials, zeros && c == '0') withInt:c];
    if (c < '9') {
      [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n + 1) withInt:(jchar) (c + 1) withInt:'9'];
    }
  }
  return s;
}

jint OrgApacheLuceneUtilAutomatonAutomata_atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, jint n) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint s = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
  if ([((NSString *) nil_chk(x)) java_length] == n) {
    [builder setAcceptWithInt:s withBoolean:true];
  }
  else {
    jchar c = [x charAtWithInt:n];
    [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, (jchar) n + 1) withInt:c];
    if (c > '0') {
      [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n + 1) withInt:'0' withInt:(jchar) (c - 1)];
    }
  }
  return s;
}

jint OrgApacheLuceneUtilAutomatonAutomata_betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withNSString_withInt_withJavaUtilCollection_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, NSString *x, NSString *y, jint n, id<JavaUtilCollection> initials, jboolean zeros) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  jint s = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
  if ([((NSString *) nil_chk(x)) java_length] == n) {
    [builder setAcceptWithInt:s withBoolean:true];
  }
  else {
    if (zeros) {
      [((id<JavaUtilCollection>) nil_chk(initials)) addWithId:JavaLangInteger_valueOfWithInt_(s)];
    }
    jchar cx = [x charAtWithInt:n];
    jchar cy = [((NSString *) nil_chk(y)) charAtWithInt:n];
    if (cx == cy) {
      [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, y, n + 1, initials, zeros && cx == '0') withInt:cx];
    }
    else {
      [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_atLeastWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, n + 1, initials, zeros && cx == '0') withInt:cx];
      [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_atMostWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, y, n + 1) withInt:cy];
      if (cx + 1 < cy) {
        [builder addTransitionWithInt:s withInt:OrgApacheLuceneUtilAutomatonAutomata_anyOfRightLengthWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withInt_(builder, x, n + 1) withInt:(jchar) (cx + 1) withInt:(jchar) (cy - 1)];
      }
    }
  }
  return s;
}

jboolean OrgApacheLuceneUtilAutomatonAutomata_suffixIsZerosWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *br, jint len) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  for (jint i = len; i < ((OrgApacheLuceneUtilBytesRef *) nil_chk(br))->length_; i++) {
    if (IOSByteArray_Get(nil_chk(br->bytes_), br->offset_ + i) != 0) {
      return false;
    }
  }
  return true;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(OrgApacheLuceneUtilBytesRef *min, jboolean minInclusive, OrgApacheLuceneUtilBytesRef *max, jboolean maxInclusive) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  if (min == nil && minInclusive == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minInclusive must be true when min is null (open ended)");
  }
  if (max == nil && maxInclusive == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxInclusive must be true when max is null (open ended)");
  }
  if (min == nil) {
    min = create_OrgApacheLuceneUtilBytesRef_init();
    minInclusive = true;
  }
  jint cmp;
  if (max != nil) {
    cmp = [min compareToWithId:max];
  }
  else {
    cmp = -1;
    if (min->length_ == 0 && minInclusive) {
      return OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary();
    }
  }
  if (cmp == 0) {
    if (minInclusive == false || maxInclusive == false) {
      return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
    }
    else {
      return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(min);
    }
  }
  else if (cmp > 0) {
    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
  if (max != nil && OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(max, min) && OrgApacheLuceneUtilAutomatonAutomata_suffixIsZerosWithOrgApacheLuceneUtilBytesRef_withInt_(max, min->length_)) {
    jint maxLength = max->length_;
    JreAssert(maxLength > min->length_, @"org/apache/lucene/util/automaton/Automata.java:282 condition failed: assert maxLength > min.length;");
    if (maxInclusive == false) {
      maxLength--;
    }
    if (maxLength == min->length_) {
      if (minInclusive == false) {
        return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
      }
      else {
        return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(min);
      }
    }
    OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
    jint lastState = [a createState];
    for (jint i = 0; i < min->length_; i++) {
      jint state = [a createState];
      jint label = IOSByteArray_Get(nil_chk(min->bytes_), min->offset_ + i) & (jint) 0xff;
      [a addTransitionWithInt:lastState withInt:state withInt:label];
      lastState = state;
    }
    if (minInclusive) {
      [a setAcceptWithInt:lastState withBoolean:true];
    }
    for (jint i = min->length_; i < maxLength; i++) {
      jint state = [a createState];
      [a addTransitionWithInt:lastState withInt:state withInt:0];
      [a setAcceptWithInt:state withBoolean:true];
      lastState = state;
    }
    [a finishState];
    return a;
  }
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint startState = [a createState];
  jint sinkState = [a createState];
  [a setAcceptWithInt:sinkState withBoolean:true];
  [a addTransitionWithInt:sinkState withInt:sinkState withInt:0 withInt:255];
  jboolean equalPrefix = true;
  jint lastState = startState;
  jint firstMaxState = -1;
  jint sharedPrefixLength = 0;
  for (jint i = 0; i < min->length_; i++) {
    jint minLabel = IOSByteArray_Get(nil_chk(min->bytes_), min->offset_ + i) & (jint) 0xff;
    jint maxLabel;
    if (max != nil && equalPrefix && i < max->length_) {
      maxLabel = IOSByteArray_Get(max->bytes_, max->offset_ + i) & (jint) 0xff;
    }
    else {
      maxLabel = -1;
    }
    jint nextState;
    if (minInclusive && i == min->length_ - 1 && (equalPrefix == false || minLabel != maxLabel)) {
      nextState = sinkState;
    }
    else {
      nextState = [a createState];
    }
    if (equalPrefix) {
      if (minLabel == maxLabel) {
        [a addTransitionWithInt:lastState withInt:nextState withInt:minLabel];
      }
      else if (max == nil) {
        equalPrefix = false;
        sharedPrefixLength = 0;
        [a addTransitionWithInt:lastState withInt:sinkState withInt:minLabel + 1 withInt:(jint) 0xff];
        [a addTransitionWithInt:lastState withInt:nextState withInt:minLabel];
      }
      else {
        JreAssert(maxLabel > minLabel, @"org/apache/lucene/util/automaton/Automata.java:362 condition failed: assert maxLabel > minLabel;");
        [a addTransitionWithInt:lastState withInt:nextState withInt:minLabel];
        if (maxLabel > minLabel + 1) {
          [a addTransitionWithInt:lastState withInt:sinkState withInt:minLabel + 1 withInt:maxLabel - 1];
        }
        if (maxInclusive || i < max->length_ - 1) {
          firstMaxState = [a createState];
          if (i < max->length_ - 1) {
            [a setAcceptWithInt:firstMaxState withBoolean:true];
          }
          [a addTransitionWithInt:lastState withInt:firstMaxState withInt:maxLabel];
        }
        equalPrefix = false;
        sharedPrefixLength = i;
      }
    }
    else {
      [a addTransitionWithInt:lastState withInt:nextState withInt:minLabel];
      if (minLabel < 255) {
        [a addTransitionWithInt:lastState withInt:sinkState withInt:minLabel + 1 withInt:255];
      }
    }
    lastState = nextState;
  }
  if (equalPrefix == false && lastState != sinkState && lastState != startState) {
    [a addTransitionWithInt:lastState withInt:sinkState withInt:0 withInt:255];
  }
  if (minInclusive) {
    [a setAcceptWithInt:lastState withBoolean:true];
  }
  if (max != nil) {
    if (firstMaxState == -1) {
      sharedPrefixLength = min->length_;
    }
    else {
      lastState = firstMaxState;
      sharedPrefixLength++;
    }
    for (jint i = sharedPrefixLength; i < max->length_; i++) {
      jint maxLabel = IOSByteArray_Get(nil_chk(max->bytes_), max->offset_ + i) & (jint) 0xff;
      if (maxLabel > 0) {
        [a addTransitionWithInt:lastState withInt:sinkState withInt:0 withInt:maxLabel - 1];
      }
      if (maxInclusive || i < max->length_ - 1) {
        jint nextState = [a createState];
        if (i < max->length_ - 1) {
          [a setAcceptWithInt:nextState withBoolean:true];
        }
        [a addTransitionWithInt:lastState withInt:nextState withInt:maxLabel];
        lastState = nextState;
      }
    }
    if (maxInclusive) {
      [a setAcceptWithInt:lastState withBoolean:true];
    }
  }
  [a finishState];
  JreAssert([a isDeterministic], [a toDot]);
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeDecimalIntervalWithInt_withInt_withInt_(jint min, jint max, jint digits) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  NSString *x = JavaLangInteger_toStringWithInt_(min);
  NSString *y = JavaLangInteger_toStringWithInt_(max);
  if (min > max || (digits > 0 && [((NSString *) nil_chk(y)) java_length] > digits)) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  jint d;
  if (digits > 0) d = digits;
  else d = [((NSString *) nil_chk(y)) java_length];
  JavaLangStringBuilder *bx = create_JavaLangStringBuilder_init();
  for (jint i = [((NSString *) nil_chk(x)) java_length]; i < d; i++) {
    [bx appendWithChar:'0'];
  }
  [bx appendWithNSString:x];
  x = [bx description];
  JavaLangStringBuilder *by = create_JavaLangStringBuilder_init();
  for (jint i = [((NSString *) nil_chk(y)) java_length]; i < d; i++) {
    [by appendWithChar:'0'];
  }
  [by appendWithNSString:y];
  y = [by description];
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder = create_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  if (digits <= 0) {
    [builder createState];
  }
  id<JavaUtilCollection> initials = create_JavaUtilArrayList_init();
  OrgApacheLuceneUtilAutomatonAutomata_betweenWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withNSString_withNSString_withInt_withJavaUtilCollection_withBoolean_(builder, x, y, 0, initials, digits <= 0);
  OrgApacheLuceneUtilAutomatonAutomaton *a1 = JreRetainedLocalValue([builder finish]);
  if (digits <= 0) {
    [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a1)) addTransitionWithInt:0 withInt:0 withInt:'0'];
    for (JavaLangInteger *boxed__ in initials) {
      jint p = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
      [a1 addEpsilonWithInt:0 withInt:p];
    }
    [a1 finishState];
  }
  return a1;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithNSString_(NSString *s) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint lastState = [a createState];
  for (jint i = 0, cp = 0; i < [((NSString *) nil_chk(s)) java_length]; i += JavaLangCharacter_charCountWithInt_(cp)) {
    jint state = [a createState];
    cp = [s java_codePointAt:i];
    [a addTransitionWithInt:lastState withInt:state withInt:cp];
    lastState = state;
  }
  [a setAcceptWithInt:lastState withBoolean:true];
  [a finishState];
  JreAssert([a isDeterministic], @"org/apache/lucene/util/automaton/Automata.java:516 condition failed: assert a.isDeterministic();");
  JreAssert(OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(a) == false, @"org/apache/lucene/util/automaton/Automata.java:517 condition failed: assert Operations.hasDeadStates(a) == false;");
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *term) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  jint lastState = [a createState];
  for (jint i = 0; i < ((OrgApacheLuceneUtilBytesRef *) nil_chk(term))->length_; i++) {
    jint state = [a createState];
    jint label = IOSByteArray_Get(nil_chk(term->bytes_), term->offset_ + i) & (jint) 0xff;
    [a addTransitionWithInt:lastState withInt:state withInt:label];
    lastState = state;
  }
  [a setAcceptWithInt:lastState withBoolean:true];
  [a finishState];
  JreAssert([a isDeterministic], @"org/apache/lucene/util/automaton/Automata.java:539 condition failed: assert a.isDeterministic();");
  JreAssert(OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(a) == false, @"org/apache/lucene/util/automaton/Automata.java:540 condition failed: assert Operations.hasDeadStates(a) == false;");
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(IOSIntArray *word, jint offset, jint length) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  OrgApacheLuceneUtilAutomatonAutomaton *a = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [a createState];
  jint s = 0;
  for (jint i = offset; i < offset + length; i++) {
    jint s2 = [a createState];
    [a addTransitionWithInt:s withInt:s2 withInt:IOSIntArray_Get(nil_chk(word), i)];
    s = s2;
  }
  [a setAcceptWithInt:s withBoolean:true];
  [a finishState];
  return a;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringUnionWithJavaUtilCollection_(id<JavaUtilCollection> utf8Strings) {
  OrgApacheLuceneUtilAutomatonAutomata_initialize();
  if ([((id<JavaUtilCollection>) nil_chk(utf8Strings)) isEmpty]) {
    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
  else {
    return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(utf8Strings);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonAutomata)
