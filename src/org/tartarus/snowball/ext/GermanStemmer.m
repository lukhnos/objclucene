//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/GermanStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/GermanStemmer.h"

#define OrgTartarusSnowballExtGermanStemmer_serialVersionUID 1LL

@interface OrgTartarusSnowballExtGermanStemmer () {
 @public
  jint I_x_;
  jint I_p2_;
  jint I_p1_;
}

- (void)copy_fromWithOrgTartarusSnowballExtGermanStemmer:(OrgTartarusSnowballExtGermanStemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_prelude;

- (jboolean)r_mark_regions;

- (jboolean)r_postlude;

- (jboolean)r_R1;

- (jboolean)r_R2;

- (jboolean)r_standard_suffix;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, serialVersionUID, jlong)

static OrgTartarusSnowballExtGermanStemmer *OrgTartarusSnowballExtGermanStemmer_methodObject_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, methodObject_, OrgTartarusSnowballExtGermanStemmer *)

static IOSObjectArray *OrgTartarusSnowballExtGermanStemmer_a_0_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, a_0_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtGermanStemmer_a_1_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, a_1_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtGermanStemmer_a_2_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, a_2_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtGermanStemmer_a_3_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, a_3_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtGermanStemmer_a_4_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, a_4_, IOSObjectArray *)

static IOSCharArray *OrgTartarusSnowballExtGermanStemmer_g_v_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, g_v_, IOSCharArray *)

static IOSCharArray *OrgTartarusSnowballExtGermanStemmer_g_s_ending_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, g_s_ending_, IOSCharArray *)

static IOSCharArray *OrgTartarusSnowballExtGermanStemmer_g_st_ending_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtGermanStemmer, g_st_ending_, IOSCharArray *)

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_prelude(OrgTartarusSnowballExtGermanStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_mark_regions(OrgTartarusSnowballExtGermanStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_postlude(OrgTartarusSnowballExtGermanStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_R1(OrgTartarusSnowballExtGermanStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_R2(OrgTartarusSnowballExtGermanStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtGermanStemmer_r_standard_suffix(OrgTartarusSnowballExtGermanStemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtGermanStemmer)

@implementation OrgTartarusSnowballExtGermanStemmer

- (void)copy_fromWithOrgTartarusSnowballExtGermanStemmer:(OrgTartarusSnowballExtGermanStemmer *)other {
  I_x_ = ((OrgTartarusSnowballExtGermanStemmer *) nil_chk(other))->I_x_;
  I_p2_ = other->I_p2_;
  I_p1_ = other->I_p1_;
  [super copy_fromWithOrgTartarusSnowballSnowballProgram:other];
}

- (jboolean)r_prelude {
  return OrgTartarusSnowballExtGermanStemmer_r_prelude(self);
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtGermanStemmer_r_mark_regions(self);
}

- (jboolean)r_postlude {
  return OrgTartarusSnowballExtGermanStemmer_r_postlude(self);
}

- (jboolean)r_R1 {
  return OrgTartarusSnowballExtGermanStemmer_r_R1(self);
}

- (jboolean)r_R2 {
  return OrgTartarusSnowballExtGermanStemmer_r_R2(self);
}

- (jboolean)r_standard_suffix {
  return OrgTartarusSnowballExtGermanStemmer_r_standard_suffix(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  v_1 = cursor_;
  {
    if (!OrgTartarusSnowballExtGermanStemmer_r_prelude(self)) {
      goto break_lab0;
    }
  }
  break_lab0: ;
  cursor_ = v_1;
  v_2 = cursor_;
  {
    if (!OrgTartarusSnowballExtGermanStemmer_r_mark_regions(self)) {
      goto break_lab1;
    }
  }
  break_lab1: ;
  cursor_ = v_2;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_3 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtGermanStemmer_r_standard_suffix(self)) {
      goto break_lab2;
    }
  }
  break_lab2: ;
  cursor_ = limit_ - v_3;
  cursor_ = limit_backward_;
  v_4 = cursor_;
  {
    if (!OrgTartarusSnowballExtGermanStemmer_r_postlude(self)) {
      goto break_lab3;
    }
  }
  break_lab3: ;
  cursor_ = v_4;
  return YES;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtGermanStemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtGermanStemmer_class_() getName])) hash]);
}

