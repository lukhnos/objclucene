//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/IrishStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/IrishStemmer.h"

#define OrgTartarusSnowballExtIrishStemmer_serialVersionUID 1LL

@interface OrgTartarusSnowballExtIrishStemmer () {
 @public
  jint I_p2_;
  jint I_p1_;
  jint I_pV_;
}

- (void)copy_fromWithOrgTartarusSnowballExtIrishStemmer:(OrgTartarusSnowballExtIrishStemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_mark_regions;

- (jboolean)r_initial_morph;

- (jboolean)r_RV;

- (jboolean)r_R1;

- (jboolean)r_R2;

- (jboolean)r_noun_sfx;

- (jboolean)r_deriv;

- (jboolean)r_verb_sfx;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, serialVersionUID, jlong)

static OrgTartarusSnowballExtIrishStemmer *OrgTartarusSnowballExtIrishStemmer_methodObject_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, methodObject_, OrgTartarusSnowballExtIrishStemmer *)

static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_0_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, a_0_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_1_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, a_1_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_2_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, a_2_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_3_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, a_3_, IOSObjectArray *)

static IOSCharArray *OrgTartarusSnowballExtIrishStemmer_g_v_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtIrishStemmer, g_v_, IOSCharArray *)

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_mark_regions(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_initial_morph(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_RV(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_R1(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_R2(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_deriv(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(OrgTartarusSnowballExtIrishStemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtIrishStemmer)

@implementation OrgTartarusSnowballExtIrishStemmer

- (void)copy_fromWithOrgTartarusSnowballExtIrishStemmer:(OrgTartarusSnowballExtIrishStemmer *)other {
  I_p2_ = ((OrgTartarusSnowballExtIrishStemmer *) nil_chk(other))->I_p2_;
  I_p1_ = other->I_p1_;
  I_pV_ = other->I_pV_;
  [super copy_fromWithOrgTartarusSnowballSnowballProgram:other];
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtIrishStemmer_r_mark_regions(self);
}

- (jboolean)r_initial_morph {
  return OrgTartarusSnowballExtIrishStemmer_r_initial_morph(self);
}

- (jboolean)r_RV {
  return OrgTartarusSnowballExtIrishStemmer_r_RV(self);
}

- (jboolean)r_R1 {
  return OrgTartarusSnowballExtIrishStemmer_r_R1(self);
}

- (jboolean)r_R2 {
  return OrgTartarusSnowballExtIrishStemmer_r_R2(self);
}

- (jboolean)r_noun_sfx {
  return OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(self);
}

- (jboolean)r_deriv {
  return OrgTartarusSnowballExtIrishStemmer_r_deriv(self);
}

- (jboolean)r_verb_sfx {
  return OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  v_1 = cursor_;
  {
    if (!OrgTartarusSnowballExtIrishStemmer_r_initial_morph(self)) {
      goto break_lab0;
    }
  }
  break_lab0: ;
  cursor_ = v_1;
  v_2 = cursor_;
  {
    if (!OrgTartarusSnowballExtIrishStemmer_r_mark_regions(self)) {
      goto break_lab1;
    }
  }
  break_lab1: ;
  cursor_ = v_2;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_3 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(self)) {
      goto break_lab2;
    }
  }
  break_lab2: ;
  cursor_ = limit_ - v_3;
  v_4 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtIrishStemmer_r_deriv(self)) {
      goto break_lab3;
    }
  }
  break_lab3: ;
  cursor_ = limit_ - v_4;
  v_5 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(self)) {
      goto break_lab4;
    }
  }
  break_lab4: ;
  cursor_ = limit_ - v_5;
  cursor_ = limit_backward_;
  return YES;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtIrishStemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtIrishStemmer_class_() getName])) hash]);
}

