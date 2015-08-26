//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/SnowballProgram.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballSnowballProgram () {
 @public
  IOSCharArray *current_;
}

@end

J2OBJC_FIELD_SETTER(OrgTartarusSnowballSnowballProgram, current_, IOSCharArray *)

static IOSObjectArray *OrgTartarusSnowballSnowballProgram_EMPTY_ARGS_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballSnowballProgram, EMPTY_ARGS_, IOSObjectArray *)

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballSnowballProgram)

@implementation OrgTartarusSnowballSnowballProgram

- (instancetype)init {
  OrgTartarusSnowballSnowballProgram_init(self);
  return self;
}

- (jboolean)stem {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setCurrentWithNSString:(NSString *)value {
  JreStrongAssign(&current_, [((NSString *) nil_chk(value)) toCharArray]);
  cursor_ = 0;
  limit_ = ((jint) [value length]);
  limit_backward_ = 0;
  bra_ = cursor_;
  ket_ = limit_;
}

- (NSString *)getCurrent {
  return [NSString stringWithCharacters:current_ offset:0 length:limit_];
}

- (void)setCurrentWithCharArray:(IOSCharArray *)text
                        withInt:(jint)length {
  JreStrongAssign(&current_, text);
  cursor_ = 0;
  limit_ = length;
  limit_backward_ = 0;
  bra_ = cursor_;
  ket_ = limit_;
}

- (IOSCharArray *)getCurrentBuffer {
  return current_;
}

- (jint)getCurrentBufferLength {
  return limit_;
}

- (void)copy_fromWithOrgTartarusSnowballSnowballProgram:(OrgTartarusSnowballSnowballProgram *)other {
  JreStrongAssign(&current_, ((OrgTartarusSnowballSnowballProgram *) nil_chk(other))->current_);
  cursor_ = other->cursor_;
  limit_ = other->limit_;
  limit_backward_ = other->limit_backward_;
  bra_ = other->bra_;
  ket_ = other->ket_;
}

- (jboolean)in_groupingWithCharArray:(IOSCharArray *)s
                             withInt:(jint)min
                             withInt:(jint)max {
  if (cursor_ >= limit_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_);
  if (ch > max || ch < min) return NO;
  ch -= min;
  if ((IOSCharArray_Get(nil_chk(s), JreRShift32(ch, 3)) & (JreLShift32(0X1, (ch & 0X7)))) == 0) return NO;
  cursor_++;
  return YES;
}

- (jboolean)in_grouping_bWithCharArray:(IOSCharArray *)s
                               withInt:(jint)min
                               withInt:(jint)max {
  if (cursor_ <= limit_backward_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_ - 1);
  if (ch > max || ch < min) return NO;
  ch -= min;
  if ((IOSCharArray_Get(nil_chk(s), JreRShift32(ch, 3)) & (JreLShift32(0X1, (ch & 0X7)))) == 0) return NO;
  cursor_--;
  return YES;
}

- (jboolean)out_groupingWithCharArray:(IOSCharArray *)s
                              withInt:(jint)min
                              withInt:(jint)max {
  if (cursor_ >= limit_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_);
  if (ch > max || ch < min) {
    cursor_++;
    return YES;
  }
  ch -= min;
  if ((IOSCharArray_Get(nil_chk(s), JreRShift32(ch, 3)) & (JreLShift32(0X1, (ch & 0X7)))) == 0) {
    cursor_++;
    return YES;
  }
  return NO;
}

- (jboolean)out_grouping_bWithCharArray:(IOSCharArray *)s
                                withInt:(jint)min
                                withInt:(jint)max {
  if (cursor_ <= limit_backward_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_ - 1);
  if (ch > max || ch < min) {
    cursor_--;
    return YES;
  }
  ch -= min;
  if ((IOSCharArray_Get(nil_chk(s), JreRShift32(ch, 3)) & (JreLShift32(0X1, (ch & 0X7)))) == 0) {
    cursor_--;
    return YES;
  }
  return NO;
}

- (jboolean)in_rangeWithInt:(jint)min
                    withInt:(jint)max {
  if (cursor_ >= limit_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_);
  if (ch > max || ch < min) return NO;
  cursor_++;
  return YES;
}

- (jboolean)in_range_bWithInt:(jint)min
                      withInt:(jint)max {
  if (cursor_ <= limit_backward_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_ - 1);
  if (ch > max || ch < min) return NO;
  cursor_--;
  return YES;
}

- (jboolean)out_rangeWithInt:(jint)min
                     withInt:(jint)max {
  if (cursor_ >= limit_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_);
  if (!(ch > max || ch < min)) return NO;
  cursor_++;
  return YES;
}

- (jboolean)out_range_bWithInt:(jint)min
                       withInt:(jint)max {
  if (cursor_ <= limit_backward_) return NO;
  jchar ch = IOSCharArray_Get(nil_chk(current_), cursor_ - 1);
  if (!(ch > max || ch < min)) return NO;
  cursor_--;
  return YES;
}

- (jboolean)eq_sWithInt:(jint)s_size
withJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  if (limit_ - cursor_ < s_size) return NO;
  jint i;
  for (i = 0; i != s_size; i++) {
    if (IOSCharArray_Get(nil_chk(current_), cursor_ + i) != [((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:i]) return NO;
  }
  cursor_ += s_size;
  return YES;
}

- (jboolean)eq_s_bWithInt:(jint)s_size
 withJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  if (cursor_ - limit_backward_ < s_size) return NO;
  jint i;
  for (i = 0; i != s_size; i++) {
    if (IOSCharArray_Get(nil_chk(current_), cursor_ - s_size + i) != [((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:i]) return NO;
  }
  cursor_ -= s_size;
  return YES;
}

- (jboolean)eq_vWithJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  return [self eq_sWithInt:[((id<JavaLangCharSequence>) nil_chk(s)) length] withJavaLangCharSequence:s];
}

- (jboolean)eq_v_bWithJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  return [self eq_s_bWithInt:[((id<JavaLangCharSequence>) nil_chk(s)) length] withJavaLangCharSequence:s];
}

- (jint)find_amongWithOrgTartarusSnowballAmongArray:(IOSObjectArray *)v
                                            withInt:(jint)v_size {
  jint i = 0;
  jint j = v_size;
  jint c = cursor_;
  jint l = limit_;
  jint common_i = 0;
  jint common_j = 0;
  jboolean first_key_inspected = NO;
  while (YES) {
    jint k = i + (JreRShift32((j - i), 1));
    jint diff = 0;
    jint common = common_i < common_j ? common_i : common_j;
    OrgTartarusSnowballAmong *w = IOSObjectArray_Get(nil_chk(v), k);
    jint i2;
    for (i2 = common; i2 < ((OrgTartarusSnowballAmong *) nil_chk(w))->s_size_; i2++) {
      if (c + common == l) {
        diff = -1;
        break;
      }
      diff = IOSCharArray_Get(nil_chk(current_), c + common) - IOSCharArray_Get(nil_chk(w->s_), i2);
      if (diff != 0) break;
      common++;
    }
    if (diff < 0) {
      j = k;
      common_j = common;
    }
    else {
      i = k;
      common_i = common;
    }
    if (j - i <= 1) {
      if (i > 0) break;
      if (j == i) break;
      if (first_key_inspected) break;
      first_key_inspected = YES;
    }
  }
  while (YES) {
    OrgTartarusSnowballAmong *w = IOSObjectArray_Get(nil_chk(v), i);
    if (common_i >= ((OrgTartarusSnowballAmong *) nil_chk(w))->s_size_) {
      cursor_ = c + w->s_size_;
      if (w->method_ == nil) return w->result_;
      jboolean res;
      @try {
        id resobj = [((JavaLangReflectMethod *) nil_chk(w->method_)) invokeWithId:w->methodobject_ withNSObjectArray:OrgTartarusSnowballSnowballProgram_EMPTY_ARGS_];
        res = [((NSString *) nil_chk([nil_chk(resobj) description])) isEqual:@"true"];
      }
      @catch (JavaLangReflectInvocationTargetException *e) {
        res = NO;
      }
      @catch (JavaLangIllegalAccessException *e) {
        res = NO;
      }
      cursor_ = c + w->s_size_;
      if (res) return w->result_;
    }
    i = w->substring_i_;
    if (i < 0) return 0;
  }
}

- (jint)find_among_bWithOrgTartarusSnowballAmongArray:(IOSObjectArray *)v
                                              withInt:(jint)v_size {
  jint i = 0;
  jint j = v_size;
  jint c = cursor_;
  jint lb = limit_backward_;
  jint common_i = 0;
  jint common_j = 0;
  jboolean first_key_inspected = NO;
  while (YES) {
    jint k = i + (JreRShift32((j - i), 1));
    jint diff = 0;
    jint common = common_i < common_j ? common_i : common_j;
    OrgTartarusSnowballAmong *w = IOSObjectArray_Get(nil_chk(v), k);
    jint i2;
    for (i2 = ((OrgTartarusSnowballAmong *) nil_chk(w))->s_size_ - 1 - common; i2 >= 0; i2--) {
      if (c - common == lb) {
        diff = -1;
        break;
      }
      diff = IOSCharArray_Get(nil_chk(current_), c - 1 - common) - IOSCharArray_Get(nil_chk(w->s_), i2);
      if (diff != 0) break;
      common++;
    }
    if (diff < 0) {
      j = k;
      common_j = common;
    }
    else {
      i = k;
      common_i = common;
    }
    if (j - i <= 1) {
      if (i > 0) break;
      if (j == i) break;
      if (first_key_inspected) break;
      first_key_inspected = YES;
    }
  }
  while (YES) {
    OrgTartarusSnowballAmong *w = IOSObjectArray_Get(nil_chk(v), i);
    if (common_i >= ((OrgTartarusSnowballAmong *) nil_chk(w))->s_size_) {
      cursor_ = c - w->s_size_;
      if (w->method_ == nil) return w->result_;
      jboolean res;
      @try {
        id resobj = [((JavaLangReflectMethod *) nil_chk(w->method_)) invokeWithId:w->methodobject_ withNSObjectArray:OrgTartarusSnowballSnowballProgram_EMPTY_ARGS_];
        res = [((NSString *) nil_chk([nil_chk(resobj) description])) isEqual:@"true"];
      }
      @catch (JavaLangReflectInvocationTargetException *e) {
        res = NO;
      }
      @catch (JavaLangIllegalAccessException *e) {
        res = NO;
      }
      cursor_ = c - w->s_size_;
      if (res) return w->result_;
    }
    i = w->substring_i_;
    if (i < 0) return 0;
  }
}

- (jint)replace_sWithInt:(jint)c_bra
                 withInt:(jint)c_ket
withJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  jint adjustment = [((id<JavaLangCharSequence>) nil_chk(s)) length] - (c_ket - c_bra);
  jint newLength = limit_ + adjustment;
  if (newLength > ((IOSCharArray *) nil_chk(current_))->size_) {
    IOSCharArray *newBuffer = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newLength, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(current_, 0, newBuffer, 0, limit_);
    JreStrongAssign(&current_, newBuffer);
  }
  if (adjustment != 0 && c_ket < limit_) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(current_, c_ket, current_, c_bra + [s length], limit_ - c_ket);
  }
  for (jint i = 0; i < [s length]; i++) *IOSCharArray_GetRef(current_, c_bra + i) = [s charAtWithInt:i];
  limit_ += adjustment;
  if (cursor_ >= c_ket) cursor_ += adjustment;
  else if (cursor_ > c_bra) cursor_ = c_bra;
  return adjustment;
}

- (void)slice_check {
  if (bra_ < 0 || bra_ > ket_ || ket_ > limit_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$I", @"faulty slice operation: bra=", bra_, @",ket=", ket_, @",limit=", limit_)) autorelease];
  }
}

- (void)slice_fromWithJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  [self slice_check];
  [self replace_sWithInt:bra_ withInt:ket_ withJavaLangCharSequence:s];
}

- (void)slice_del {
  [self slice_fromWithJavaLangCharSequence:@""];
}

- (void)insertWithInt:(jint)c_bra
              withInt:(jint)c_ket
withJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  jint adjustment = [self replace_sWithInt:c_bra withInt:c_ket withJavaLangCharSequence:s];
  if (c_bra <= bra_) bra_ += adjustment;
  if (c_bra <= ket_) ket_ += adjustment;
}

- (JavaLangStringBuilder *)slice_toWithJavaLangStringBuilder:(JavaLangStringBuilder *)s {
  [self slice_check];
  jint len = ket_ - bra_;
  [((JavaLangStringBuilder *) nil_chk(s)) setLengthWithInt:0];
  [s appendWithCharArray:current_ withInt:bra_ withInt:len];
  return s;
}

- (JavaLangStringBuilder *)assign_toWithJavaLangStringBuilder:(JavaLangStringBuilder *)s {
  [((JavaLangStringBuilder *) nil_chk(s)) setLengthWithInt:0];
  [s appendWithCharArray:current_ withInt:0 withInt:limit_];
  return s;
}