- (instancetype)init {
  OrgTartarusSnowballExtGermanStemmer_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtGermanStemmer class]) {
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_methodObject_, new_OrgTartarusSnowballExtGermanStemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_a_0_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"", -1, 6, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"U", 0, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"Y", 0, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00e4", 0, 3, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f6", 0, 4, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00fc", 0, 5, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease] } count:6 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_a_1_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"e", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"em", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ern", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"s", -1, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"es", 5, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease] } count:7 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_a_2_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"st", -1, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"est", 2, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease] } count:4 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_a_3_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lich", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease] } count:2 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_a_4_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"end", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ung", -1, 1, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lich", -1, 3, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"isch", -1, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ik", -1, 2, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heit", -1, 3, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"keit", -1, 4, @"", OrgTartarusSnowballExtGermanStemmer_methodObject_) autorelease] } count:8 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_g_v_, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 32, 8 } count:20]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_g_s_ending_, [IOSCharArray newArrayWithChars:(jchar[]){ 117, 30, 5 } count:3]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtGermanStemmer_g_st_ending_, [IOSCharArray newArrayWithChars:(jchar[]){ 117, 30, 4 } count:3]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtGermanStemmer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copy_fromWithOrgTartarusSnowballExtGermanStemmer:", "copy_from", "V", 0x2, NULL, NULL },
    { "r_prelude", NULL, "Z", 0x2, NULL, NULL },
    { "r_mark_regions", NULL, "Z", 0x2, NULL, NULL },
    { "r_postlude", NULL, "Z", 0x2, NULL, NULL },
    { "r_R1", NULL, "Z", 0x2, NULL, NULL },
    { "r_R2", NULL, "Z", 0x2, NULL, NULL },
    { "r_standard_suffix", NULL, "Z", 0x2, NULL, NULL },
    { "stem", NULL, "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgTartarusSnowballExtGermanStemmer_serialVersionUID },
    { "methodObject_", NULL, 0x1a, "Lorg.tartarus.snowball.ext.GermanStemmer;", &OrgTartarusSnowballExtGermanStemmer_methodObject_, NULL, .constantValue.asLong = 0 },
    { "a_0_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtGermanStemmer_a_0_, NULL, .constantValue.asLong = 0 },
    { "a_1_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtGermanStemmer_a_1_, NULL, .constantValue.asLong = 0 },
    { "a_2_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtGermanStemmer_a_2_, NULL, .constantValue.asLong = 0 },
    { "a_3_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtGermanStemmer_a_3_, NULL, .constantValue.asLong = 0 },
    { "a_4_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtGermanStemmer_a_4_, NULL, .constantValue.asLong = 0 },
    { "g_v_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtGermanStemmer_g_v_, NULL, .constantValue.asLong = 0 },
    { "g_s_ending_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtGermanStemmer_g_s_ending_, NULL, .constantValue.asLong = 0 },
    { "g_st_ending_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtGermanStemmer_g_st_ending_, NULL, .constantValue.asLong = 0 },
    { "I_x_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "I_p2_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "I_p1_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtGermanStemmer = { 2, "GermanStemmer", "org.tartarus.snowball.ext", NULL, 0x1, 11, methods, 13, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgTartarusSnowballExtGermanStemmer;
}

@end

jboolean OrgTartarusSnowballExtGermanStemmer_r_prelude(OrgTartarusSnowballExtGermanStemmer *self) {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  jint v_6;
  v_1 = self->cursor_;
  while (YES) {
    {
      v_2 = self->cursor_;
      {
        {
          v_3 = self->cursor_;
          {
            self->bra_ = self->cursor_;
            if (!([self eq_sWithInt:1 withJavaLangCharSequence:@"\u00df"])) {
              goto break_lab3;
            }
            self->ket_ = self->cursor_;
            [self slice_fromWithJavaLangCharSequence:@"ss"];
            goto break_lab2;
          }
          break_lab3: ;
          self->cursor_ = v_3;
          if (self->cursor_ >= self->limit_) {
            goto break_lab1;
          }
          self->cursor_++;
        }
        break_lab2: ;
        goto continue_replab0;
      }
      break_lab1: ;
      self->cursor_ = v_2;
      goto break_replab0;
    }
    continue_replab0: ;
  }
  break_replab0: ;
  self->cursor_ = v_1;
  while (YES) {
    {
      v_4 = self->cursor_;
      {
        while (YES) {
          v_5 = self->cursor_;
          {
            if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
              goto break_lab7;
            }
            self->bra_ = self->cursor_;
            {
              v_6 = self->cursor_;
              {
                if (!([self eq_sWithInt:1 withJavaLangCharSequence:@"u"])) {
                  goto break_lab9;
                }
                self->ket_ = self->cursor_;
                if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
                  goto break_lab9;
                }
                [self slice_fromWithJavaLangCharSequence:@"U"];
                goto break_lab8;
              }
              break_lab9: ;
              self->cursor_ = v_6;
              if (!([self eq_sWithInt:1 withJavaLangCharSequence:@"y"])) {
                goto break_lab7;
              }
              self->ket_ = self->cursor_;
              if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
                goto break_lab7;
              }
              [self slice_fromWithJavaLangCharSequence:@"Y"];
            }
            break_lab8: ;
            self->cursor_ = v_5;
            goto break_golab6;
          }
          break_lab7: ;
          self->cursor_ = v_5;
          if (self->cursor_ >= self->limit_) {
            goto break_lab5;
          }
          self->cursor_++;
        }
        break_golab6: ;
        goto continue_replab4;
      }
      break_lab5: ;
      self->cursor_ = v_4;
      goto break_replab4;
    }
    continue_replab4: ;
  }
  break_replab4: ;
  return YES;
}

jboolean OrgTartarusSnowballExtGermanStemmer_r_mark_regions(OrgTartarusSnowballExtGermanStemmer *self) {
  jint v_1;
  self->I_p1_ = self->limit_;
  self->I_p2_ = self->limit_;
  v_1 = self->cursor_;
  {
    jint c = self->cursor_ + 3;
    if (0 > c || c > self->limit_) {
      return NO;
    }
    self->cursor_ = c;
  }
  self->I_x_ = self->cursor_;
  self->cursor_ = v_1;
  while (YES) {
    {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
        goto break_lab1;
      }
      goto break_golab0;
    }
    break_lab1: ;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab0: ;
  while (YES) {
    {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
        goto break_lab3;
      }
      goto break_golab2;
    }
    break_lab3: ;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab2: ;
  self->I_p1_ = self->cursor_;
  {
    if (!(self->I_p1_ < self->I_x_)) {
      goto break_lab4;
    }
    self->I_p1_ = self->I_x_;
  }
  break_lab4: ;
  while (YES) {
    {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
        goto break_lab6;
      }
      goto break_golab5;
    }
    break_lab6: ;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab5: ;
  while (YES) {
    {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_v_ withInt:97 withInt:252])) {
        goto break_lab8;
      }
      goto break_golab7;
    }
    break_lab8: ;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab7: ;
  self->I_p2_ = self->cursor_;
  return YES;
}

jboolean OrgTartarusSnowballExtGermanStemmer_r_postlude(OrgTartarusSnowballExtGermanStemmer *self) {
  jint among_var;
  jint v_1;
  while (YES) {
    {
      v_1 = self->cursor_;
      {
        self->bra_ = self->cursor_;
        among_var = [self find_amongWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGermanStemmer_a_0_ withInt:6];
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
      break_lab1: ;
      self->cursor_ = v_1;
      goto break_replab0;
    }
    continue_replab0: ;
  }
  break_replab0: ;
  return YES;
}

jboolean OrgTartarusSnowballExtGermanStemmer_r_R1(OrgTartarusSnowballExtGermanStemmer *self) {
  if (!(self->I_p1_ <= self->cursor_)) {
    return NO;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtGermanStemmer_r_R2(OrgTartarusSnowballExtGermanStemmer *self) {
  if (!(self->I_p2_ <= self->cursor_)) {
    return NO;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtGermanStemmer_r_standard_suffix(OrgTartarusSnowballExtGermanStemmer *self) {
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
  {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGermanStemmer_a_1_ withInt:7];
    if (among_var == 0) {
      goto break_lab0;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGermanStemmer_r_R1(self)) {
      goto break_lab0;
    }
    switch (among_var) {
      case 0:
      goto break_lab0;
      case 1:
      [self slice_del];
      break;
      case 2:
      if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_s_ending_ withInt:98 withInt:116])) {
        goto break_lab0;
      }
      [self slice_del];
      break;
    }
  }
  break_lab0: ;
  self->cursor_ = self->limit_ - v_1;
  v_2 = self->limit_ - self->cursor_;
  {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGermanStemmer_a_2_ withInt:4];
    if (among_var == 0) {
      goto break_lab1;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGermanStemmer_r_R1(self)) {
      goto break_lab1;
    }
    switch (among_var) {
      case 0:
      goto break_lab1;
      case 1:
      [self slice_del];
      break;
      case 2:
      if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtGermanStemmer_g_st_ending_ withInt:98 withInt:116])) {
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
  break_lab1: ;
  self->cursor_ = self->limit_ - v_2;
  v_3 = self->limit_ - self->cursor_;
  {
    self->ket_ = self->cursor_;
    among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGermanStemmer_a_4_ withInt:8];
    if (among_var == 0) {
      goto break_lab2;
    }
    self->bra_ = self->cursor_;
    if (!OrgTartarusSnowballExtGermanStemmer_r_R2(self)) {
      goto break_lab2;
    }
    switch (among_var) {
      case 0:
      goto break_lab2;
      case 1:
      [self slice_del];
      v_4 = self->limit_ - self->cursor_;
      {
        {
          self->ket_ = self->cursor_;
          if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"ig"])) {
            self->cursor_ = self->limit_ - v_4;
            goto break_lab3;
          }
          self->bra_ = self->cursor_;
          {
            v_5 = self->limit_ - self->cursor_;
            {
              if (!([self eq_s_bWithInt:1 withJavaLangCharSequence:@"e"])) {
                goto break_lab4;
              }
              self->cursor_ = self->limit_ - v_4;
              goto break_lab3;
            }
            break_lab4: ;
            self->cursor_ = self->limit_ - v_5;
          }
          if (!OrgTartarusSnowballExtGermanStemmer_r_R2(self)) {
            self->cursor_ = self->limit_ - v_4;
            goto break_lab3;
          }
          [self slice_del];
        }
        break_lab3: ;
      }
      break;
      case 2:
      {
        v_6 = self->limit_ - self->cursor_;
        {
          if (!([self eq_s_bWithInt:1 withJavaLangCharSequence:@"e"])) {
            goto break_lab5;
          }
          goto break_lab2;
        }
        break_lab5: ;
        self->cursor_ = self->limit_ - v_6;
      }
      [self slice_del];
      break;
      case 3:
      [self slice_del];
      v_7 = self->limit_ - self->cursor_;
      {
        {
          self->ket_ = self->cursor_;
          {
            v_8 = self->limit_ - self->cursor_;
            {
              if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"er"])) {
                goto break_lab8;
              }
              goto break_lab7;
            }
            break_lab8: ;
            self->cursor_ = self->limit_ - v_8;
            if (!([self eq_s_bWithInt:2 withJavaLangCharSequence:@"en"])) {
              self->cursor_ = self->limit_ - v_7;
              goto break_lab6;
            }
          }
          break_lab7: ;
          self->bra_ = self->cursor_;
          if (!OrgTartarusSnowballExtGermanStemmer_r_R1(self)) {
            self->cursor_ = self->limit_ - v_7;
            goto break_lab6;
          }
          [self slice_del];
        }
        break_lab6: ;
      }
      break;
      case 4:
      [self slice_del];
      v_9 = self->limit_ - self->cursor_;
      {
        {
          self->ket_ = self->cursor_;
          among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtGermanStemmer_a_3_ withInt:2];
          if (among_var == 0) {
            self->cursor_ = self->limit_ - v_9;
            goto break_lab9;
          }
          self->bra_ = self->cursor_;
          if (!OrgTartarusSnowballExtGermanStemmer_r_R2(self)) {
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
        break_lab9: ;
      }
      break;
    }
  }
  break_lab2: ;
  self->cursor_ = self->limit_ - v_3;
  return YES;
}

void OrgTartarusSnowballExtGermanStemmer_init(OrgTartarusSnowballExtGermanStemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
}

OrgTartarusSnowballExtGermanStemmer *new_OrgTartarusSnowballExtGermanStemmer_init() {
  OrgTartarusSnowballExtGermanStemmer *self = [OrgTartarusSnowballExtGermanStemmer alloc];
  OrgTartarusSnowballExtGermanStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtGermanStemmer)