- (instancetype)init {
  OrgTartarusSnowballExtIrishStemmer_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtIrishStemmer class]) {
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_methodObject_, new_OrgTartarusSnowballExtIrishStemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_0_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"b'", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bh", -1, 14, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bhf", 1, 9, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bp", -1, 11, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ch", -1, 15, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"d'", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"d'fh", 5, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dh", -1, 16, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dt", -1, 13, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"fh", -1, 17, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gc", -1, 7, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gh", -1, 18, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"h-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"m'", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"mb", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"mh", -1, 19, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"n-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"nd", -1, 8, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ng", -1, 10, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ph", -1, 20, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"sh", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"t-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"th", -1, 21, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ts", -1, 12, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease] } count:24 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_1_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edochta", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edochta", 0, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ire", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aire", 2, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"abh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eabh", 4, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ibh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aibh", 6, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"amh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eamh", 8, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"imh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aimh", 10, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edocht", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edocht", 12, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ir\u00ed", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"air\u00ed", 14, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease] } count:16 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_2_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3ideacha", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"patacha", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"achta", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcachta", 2, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eachta", 2, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edochta", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"paite", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ach", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"each", 7, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3ideach", 8, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gineach", 8, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"patach", 7, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edoch", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"pataigh", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3idigh", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"acht\u00fail", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eacht\u00fail", 15, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gineas", -1, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ginis", -1, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"acht", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcacht", 19, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eacht", 19, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edocht", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcachta\u00ed", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edochta\u00ed", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease] } count:25 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_3_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"imid", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aimid", 0, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edmid", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edmid", 2, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"adh", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eadh", 4, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"faidh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"fidh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00e1il", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ain", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"tear", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"tar", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject_) autorelease] } count:12 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_g_v_, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 17, 4, 2 } count:20]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtIrishStemmer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copy_fromWithOrgTartarusSnowballExtIrishStemmer:", "copy_from", "V", 0x2, NULL, NULL },
    { "r_mark_regions", NULL, "Z", 0x2, NULL, NULL },
    { "r_initial_morph", NULL, "Z", 0x2, NULL, NULL },
    { "r_RV", NULL, "Z", 0x2, NULL, NULL },
    { "r_R1", NULL, "Z", 0x2, NULL, NULL },
    { "r_R2", NULL, "Z", 0x2, NULL, NULL },
    { "r_noun_sfx", NULL, "Z", 0x2, NULL, NULL },
    { "r_deriv", NULL, "Z", 0x2, NULL, NULL },
    { "r_verb_sfx", NULL, "Z", 0x2, NULL, NULL },
    { "stem", NULL, "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgTartarusSnowballExtIrishStemmer_serialVersionUID },
    { "methodObject_", NULL, 0x1a, "Lorg.tartarus.snowball.ext.IrishStemmer;", &OrgTartarusSnowballExtIrishStemmer_methodObject_, NULL, .constantValue.asLong = 0 },
    { "a_0_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtIrishStemmer_a_0_, NULL, .constantValue.asLong = 0 },
    { "a_1_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtIrishStemmer_a_1_, NULL, .constantValue.asLong = 0 },
    { "a_2_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtIrishStemmer_a_2_, NULL, .constantValue.asLong = 0 },
    { "a_3_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtIrishStemmer_a_3_, NULL, .constantValue.asLong = 0 },
    { "g_v_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtIrishStemmer_g_v_, NULL, .constantValue.asLong = 0 },
    { "I_p2_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "I_p1_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "I_pV_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtIrishStemmer = { 2, "IrishStemmer", "org.tartarus.snowball.ext", NULL, 0x1, 13, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgTartarusSnowballExtIrishStemmer;
}

@end

jboolean OrgTartarusSnowballExtIrishStemmer_r_mark_regions(OrgTartarusSnowballExtIrishStemmer *self) {
  jint v_1;
  jint v_3;
  self->I_pV_ = self->limit_;
  self->I_p1_ = self->limit_;
  self->I_p2_ = self->limit_;
  v_1 = self->cursor_;
  {
    while (YES) {
      {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v_ withInt:97 withInt:250])) {
          goto break_lab2;
        }
        goto break_golab1;
      }
      break_lab2: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab0;
      }
      self->cursor_++;
    }
    break_golab1: ;
    self->I_pV_ = self->cursor_;
  }
  break_lab0: ;
  self->cursor_ = v_1;
  v_3 = self->cursor_;
  {
    while (YES) {
      {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v_ withInt:97 withInt:250])) {
          goto break_lab5;
        }
        goto break_golab4;
      }
      break_lab5: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab4: ;
    while (YES) {
      {
        if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v_ withInt:97 withInt:250])) {
          goto break_lab7;
        }
        goto break_golab6;
      }
      break_lab7: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab6: ;
    self->I_p1_ = self->cursor_;
    while (YES) {
      {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v_ withInt:97 withInt:250])) {
          goto break_lab9;
        }
        goto break_golab8;
      }
      break_lab9: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab8: ;
    while (YES) {
      {
        if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v_ withInt:97 withInt:250])) {
          goto break_lab11;
        }
        goto break_golab10;
      }
      break_lab11: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab10: ;
    self->I_p2_ = self->cursor_;
  }
  break_lab3: ;
  self->cursor_ = v_3;
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_initial_morph(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->bra_ = self->cursor_;
  among_var = [self find_amongWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_0_ withInt:24];
  if (among_var == 0) {
    return NO;
  }
  self->ket_ = self->cursor_;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    [self slice_del];
    break;
    case 2:
    [self slice_del];
    break;
    case 3:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 4:
    [self slice_del];
    break;
    case 5:
    [self slice_fromWithJavaLangCharSequence:@"s"];
    break;
    case 6:
    [self slice_fromWithJavaLangCharSequence:@"b"];
    break;
    case 7:
    [self slice_fromWithJavaLangCharSequence:@"c"];
    break;
    case 8:
    [self slice_fromWithJavaLangCharSequence:@"d"];
    break;
    case 9:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 10:
    [self slice_fromWithJavaLangCharSequence:@"g"];
    break;
    case 11:
    [self slice_fromWithJavaLangCharSequence:@"p"];
    break;
    case 12:
    [self slice_fromWithJavaLangCharSequence:@"s"];
    break;
    case 13:
    [self slice_fromWithJavaLangCharSequence:@"t"];
    break;
    case 14:
    [self slice_fromWithJavaLangCharSequence:@"b"];
    break;
    case 15:
    [self slice_fromWithJavaLangCharSequence:@"c"];
    break;
    case 16:
    [self slice_fromWithJavaLangCharSequence:@"d"];
    break;
    case 17:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 18:
    [self slice_fromWithJavaLangCharSequence:@"g"];
    break;
    case 19:
    [self slice_fromWithJavaLangCharSequence:@"m"];
    break;
    case 20:
    [self slice_fromWithJavaLangCharSequence:@"p"];
    break;
    case 21:
    [self slice_fromWithJavaLangCharSequence:@"t"];
    break;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_RV(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_pV_ <= self->cursor_)) {
    return NO;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_R1(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_p1_ <= self->cursor_)) {
    return NO;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_R2(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_p2_ <= self->cursor_)) {
    return NO;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_1_ withInt:16];
  if (among_var == 0) {
    return NO;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R1(self)) {
      return NO;
    }
    [self slice_del];
    break;
    case 2:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R2(self)) {
      return NO;
    }
    [self slice_del];
    break;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_deriv(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_2_ withInt:25];
  if (among_var == 0) {
    return NO;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R2(self)) {
      return NO;
    }
    [self slice_del];
    break;
    case 2:
    [self slice_fromWithJavaLangCharSequence:@"arc"];
    break;
    case 3:
    [self slice_fromWithJavaLangCharSequence:@"gin"];
    break;
    case 4:
    [self slice_fromWithJavaLangCharSequence:@"graf"];
    break;
    case 5:
    [self slice_fromWithJavaLangCharSequence:@"paite"];
    break;
    case 6:
    [self slice_fromWithJavaLangCharSequence:@"\u00f3id"];
    break;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_3_ withInt:12];
  if (among_var == 0) {
    return NO;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_RV(self)) {
      return NO;
    }
    [self slice_del];
    break;
    case 2:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R1(self)) {
      return NO;
    }
    [self slice_del];
    break;
  }
  return YES;
}

void OrgTartarusSnowballExtIrishStemmer_init(OrgTartarusSnowballExtIrishStemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
}

OrgTartarusSnowballExtIrishStemmer *new_OrgTartarusSnowballExtIrishStemmer_init() {
  OrgTartarusSnowballExtIrishStemmer *self = [OrgTartarusSnowballExtIrishStemmer alloc];
  OrgTartarusSnowballExtIrishStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtIrishStemmer)