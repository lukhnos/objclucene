//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/German2Stemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/German2Stemmer.h"

static void (*OrgTartarusSnowballExtGerman2Stemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_)(id, SEL, id);

#if __has_feature(objc_arc)
#error "org/tartarus/snowball/ext/German2Stemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgTartarusSnowballExtGerman2Stemmer () {
 @public
  jint I_x_;
  jint I_p2_;
  jint I_p1_;
}

- (void)copy_fromWithOrgTartarusSnowballExtGerman2Stemmer:(OrgTartarusSnowballExtGerman2Stemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_prelude;

- (jboolean)r_mark_regions;

- (jboolean)r_postlude;

- (jboolean)r_R1;

- (jboolean)r_R2;

- (jboolean)r_standard_suffix;

@end

inline jlong OrgTartarusSnowballExtGerman2Stemmer_get_serialVersionUID(void);
#define OrgTartarusSnowballExtGerman2Stemmer_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgTartarusSnowballExtGerman2Stemmer, serialVersionUID, jlong)

inline OrgTartarusSnowballExtGerman2Stemmer *OrgTartarusSnowballExtGerman2Stemmer_get_methodObject(void);
static OrgTartarusSnowballExtGerman2Stemmer *OrgTartarusSnowballExtGerman2Stemmer_methodObject;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, methodObject, OrgTartarusSnowballExtGerman2Stemmer *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_0(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_0, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_1(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_1, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_2(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_2, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_3(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_3, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_4(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_4, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_get_a_5(void);
static IOSObjectArray *OrgTartarusSnowballExtGerman2Stemmer_a_5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, a_5, IOSObjectArray *)

inline IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_get_g_v(void);
static IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_g_v;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, g_v, IOSCharArray *)

inline IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_get_g_s_ending(void);
static IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_g_s_ending;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, g_s_ending, IOSCharArray *)

inline IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_get_g_st_ending(void);
static IOSCharArray *OrgTartarusSnowballExtGerman2Stemmer_g_st_ending;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtGerman2Stemmer, g_st_ending, IOSCharArray *)

__attribute__((unused)) static void OrgTartarusSnowballExtGerman2Stemmer_copy_fromWithOrgTartarusSnowballExtGerman2Stemmer_(OrgTartarusSnowballExtGerman2Stemmer *self, OrgTartarusSnowballExtGerman2Stemmer *other);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_prelude(OrgTartarusSnowballExtGerman2Stemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_mark_regions(OrgTartarusSnowballExtGerman2Stemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_postlude(OrgTartarusSnowballExtGerman2Stemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_R1(OrgTartarusSnowballExtGerman2Stemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_R2(OrgTartarusSnowballExtGerman2Stemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGerman2Stemmer_r_standard_suffix(OrgTartarusSnowballExtGerman2Stemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtGerman2Stemmer)

@implementation OrgTartarusSnowballExtGerman2Stemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgTartarusSnowballExtGerman2Stemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)copy_fromWithOrgTartarusSnowballExtGerman2Stemmer:(OrgTartarusSnowballExtGerman2Stemmer *)other {
  OrgTartarusSnowballExtGerman2Stemmer_copy_fromWithOrgTartarusSnowballExtGerman2Stemmer_(self, other);
}

- (jboolean)r_prelude {
  return OrgTartarusSnowballExtGerman2Stemmer_r_prelude(self);
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtGerman2Stemmer_r_mark_regions(self);
}

- (jboolean)r_postlude {
  return OrgTartarusSnowballExtGerman2Stemmer_r_postlude(self);
}

- (jboolean)r_R1 {
  return OrgTartarusSnowballExtGerman2Stemmer_r_R1(self);
}

- (jboolean)r_R2 {
  return OrgTartarusSnowballExtGerman2Stemmer_r_R2(self);
}

- (jboolean)r_standard_suffix {
  return OrgTartarusSnowballExtGerman2Stemmer_r_standard_suffix(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  v_1 = cursor_;
  do {
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_prelude(self)) {
      goto break_lab0;
    }
  }
  while (false);
  break_lab0: ;
  cursor_ = v_1;
  v_2 = cursor_;
  do {
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_mark_regions(self)) {
      goto break_lab1;
    }
  }
  while (false);
  break_lab1: ;
  cursor_ = v_2;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_3 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_standard_suffix(self)) {
      goto break_lab2;
    }
  }
  while (false);
  break_lab2: ;
  cursor_ = limit_ - v_3;
  cursor_ = limit_backward_;
  v_4 = cursor_;
  do {
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_postlude(self)) {
      goto break_lab3;
    }
  }
  while (false);
  break_lab3: ;
  cursor_ = v_4;
  return true;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtGerman2Stemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtGerman2Stemmer_class_() getName])) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(copy_fromWithOrgTartarusSnowballExtGerman2Stemmer:);
  methods[2].selector = @selector(r_prelude);
  methods[3].selector = @selector(r_mark_regions);
  methods[4].selector = @selector(r_postlude);
  methods[5].selector = @selector(r_R1);
  methods[6].selector = @selector(r_R2);
  methods[7].selector = @selector(r_standard_suffix);
  methods[8].selector = @selector(stem);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgTartarusSnowballExtGerman2Stemmer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "methodObject", "LOrgTartarusSnowballExtGerman2Stemmer;", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
    { "a_0", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "a_1", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "a_2", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "a_3", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "a_4", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "a_5", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "g_v", "[C", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "g_s_ending", "[C", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "g_st_ending", "[C", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "I_x_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "I_p2_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "I_p1_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy_from", "LOrgTartarusSnowballExtGerman2Stemmer;", "equals", "LNSObject;", "hashCode", &OrgTartarusSnowballExtGerman2Stemmer_methodObject, &OrgTartarusSnowballExtGerman2Stemmer_a_0, &OrgTartarusSnowballExtGerman2Stemmer_a_1, &OrgTartarusSnowballExtGerman2Stemmer_a_2, &OrgTartarusSnowballExtGerman2Stemmer_a_3, &OrgTartarusSnowballExtGerman2Stemmer_a_4, &OrgTartarusSnowballExtGerman2Stemmer_a_5, &OrgTartarusSnowballExtGerman2Stemmer_g_v, &OrgTartarusSnowballExtGerman2Stemmer_g_s_ending, &OrgTartarusSnowballExtGerman2Stemmer_g_st_ending };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtGerman2Stemmer = { "German2Stemmer", "org.tartarus.snowball.ext", ptrTable, methods, fields, 7, 0x1, 11, 14, -1, -1, -1, -1, -1 };
  return &_OrgTartarusSnowballExtGerman2Stemmer;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtGerman2Stemmer class]) {
    OrgTartarusSnowballExtGerman2Stemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_ = (void (*)(id, SEL, id))[OrgTartarusSnowballSnowballProgram instanceMethodForSelector:@selector(copy_fromWithOrgTartarusSnowballSnowballProgram:)];
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_methodObject, new_OrgTartarusSnowballExtGerman2Stemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_0, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"", -1, 6, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ae", 0, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"oe", 0, 3, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"qu", 0, 5, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ue", 0, 4, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00df", 0, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:6 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_1, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"", -1, 6, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"U", 0, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"Y", 0, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00e4", 0, 3, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f6", 0, 4, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00fc", 0, 5, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:6 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_2, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"e", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"em", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ern", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"s", -1, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"es", 5, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:7 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_3, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"st", -1, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"est", 2, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:4 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_4, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lich", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:2 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_a_5, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"end", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ung", -1, 1, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lich", -1, 3, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"isch", -1, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ik", -1, 2, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heit", -1, 3, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"keit", -1, 4, @"", OrgTartarusSnowballExtGerman2Stemmer_methodObject) } count:8 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_g_v, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 32, 8 } count:20]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_g_s_ending, [IOSCharArray newArrayWithChars:(jchar[]){ 117, 30, 5 } count:3]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGerman2Stemmer_g_st_ending, [IOSCharArray newArrayWithChars:(jchar[]){ 117, 30, 4 } count:3]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtGerman2Stemmer)
  }
}

