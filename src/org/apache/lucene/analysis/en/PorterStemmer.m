//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/PorterStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/en/PorterStemmer.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#define OrgApacheLuceneAnalysisEnPorterStemmer_INITIAL_SIZE 50

@interface OrgApacheLuceneAnalysisEnPorterStemmer () {
 @public
  IOSCharArray *b_;
  jint i_, j_, k_, k0_;
  jboolean dirty_;
}

- (jboolean)consWithInt:(jint)i;

- (jint)m;

- (jboolean)vowelinstem;

- (jboolean)doublecWithInt:(jint)j;

- (jboolean)cvcWithInt:(jint)i;

- (jboolean)endsWithNSString:(NSString *)s;

- (void)step1;

- (void)step2;

- (void)step3;

- (void)step4;

- (void)step5;

- (void)step6;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisEnPorterStemmer, b_, IOSCharArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisEnPorterStemmer, INITIAL_SIZE, jint)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint i);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisEnPorterStemmer_m(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisEnPorterStemmer_vowelinstem(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisEnPorterStemmer_doublecWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint j);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisEnPorterStemmer_cvcWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint i);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(OrgApacheLuceneAnalysisEnPorterStemmer *self, NSString *s);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step1(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step2(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step3(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step4(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step5(OrgApacheLuceneAnalysisEnPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisEnPorterStemmer_step6(OrgApacheLuceneAnalysisEnPorterStemmer *self);

@implementation OrgApacheLuceneAnalysisEnPorterStemmer

- (instancetype)init {
  OrgApacheLuceneAnalysisEnPorterStemmer_init(self);
  return self;
}

- (void)reset {
  i_ = 0;
  dirty_ = NO;
}

- (NSString *)description {
  return [NSString stringWithCharacters:b_ offset:0 length:i_];
}

- (jint)getResultLength {
  return i_;
}

- (IOSCharArray *)getResultBuffer {
  return b_;
}

- (jboolean)consWithInt:(jint)i {
  return OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i);
}

- (jint)m {
  return OrgApacheLuceneAnalysisEnPorterStemmer_m(self);
}

- (jboolean)vowelinstem {
  return OrgApacheLuceneAnalysisEnPorterStemmer_vowelinstem(self);
}

- (jboolean)doublecWithInt:(jint)j {
  return OrgApacheLuceneAnalysisEnPorterStemmer_doublecWithInt_(self, j);
}

- (jboolean)cvcWithInt:(jint)i {
  return OrgApacheLuceneAnalysisEnPorterStemmer_cvcWithInt_(self, i);
}

- (jboolean)endsWithNSString:(NSString *)s {
  return OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, s);
}

- (void)settoWithNSString:(NSString *)s {
  jint l = ((jint) [((NSString *) nil_chk(s)) length]);
  jint o = j_ + 1;
  for (jint i = 0; i < l; i++) *IOSCharArray_GetRef(nil_chk(b_), o + i) = [s charAtWithInt:i];
  k_ = j_ + l;
  dirty_ = YES;
}

- (void)rWithNSString:(NSString *)s {
  if (OrgApacheLuceneAnalysisEnPorterStemmer_m(self) > 0) [self settoWithNSString:s];
}

- (void)step1 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step1(self);
}

- (void)step2 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step2(self);
}

- (void)step3 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step3(self);
}

- (void)step4 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step4(self);
}

- (void)step5 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step5(self);
}

- (void)step6 {
  OrgApacheLuceneAnalysisEnPorterStemmer_step6(self);
}

- (jboolean)stemWithCharArray:(IOSCharArray *)wordBuffer
                      withInt:(jint)offset
                      withInt:(jint)wordLen {
  [self reset];
  if (((IOSCharArray *) nil_chk(b_))->size_ < wordLen) {
    JreStrongAssignAndConsume(&b_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(wordLen, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(wordBuffer, offset, b_, 0, wordLen);
  i_ = wordLen;
  return [self stemWithInt:0];
}

- (jboolean)stemWithInt:(jint)i0 {
  k_ = i_ - 1;
  k0_ = i0;
  if (k_ > k0_ + 1) {
    OrgApacheLuceneAnalysisEnPorterStemmer_step1(self);
    OrgApacheLuceneAnalysisEnPorterStemmer_step2(self);
    OrgApacheLuceneAnalysisEnPorterStemmer_step3(self);
    OrgApacheLuceneAnalysisEnPorterStemmer_step4(self);
    OrgApacheLuceneAnalysisEnPorterStemmer_step5(self);
    OrgApacheLuceneAnalysisEnPorterStemmer_step6(self);
  }
  if (i_ != k_ + 1) dirty_ = YES;
  i_ = k_ + 1;
  return dirty_;
}

- (void)dealloc {
  RELEASE_(b_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PorterStemmer", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getResultLength", NULL, "I", 0x1, NULL, NULL },
    { "getResultBuffer", NULL, "[C", 0x1, NULL, NULL },
    { "consWithInt:", "cons", "Z", 0x12, NULL, NULL },
    { "m", NULL, "I", 0x12, NULL, NULL },
    { "vowelinstem", NULL, "Z", 0x12, NULL, NULL },
    { "doublecWithInt:", "doublec", "Z", 0x12, NULL, NULL },
    { "cvcWithInt:", "cvc", "Z", 0x12, NULL, NULL },
    { "endsWithNSString:", "ends", "Z", 0x12, NULL, NULL },
    { "settoWithNSString:", "setto", "V", 0x0, NULL, NULL },
    { "rWithNSString:", "r", "V", 0x0, NULL, NULL },
    { "step1", NULL, "V", 0x12, NULL, NULL },
    { "step2", NULL, "V", 0x12, NULL, NULL },
    { "step3", NULL, "V", 0x12, NULL, NULL },
    { "step4", NULL, "V", 0x12, NULL, NULL },
    { "step5", NULL, "V", 0x12, NULL, NULL },
    { "step6", NULL, "V", 0x12, NULL, NULL },
    { "stemWithCharArray:withInt:withInt:", "stem", "Z", 0x1, NULL, NULL },
    { "stemWithInt:", "stem", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "b_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "i_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "j_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "k_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "k0_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "dirty_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "INITIAL_SIZE", "INITIAL_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisEnPorterStemmer_INITIAL_SIZE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisEnPorterStemmer = { 2, "PorterStemmer", "org.apache.lucene.analysis.en", NULL, 0x0, 21, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisEnPorterStemmer;
}

@end

void OrgApacheLuceneAnalysisEnPorterStemmer_init(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  NSObject_init(self);
  self->dirty_ = NO;
  JreStrongAssignAndConsume(&self->b_, [IOSCharArray newArrayWithLength:OrgApacheLuceneAnalysisEnPorterStemmer_INITIAL_SIZE]);
  self->i_ = 0;
}

OrgApacheLuceneAnalysisEnPorterStemmer *new_OrgApacheLuceneAnalysisEnPorterStemmer_init() {
  OrgApacheLuceneAnalysisEnPorterStemmer *self = [OrgApacheLuceneAnalysisEnPorterStemmer alloc];
  OrgApacheLuceneAnalysisEnPorterStemmer_init(self);
  return self;
}

jboolean OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint i) {
  switch (IOSCharArray_Get(nil_chk(self->b_), i)) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    return NO;
    case 'y':
    return (i == self->k0_) ? YES : !OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i - 1);
    default:
    return YES;
  }
}

jint OrgApacheLuceneAnalysisEnPorterStemmer_m(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  jint n = 0;
  jint i = self->k0_;
  while (YES) {
    if (i > self->j_) return n;
    if (!OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i)) break;
    i++;
  }
  i++;
  while (YES) {
    while (YES) {
      if (i > self->j_) return n;
      if (OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i)) break;
      i++;
    }
    i++;
    n++;
    while (YES) {
      if (i > self->j_) return n;
      if (!OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i)) break;
      i++;
    }
    i++;
  }
}

jboolean OrgApacheLuceneAnalysisEnPorterStemmer_vowelinstem(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  jint i;
  for (i = self->k0_; i <= self->j_; i++) if (!OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i)) return YES;
  return NO;
}

jboolean OrgApacheLuceneAnalysisEnPorterStemmer_doublecWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint j) {
  if (j < self->k0_ + 1) return NO;
  if (IOSCharArray_Get(nil_chk(self->b_), j) != IOSCharArray_Get(self->b_, j - 1)) return NO;
  return OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, j);
}

jboolean OrgApacheLuceneAnalysisEnPorterStemmer_cvcWithInt_(OrgApacheLuceneAnalysisEnPorterStemmer *self, jint i) {
  if (i < self->k0_ + 2 || !OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i) || OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i - 1) || !OrgApacheLuceneAnalysisEnPorterStemmer_consWithInt_(self, i - 2)) return NO;
  else {
    jint ch = IOSCharArray_Get(nil_chk(self->b_), i);
    if (ch == 'w' || ch == 'x' || ch == 'y') return NO;
  }
  return YES;
}

jboolean OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(OrgApacheLuceneAnalysisEnPorterStemmer *self, NSString *s) {
  jint l = ((jint) [((NSString *) nil_chk(s)) length]);
  jint o = self->k_ - l + 1;
  if (o < self->k0_) return NO;
  for (jint i = 0; i < l; i++) if (IOSCharArray_Get(nil_chk(self->b_), o + i) != [s charAtWithInt:i]) return NO;
  self->j_ = self->k_ - l;
  return YES;
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step1(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  if (IOSCharArray_Get(nil_chk(self->b_), self->k_) == 's') {
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"sses")) self->k_ -= 2;
    else if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ies")) [self settoWithNSString:@"i"];
    else if (IOSCharArray_Get(self->b_, self->k_ - 1) != 's') self->k_--;
  }
  if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"eed")) {
    if (OrgApacheLuceneAnalysisEnPorterStemmer_m(self) > 0) self->k_--;
  }
  else if ((OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ed") || OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ing")) && OrgApacheLuceneAnalysisEnPorterStemmer_vowelinstem(self)) {
    self->k_ = self->j_;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"at")) [self settoWithNSString:@"ate"];
    else if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"bl")) [self settoWithNSString:@"ble"];
    else if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"iz")) [self settoWithNSString:@"ize"];
    else if (OrgApacheLuceneAnalysisEnPorterStemmer_doublecWithInt_(self, self->k_)) {
      jint ch = IOSCharArray_Get(self->b_, self->k_--);
      if (ch == 'l' || ch == 's' || ch == 'z') self->k_++;
    }
    else if (OrgApacheLuceneAnalysisEnPorterStemmer_m(self) == 1 && OrgApacheLuceneAnalysisEnPorterStemmer_cvcWithInt_(self, self->k_)) [self settoWithNSString:@"e"];
  }
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step2(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"y") && OrgApacheLuceneAnalysisEnPorterStemmer_vowelinstem(self)) {
    *IOSCharArray_GetRef(nil_chk(self->b_), self->k_) = 'i';
    self->dirty_ = YES;
  }
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step3(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  if (self->k_ == self->k0_) return;
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_ - 1)) {
    case 'a':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ational")) {
      [self rWithNSString:@"ate"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"tional")) {
      [self rWithNSString:@"tion"];
      break;
    }
    break;
    case 'c':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"enci")) {
      [self rWithNSString:@"ence"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"anci")) {
      [self rWithNSString:@"ance"];
      break;
    }
    break;
    case 'e':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"izer")) {
      [self rWithNSString:@"ize"];
      break;
    }
    break;
    case 'l':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"bli")) {
      [self rWithNSString:@"ble"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"alli")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"entli")) {
      [self rWithNSString:@"ent"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"eli")) {
      [self rWithNSString:@"e"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ousli")) {
      [self rWithNSString:@"ous"];
      break;
    }
    break;
    case 'o':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ization")) {
      [self rWithNSString:@"ize"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ation")) {
      [self rWithNSString:@"ate"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ator")) {
      [self rWithNSString:@"ate"];
      break;
    }
    break;
    case 's':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"alism")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"iveness")) {
      [self rWithNSString:@"ive"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"fulness")) {
      [self rWithNSString:@"ful"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ousness")) {
      [self rWithNSString:@"ous"];
      break;
    }
    break;
    case 't':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"aliti")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"iviti")) {
      [self rWithNSString:@"ive"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"biliti")) {
      [self rWithNSString:@"ble"];
      break;
    }
    break;
    case 'g':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"logi")) {
      [self rWithNSString:@"log"];
      break;
    }
  }
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step4(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_)) {
    case 'e':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"icate")) {
      [self rWithNSString:@"ic"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ative")) {
      [self rWithNSString:@""];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"alize")) {
      [self rWithNSString:@"al"];
      break;
    }
    break;
    case 'i':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"iciti")) {
      [self rWithNSString:@"ic"];
      break;
    }
    break;
    case 'l':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ical")) {
      [self rWithNSString:@"ic"];
      break;
    }
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ful")) {
      [self rWithNSString:@""];
      break;
    }
    break;
    case 's':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ness")) {
      [self rWithNSString:@""];
      break;
    }
    break;
  }
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step5(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  if (self->k_ == self->k0_) return;
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_ - 1)) {
    case 'a':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"al")) break;
    return;
    case 'c':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ance")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ence")) break;
    return;
    case 'e':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"er")) break;
    return;
    case 'i':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ic")) break;
    return;
    case 'l':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"able")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ible")) break;
    return;
    case 'n':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ant")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ement")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ment")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ent")) break;
    return;
    case 'o':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ion") && self->j_ >= 0 && (IOSCharArray_Get(self->b_, self->j_) == 's' || IOSCharArray_Get(self->b_, self->j_) == 't')) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ou")) break;
    return;
    case 's':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ism")) break;
    return;
    case 't':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ate")) break;
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"iti")) break;
    return;
    case 'u':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ous")) break;
    return;
    case 'v':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ive")) break;
    return;
    case 'z':
    if (OrgApacheLuceneAnalysisEnPorterStemmer_endsWithNSString_(self, @"ize")) break;
    return;
    default:
    return;
  }
  if (OrgApacheLuceneAnalysisEnPorterStemmer_m(self) > 1) self->k_ = self->j_;
}

void OrgApacheLuceneAnalysisEnPorterStemmer_step6(OrgApacheLuceneAnalysisEnPorterStemmer *self) {
  self->j_ = self->k_;
  if (IOSCharArray_Get(nil_chk(self->b_), self->k_) == 'e') {
    jint a = OrgApacheLuceneAnalysisEnPorterStemmer_m(self);
    if (a > 1 || (a == 1 && !OrgApacheLuceneAnalysisEnPorterStemmer_cvcWithInt_(self, self->k_ - 1))) self->k_--;
  }
  if (IOSCharArray_Get(self->b_, self->k_) == 'l' && OrgApacheLuceneAnalysisEnPorterStemmer_doublecWithInt_(self, self->k_) && OrgApacheLuceneAnalysisEnPorterStemmer_m(self) > 1) self->k_--;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisEnPorterStemmer)
