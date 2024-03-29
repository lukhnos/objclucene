//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/DanishStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/DanishStemmer.h"

static void (*OrgTartarusSnowballExtDanishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_)(id, SEL, id);

#if __has_feature(objc_arc)
#error "org/tartarus/snowball/ext/DanishStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgTartarusSnowballExtDanishStemmer () {
 @public
  jint I_x_;
  jint I_p1_;
  JavaLangStringBuilder *S_ch_;
}

- (void)copy_fromWithOrgTartarusSnowballExtDanishStemmer:(OrgTartarusSnowballExtDanishStemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_mark_regions;

- (jboolean)r_main_suffix;

- (jboolean)r_consonant_pair;

- (jboolean)r_other_suffix;

- (jboolean)r_undouble;

@end

J2OBJC_FIELD_SETTER(OrgTartarusSnowballExtDanishStemmer, S_ch_, JavaLangStringBuilder *)

inline jlong OrgTartarusSnowballExtDanishStemmer_get_serialVersionUID(void);
#define OrgTartarusSnowballExtDanishStemmer_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgTartarusSnowballExtDanishStemmer, serialVersionUID, jlong)

inline OrgTartarusSnowballExtDanishStemmer *OrgTartarusSnowballExtDanishStemmer_get_methodObject(void);
static OrgTartarusSnowballExtDanishStemmer *OrgTartarusSnowballExtDanishStemmer_methodObject;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, methodObject, OrgTartarusSnowballExtDanishStemmer *)

inline IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_get_a_0(void);
static IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_a_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, a_0, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_get_a_1(void);
static IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_a_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, a_1, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_get_a_2(void);
static IOSObjectArray *OrgTartarusSnowballExtDanishStemmer_a_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, a_2, IOSObjectArray *)

inline IOSCharArray *OrgTartarusSnowballExtDanishStemmer_get_g_v(void);
static IOSCharArray *OrgTartarusSnowballExtDanishStemmer_g_v;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, g_v, IOSCharArray *)

inline IOSCharArray *OrgTartarusSnowballExtDanishStemmer_get_g_s_ending(void);
static IOSCharArray *OrgTartarusSnowballExtDanishStemmer_g_s_ending;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtDanishStemmer, g_s_ending, IOSCharArray *)

__attribute__((unused)) static void OrgTartarusSnowballExtDanishStemmer_copy_fromWithOrgTartarusSnowballExtDanishStemmer_(OrgTartarusSnowballExtDanishStemmer *self, OrgTartarusSnowballExtDanishStemmer *other);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtDanishStemmer_r_mark_regions(OrgTartarusSnowballExtDanishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtDanishStemmer_r_main_suffix(OrgTartarusSnowballExtDanishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtDanishStemmer_r_consonant_pair(OrgTartarusSnowballExtDanishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtDanishStemmer_r_other_suffix(OrgTartarusSnowballExtDanishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtDanishStemmer_r_undouble(OrgTartarusSnowballExtDanishStemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtDanishStemmer)

@implementation OrgTartarusSnowballExtDanishStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgTartarusSnowballExtDanishStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)copy_fromWithOrgTartarusSnowballExtDanishStemmer:(OrgTartarusSnowballExtDanishStemmer *)other {
  OrgTartarusSnowballExtDanishStemmer_copy_fromWithOrgTartarusSnowballExtDanishStemmer_(self, other);
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtDanishStemmer_r_mark_regions(self);
}

- (jboolean)r_main_suffix {
  return OrgTartarusSnowballExtDanishStemmer_r_main_suffix(self);
}

- (jboolean)r_consonant_pair {
  return OrgTartarusSnowballExtDanishStemmer_r_consonant_pair(self);
}

- (jboolean)r_other_suffix {
  return OrgTartarusSnowballExtDanishStemmer_r_other_suffix(self);
}

- (jboolean)r_undouble {
  return OrgTartarusSnowballExtDanishStemmer_r_undouble(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  v_1 = cursor_;
  do {
    if (!OrgTartarusSnowballExtDanishStemmer_r_mark_regions(self)) {
      goto break_lab0;
    }
  }
  while (false);
  break_lab0: ;
  cursor_ = v_1;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_2 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtDanishStemmer_r_main_suffix(self)) {
      goto break_lab1;
    }
  }
  while (false);
  break_lab1: ;
  cursor_ = limit_ - v_2;
  v_3 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtDanishStemmer_r_consonant_pair(self)) {
      goto break_lab2;
    }
  }
  while (false);
  break_lab2: ;
  cursor_ = limit_ - v_3;
  v_4 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtDanishStemmer_r_other_suffix(self)) {
      goto break_lab3;
    }
  }
  while (false);
  break_lab3: ;
  cursor_ = limit_ - v_4;
  v_5 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtDanishStemmer_r_undouble(self)) {
      goto break_lab4;
    }
  }
  while (false);
  break_lab4: ;
  cursor_ = limit_ - v_5;
  cursor_ = limit_backward_;
  return true;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtDanishStemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtDanishStemmer_class_() getName])) hash]);
}

- (void)dealloc {
  RELEASE_(S_ch_);
  [super dealloc];
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
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(copy_fromWithOrgTartarusSnowballExtDanishStemmer:);
  methods[2].selector = @selector(r_mark_regions);
  methods[3].selector = @selector(r_main_suffix);
  methods[4].selector = @selector(r_consonant_pair);
  methods[5].selector = @selector(r_other_suffix);
  methods[6].selector = @selector(r_undouble);
  methods[7].selector = @selector(stem);
  methods[8].selector = @selector(isEqual:);
  methods[9].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgTartarusSnowballExtDanishStemmer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "methodObject", "LOrgTartarusSnowballExtDanishStemmer;", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
    { "a_0", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "a_1", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "a_2", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "g_v", "[C", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "g_s_ending", "[C", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "I_x_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "I_p1_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "S_ch_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy_from", "LOrgTartarusSnowballExtDanishStemmer;", "equals", "LNSObject;", "hashCode", &OrgTartarusSnowballExtDanishStemmer_methodObject, &OrgTartarusSnowballExtDanishStemmer_a_0, &OrgTartarusSnowballExtDanishStemmer_a_1, &OrgTartarusSnowballExtDanishStemmer_a_2, &OrgTartarusSnowballExtDanishStemmer_g_v, &OrgTartarusSnowballExtDanishStemmer_g_s_ending };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtDanishStemmer = { "DanishStemmer", "org.tartarus.snowball.ext", ptrTable, methods, fields, 7, 0x1, 10, 10, -1, -1, -1, -1, -1 };
  return &_OrgTartarusSnowballExtDanishStemmer;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtDanishStemmer class]) {
    OrgTartarusSnowballExtDanishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_ = (void (*)(id, SEL, id))[OrgTartarusSnowballSnowballProgram instanceMethodForSelector:@selector(copy_fromWithOrgTartarusSnowballSnowballProgram:)];
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_methodObject, new_OrgTartarusSnowballExtDanishStemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_a_0, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hed", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ethed", 0, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ered", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"e", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erede", 3, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ende", 3, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erende", 5, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ene", 3, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erne", 3, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ere", 3, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heden", 10, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eren", 10, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heder", 13, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erer", 13, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"s", -1, 2, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heds", 16, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"es", 16, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"endes", 18, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erendes", 19, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"enes", 18, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ernes", 18, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eres", 18, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ens", 16, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hedens", 24, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erens", 24, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ers", 16, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ets", 16, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erets", 28, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"et", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eret", 30, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject) } count:32 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_a_1, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gd", -1, -1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dt", -1, -1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gt", -1, -1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"kt", -1, -1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject) } count:4 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_a_2, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lig", 0, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"elig", 1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"els", -1, 1, @"", OrgTartarusSnowballExtDanishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"l\u00f8st", -1, 2, @"", OrgTartarusSnowballExtDanishStemmer_methodObject) } count:5 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_g_v, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 128 } count:19]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtDanishStemmer_g_s_ending, [IOSCharArray newArrayWithChars:(jchar[]){ 239, 254, 42, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16 } count:17]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtDanishStemmer)
  }
}

@end

void OrgTartarusSnowballExtDanishStemmer_init(OrgTartarusSnowballExtDanishStemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
  JreStrongAssignAndConsume(&self->S_ch_, new_JavaLangStringBuilder_init());
}

OrgTartarusSnowballExtDanishStemmer *new_OrgTartarusSnowballExtDanishStemmer_init() {
  J2OBJC_NEW_IMPL(OrgTartarusSnowballExtDanishStemmer, init)
}

OrgTartarusSnowballExtDanishStemmer *create_OrgTartarusSnowballExtDanishStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgTartarusSnowballExtDanishStemmer, init)
}

void OrgTartarusSnowballExtDanishStemmer_copy_fromWithOrgTartarusSnowballExtDanishStemmer_(OrgTartarusSnowballExtDanishStemmer *self, OrgTartarusSnowballExtDanishStemmer *other) {
  self->I_x_ = ((OrgTartarusSnowballExtDanishStemmer *) nil_chk(other))->I_x_;
  self->I_p1_ = other->I_p1_;
  JreStrongAssign(&self->S_ch_, other->S_ch_);
  OrgTartarusSnowballExtDanishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_(self, @selector(copy_fromWithOrgTartarusSnowballSnowballProgram:), other);
}

jboolean OrgTartarusSnowballExtDanishStemmer_r_mark_regions(OrgTartarusSnowballExtDanishStemmer *self) {
  jint v_1;
  jint v_2;
  self->I_p1_ = self->limit_;
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
    v_2 = self->cursor_;
    do {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtDanishStemmer_g_v withInt:97 withInt:248])) {
        goto break_lab1;
      }
      self->cursor_ = v_2;
      goto break_golab0;
    }
    while (false);
    break_lab1: ;
    self->cursor_ = v_2;
    if (self->cursor_ >= self->limit_) {
      return false;
    }
    self->cursor_++;
  }
  break_golab0: ;
  while (true) {
    do {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtDanishStemmer_g_v withInt:97 withInt:248])) {
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
  return true;
}

jboolean OrgTartarusSnowballExtDanishStemmer_r_main_suffix(OrgTartarusSnowballExtDanishStemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  v_1 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return false;
  }
  self->cursor_ = self->I_p1_;
  v_2 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_1;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtDanishStemmer_a_0 withInt:32];
  if (among_var == 0) {
    self->limit_backward_ = v_2;
    return false;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_2;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    [self slice_del];
    break;
    case 2:
    if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtDanishStemmer_g_s_ending withInt:97 withInt:229])) {
      return false;
    }
    [self slice_del];
    break;
  }
  return true;
}

jboolean OrgTartarusSnowballExtDanishStemmer_r_consonant_pair(OrgTartarusSnowballExtDanishStemmer *self) {
  jint v_1;
  jint v_2;
  jint v_3;
  v_1 = self->limit_ - self->cursor_;
  v_2 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return false;
  }
  self->cursor_ = self->I_p1_;
  v_3 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_2;
  self->ket_ = self->cursor_;
  if ([self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtDanishStemmer_a_1 withInt:4] == 0) {
    self->limit_backward_ = v_3;
    return false;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_3;
  self->cursor_ = self->limit_ - v_1;
  if (self->cursor_ <= self->limit_backward_) {
    return false;
  }
  self->cursor_--;
  self->bra_ = self->cursor_;
  [self slice_del];
  return true;
}

jboolean OrgTartarusSnowballExtDanishStemmer_r_other_suffix(OrgTartarusSnowballExtDanishStemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  v_1 = self->limit_ - self->cursor_;
  do {
    self->ket_ = self->cursor_;
    if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"st"])) {
      goto break_lab0;
    }
    self->bra_ = self->cursor_;
    if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"ig"])) {
      goto break_lab0;
    }
    [self slice_del];
  }
  while (false);
  break_lab0: ;
  self->cursor_ = self->limit_ - v_1;
  v_2 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return false;
  }
  self->cursor_ = self->I_p1_;
  v_3 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_2;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtDanishStemmer_a_2 withInt:5];
  if (among_var == 0) {
    self->limit_backward_ = v_3;
    return false;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_3;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    [self slice_del];
    v_4 = self->limit_ - self->cursor_;
    {
      do {
        if (!OrgTartarusSnowballExtDanishStemmer_r_consonant_pair(self)) {
          goto break_lab1;
        }
      }
      while (false);
      break_lab1: ;
    }
    self->cursor_ = self->limit_ - v_4;
    break;
    case 2:
    [self slice_fromWithJavaLangCharSequence:@"l\u00f8s"];
    break;
  }
  return true;
}

jboolean OrgTartarusSnowballExtDanishStemmer_r_undouble(OrgTartarusSnowballExtDanishStemmer *self) {
  jint v_1;
  jint v_2;
  v_1 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return false;
  }
  self->cursor_ = self->I_p1_;
  v_2 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_1;
  self->ket_ = self->cursor_;
  if (!([self out_grouping_bWithCharArray:OrgTartarusSnowballExtDanishStemmer_g_v withInt:97 withInt:248])) {
    self->limit_backward_ = v_2;
    return false;
  }
  self->bra_ = self->cursor_;
  JreStrongAssign(&self->S_ch_, [self slice_toWithJavaLangStringBuilder:self->S_ch_]);
  self->limit_backward_ = v_2;
  if (!([self eq_v_bWithJavaLangCharSequence:self->S_ch_])) {
    return false;
  }
  [self slice_del];
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtDanishStemmer)