- (void)dealloc {
  RELEASE_(current_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballSnowballProgram class]) {
    JreStrongAssignAndConsume(&OrgTartarusSnowballSnowballProgram_EMPTY_ARGS_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballSnowballProgram)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SnowballProgram", NULL, 0x4, NULL, NULL },
    { "stem", NULL, "Z", 0x401, NULL, NULL },
    { "setCurrentWithNSString:", "setCurrent", "V", 0x1, NULL, NULL },
    { "getCurrent", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setCurrentWithCharArray:withInt:", "setCurrent", "V", 0x1, NULL, NULL },
    { "getCurrentBuffer", NULL, "[C", 0x1, NULL, NULL },
    { "getCurrentBufferLength", NULL, "I", 0x1, NULL, NULL },
    { "copy_fromWithOrgTartarusSnowballSnowballProgram:", "copy_from", "V", 0x4, NULL, NULL },
    { "in_groupingWithCharArray:withInt:withInt:", "in_grouping", "Z", 0x4, NULL, NULL },
    { "in_grouping_bWithCharArray:withInt:withInt:", "in_grouping_b", "Z", 0x4, NULL, NULL },
    { "out_groupingWithCharArray:withInt:withInt:", "out_grouping", "Z", 0x4, NULL, NULL },
    { "out_grouping_bWithCharArray:withInt:withInt:", "out_grouping_b", "Z", 0x4, NULL, NULL },
    { "in_rangeWithInt:withInt:", "in_range", "Z", 0x4, NULL, NULL },
    { "in_range_bWithInt:withInt:", "in_range_b", "Z", 0x4, NULL, NULL },
    { "out_rangeWithInt:withInt:", "out_range", "Z", 0x4, NULL, NULL },
    { "out_range_bWithInt:withInt:", "out_range_b", "Z", 0x4, NULL, NULL },
    { "eq_sWithInt:withJavaLangCharSequence:", "eq_s", "Z", 0x4, NULL, NULL },
    { "eq_s_bWithInt:withJavaLangCharSequence:", "eq_s_b", "Z", 0x4, NULL, NULL },
    { "eq_vWithJavaLangCharSequence:", "eq_v", "Z", 0x4, NULL, NULL },
    { "eq_v_bWithJavaLangCharSequence:", "eq_v_b", "Z", 0x4, NULL, NULL },
    { "find_amongWithOrgTartarusSnowballAmongArray:withInt:", "find_among", "I", 0x4, NULL, NULL },
    { "find_among_bWithOrgTartarusSnowballAmongArray:withInt:", "find_among_b", "I", 0x4, NULL, NULL },
    { "replace_sWithInt:withInt:withJavaLangCharSequence:", "replace_s", "I", 0x4, NULL, NULL },
    { "slice_check", NULL, "V", 0x4, NULL, NULL },
    { "slice_fromWithJavaLangCharSequence:", "slice_from", "V", 0x4, NULL, NULL },
    { "slice_del", NULL, "V", 0x4, NULL, NULL },
    { "insertWithInt:withInt:withJavaLangCharSequence:", "insert", "V", 0x4, NULL, NULL },
    { "slice_toWithJavaLangStringBuilder:", "slice_to", "Ljava.lang.StringBuilder;", 0x4, NULL, NULL },
    { "assign_toWithJavaLangStringBuilder:", "assign_to", "Ljava.lang.StringBuilder;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_ARGS_", NULL, 0x1a, "[Ljava.lang.Object;", &OrgTartarusSnowballSnowballProgram_EMPTY_ARGS_, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "cursor_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "limit_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "limit_backward_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bra_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ket_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgTartarusSnowballSnowballProgram = { 2, "SnowballProgram", "org.tartarus.snowball", NULL, 0x401, 29, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgTartarusSnowballSnowballProgram;
}

@end

void OrgTartarusSnowballSnowballProgram_init(OrgTartarusSnowballSnowballProgram *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->current_, [IOSCharArray newArrayWithLength:8]);
  [self setCurrentWithNSString:@""];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballSnowballProgram)