@end

void OrgTartarusSnowballExtGerman2Stemmer_init(OrgTartarusSnowballExtGerman2Stemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
}

OrgTartarusSnowballExtGerman2Stemmer *new_OrgTartarusSnowballExtGerman2Stemmer_init() {
  J2OBJC_NEW_IMPL(OrgTartarusSnowballExtGerman2Stemmer, init)
}

OrgTartarusSnowballExtGerman2Stemmer *create_OrgTartarusSnowballExtGerman2Stemmer_init() {
  J2OBJC_CREATE_IMPL(OrgTartarusSnowballExtGerman2Stemmer, init)
}

void OrgTartarusSnowballExtGerman2Stemmer_copy_fromWithOrgTartarusSnowballExtGerman2Stemmer_(OrgTartarusSnowballExtGerman2Stemmer *self, OrgTartarusSnowballExtGerman2Stemmer *other) {
  self->I_x_ = ((OrgTartarusSnowballExtGerman2Stemmer *) nil_chk(other))->I_x_;
  self->I_p2_ = other->I_p2_;
  self->I_p1_ = other->I_p1_;
  OrgTartarusSnowballExtGerman2Stemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_(self, @selector(copy_fromWithOrgTartarusSnowballSnowballProgram:), other);
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_prelude(OrgTartarusSnowballExtGerman2Stemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  v_1 = self->cursor_;
  while (true) {
    {
      v_2 = self->cursor_;
      do {
        while (true) {
          v_3 = self->cursor_;
          do {
            if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
              goto break_lab3;
            }
            self->bra_ = self->cursor_;
            do {
              v_4 = self->cursor_;
              do {
                if (!([self eq_sWithInt:1 withJavaLangCharSequence:@"u"])) {
                  goto break_lab5;
                }
                self->ket_ = self->cursor_;
                if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
                  goto break_lab5;
                }
                [self slice_fromWithJavaLangCharSequence:@"U"];
                goto break_lab4;
              }
              while (false);
              break_lab5: ;
              self->cursor_ = v_4;
              if (!([self eq_sWithInt:1 withJavaLangCharSequence:@"y"])) {
                goto break_lab3;
              }
              self->ket_ = self->cursor_;
              if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
                goto break_lab3;
              }
              [self slice_fromWithJavaLangCharSequence:@"Y"];
            }
            while (false);
            break_lab4: ;
            self->cursor_ = v_3;
            goto break_golab2;
          }
          while (false);
          break_lab3: ;
          self->cursor_ = v_3;
          if (self->cursor_ >= self->limit_) {
            goto break_lab1;
          }
          self->cursor_++;
        }
        break_golab2: ;
        goto continue_replab0;
      }
      while (false);
      break_lab1: ;
      self->cursor_ = v_2;
      goto break_replab0;
    }
    continue_replab0: ;
  }
  break_replab0: ;
  self->cursor_ = v_1;
  while (true) {
    {
      v_5 = self->cursor_;
      do {
        self->bra_ = self->cursor_;
        among_var = [self find_amongWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_0 withInt:6];
        if (among_var == 0) {
          goto break_lab7;
        }
        self->ket_ = self->cursor_;
        switch (among_var) {
          case 0:
          goto break_lab7;
          case 1:
          [self slice_fromWithJavaLangCharSequence:@"ss"];
          break;
          case 2:
          [self slice_fromWithJavaLangCharSequence:@"\u00e4"];
          break;
          case 3:
          [self slice_fromWithJavaLangCharSequence:@"\u00f6"];
          break;
          case 4:
          [self slice_fromWithJavaLangCharSequence:@"\u00fc"];
          break;
          case 5:
          {
            jint c = self->cursor_ + 2;
            if (0 > c || c > self->limit_) {
              goto break_lab7;
            }
            self->cursor_ = c;
          }
          break;
          case 6:
          if (self->cursor_ >= self->limit_) {
            goto break_lab7;
          }
          self->cursor_++;
          break;
        }
        goto continue_replab6;
      }
      while (false);
      break_lab7: ;
      self->cursor_ = v_5;
      goto break_replab6;
    }
    continue_replab6: ;
  }
  break_replab6: ;
  return true;
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_mark_regions(OrgTartarusSnowballExtGerman2Stemmer *self) {
  jint v_1;
  self->I_p1_ = self->limit_;
  self->I_p2_ = self->limit_;
  v_1 = self->cursor_;
  {
    jint c = self->cursor_ + 3;
    if (0 > c || c > self->limit_) {
      return false;
    }
    self->cursor_ = c;
  }
  self->I_x_ = self->cursor_;
  self->cursor_ = v_1;
  while (true) {
    do {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
        goto break_lab1;
      }
      goto break_golab0;
    }
    while (false);
    break_lab1: ;
    if (self->cursor_ >= self->limit_) {
      return false;
    }
    self->cursor_++;
  }
  break_golab0: ;
  while (true) {
    do {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
        goto break_lab3;
      }
      goto break_golab2;
    }
    while (false);
    break_lab3: ;
    if (self->cursor_ >= self->limit_) {
      return false;
    }
    self->cursor_++;
  }
  break_golab2: ;
  self->I_p1_ = self->cursor_;
  do {
    if (!(self->I_p1_ < self->I_x_)) {
      goto break_lab4;
    }
    self->I_p1_ = self->I_x_;
  }
  while (false);
  break_lab4: ;
  while (true) {
    do {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
        goto break_lab6;
      }
      goto break_golab5;
    }
    while (false);
    break_lab6: ;
    if (self->cursor_ >= self->limit_) {
      return false;
    }
    self->cursor_++;
  }
  break_golab5: ;
  while (true) {
    do {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_v withInt:97 withInt:252])) {
        goto break_lab8;
      }
      goto break_golab7;
    }
    while (false);
    break_lab8: ;
    if (self->cursor_ >= self->limit_) {
      return false;
    }
    self->cursor_++;
  }
  break_golab7: ;
  self->I_p2_ = self->cursor_;
  return true;
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_postlude(OrgTartarusSnowballExtGerman2Stemmer *self) {
  jint among_var;
  jint v_1;
  while (true) {
    {
      v_1 = self->cursor_;
      do {
        self->bra_ = self->cursor_;
        among_var = [self find_amongWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_1 withInt:6];
        if (among_var == 0) {
          goto break_lab1;
        }
        self->ket_ = self->cursor_;
        switch (among_var) {
          case 0:
          goto break_lab1;
          case 1:
          [self slice_fromWithJavaLangCharSequence:@"y"];
          break;
          case 2:
          [self slice_fromWithJavaLangCharSequence:@"u"];
          break;
          case 3:
          [self slice_fromWithJavaLangCharSequence:@"a"];
          break;
          case 4:
          [self slice_fromWithJavaLangCharSequence:@"o"];
          break;
          case 5:
          [self slice_fromWithJavaLangCharSequence:@"u"];
          break;
          case 6:
          if (self->cursor_ >= self->limit_) {
            goto break_lab1;
          }
          self->cursor_++;
          break;
        }
        goto continue_replab0;
      }
      while (false);
      break_lab1: ;
      self->cursor_ = v_1;
      goto break_replab0;
    }
    continue_replab0: ;
  }
  break_replab0: ;
  return true;
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_R1(OrgTartarusSnowballExtGerman2Stemmer *self) {
  if (!(self->I_p1_ <= self->cursor_)) {
    return false;
  }
  return true;
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_R2(OrgTartarusSnowballExtGerman2Stemmer *self) {
  if (!(self->I_p2_ <= self->cursor_)) {
    return false;
  }
  return true;
}

jboolean OrgTartarusSnowballExtGerman2Stemmer_r_standard_suffix(OrgTartarusSnowballExtGerman2Stemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  jint v_6;
  jint v_7;
  jint v_8;
  jint v_9;
  v_1 = self->limit_ - self->cursor_;
  do {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_2 withInt:7];
    if (among_var == 0) {
      goto break_lab0;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_R1(self)) {
      goto break_lab0;
    }
    switch (among_var) {
      case 0:
      goto break_lab0;
      case 1:
      [self slice_del];
      break;
      case 2:
      if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_s_ending withInt:98 withInt:116])) {
        goto break_lab0;
      }
      [self slice_del];
      break;
    }
  }
  while (false);
  break_lab0: ;
  self->cursor_ = self->limit_ - v_1;
  v_2 = self->limit_ - self->cursor_;
  do {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_3 withInt:4];
    if (among_var == 0) {
      goto break_lab1;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_R1(self)) {
      goto break_lab1;
    }
    switch (among_var) {
      case 0:
      goto break_lab1;
      case 1:
      [self slice_del];
      break;
      case 2:
      if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtGerman2Stemmer_g_st_ending withInt:98 withInt:116])) {
        goto break_lab1;
      }
      {
        jint c = self->cursor_ - 3;
        if (self->limit_backward_ > c || c > self->limit_) {
          goto break_lab1;
        }
        self->cursor_ = c;
      }
      [self slice_del];
      break;
    }
  }
  while (false);
  break_lab1: ;
  self->cursor_ = self->limit_ - v_2;
  v_3 = self->limit_ - self->cursor_;
  do {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_5 withInt:8];
    if (among_var == 0) {
      goto break_lab2;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGerman2Stemmer_r_R2(self)) {
      goto break_lab2;
    }
    switch (among_var) {
      case 0:
      goto break_lab2;
      case 1:
      [self slice_del];
      v_4 = self->limit_ - self->cursor_;
      {
        do {
          self->ket_ = self->cursor_;
          if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"ig"])) {
            self->cursor_ = self->limit_ - v_4;
            goto break_lab3;
          }
          self->bra_ = self->cursor_;
          {
            v_5 = self->limit_ - self->cursor_;
            do {
              if (!([self eq_s_bWithInt:1 withJavaLangCharSequence:@"e"])) {
                goto break_lab4;
              }
              self->cursor_ = self->limit_ - v_4;
              goto break_lab3;
            }
            while (false);
            break_lab4: ;
            self->cursor_ = self->limit_ - v_5;
          }
          if (!OrgTartarusSnowballExtGerman2Stemmer_r_R2(self)) {
            self->cursor_ = self->limit_ - v_4;
            goto break_lab3;
          }
          [self slice_del];
        }
        while (false);
        break_lab3: ;
      }
      break;
      case 2:
      {
        v_6 = self->limit_ - self->cursor_;
        do {
          if (!([self eq_s_bWithInt:1 withJavaLangCharSequence:@"e"])) {
            goto break_lab5;
          }
          goto break_lab2;
        }
        while (false);
        break_lab5: ;
        self->cursor_ = self->limit_ - v_6;
      }
      [self slice_del];
      break;
      case 3:
      [self slice_del];
      v_7 = self->limit_ - self->cursor_;
      {
        do {
          self->ket_ = self->cursor_;
          do {
            v_8 = self->limit_ - self->cursor_;
            do {
              if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"er"])) {
                goto break_lab8;
              }
              goto break_lab7;
            }
            while (false);
            break_lab8: ;
            self->cursor_ = self->limit_ - v_8;
            if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"en"])) {
              self->cursor_ = self->limit_ - v_7;
              goto break_lab6;
            }
          }
          while (false);
          break_lab7: ;
          self->bra_ = self->cursor_;
          if (!OrgTartarusSnowballExtGerman2Stemmer_r_R1(self)) {
            self->cursor_ = self->limit_ - v_7;
            goto break_lab6;
          }
          [self slice_del];
        }
        while (false);
        break_lab6: ;
      }
      break;
      case 4:
      [self slice_del];
      v_9 = self->limit_ - self->cursor_;
      {
        do {
          self->ket_ = self->cursor_;
          among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGerman2Stemmer_a_4 withInt:2];
          if (among_var == 0) {
            self->cursor_ = self->limit_ - v_9;
            goto break_lab9;
          }
          self->bra_ = self->cursor_;
          if (!OrgTartarusSnowballExtGerman2Stemmer_r_R2(self)) {
            self->cursor_ = self->limit_ - v_9;
            goto break_lab9;
          }
          switch (among_var) {
            case 0:
            self->cursor_ = self->limit_ - v_9;
            goto break_lab9;
            case 1:
            [self slice_del];
            break;
          }
        }
        while (false);
        break_lab9: ;
      }
      break;
    }
  }
  while (false);
  break_lab2: ;
  self->cursor_ = self->limit_ - v_3;
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtGerman2Stemmer)
