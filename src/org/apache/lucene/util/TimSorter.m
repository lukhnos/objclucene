//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/TimSorter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/Sorter.h"
#include "org/apache/lucene/util/TimSorter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/TimSorter must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilTimSorter

+ (jint)MINRUN {
  return OrgApacheLuceneUtilTimSorter_MINRUN;
}

+ (jint)THRESHOLD {
  return OrgApacheLuceneUtilTimSorter_THRESHOLD;
}

+ (jint)STACKSIZE {
  return OrgApacheLuceneUtilTimSorter_STACKSIZE;
}

+ (jint)MIN_GALLOP {
  return OrgApacheLuceneUtilTimSorter_MIN_GALLOP;
}

- (instancetype)initWithInt:(jint)maxTempSlots {
  OrgApacheLuceneUtilTimSorter_initWithInt_(self, maxTempSlots);
  return self;
}

+ (jint)minRunWithInt:(jint)length {
  return OrgApacheLuceneUtilTimSorter_minRunWithInt_(length);
}

- (jint)runLenWithInt:(jint)i {
  jint off = stackSize_ - i;
  return IOSIntArray_Get(nil_chk(runEnds_), off) - IOSIntArray_Get(runEnds_, off - 1);
}

- (jint)runBaseWithInt:(jint)i {
  return IOSIntArray_Get(nil_chk(runEnds_), stackSize_ - i - 1);
}

- (jint)runEndWithInt:(jint)i {
  return IOSIntArray_Get(nil_chk(runEnds_), stackSize_ - i);
}

- (void)setRunEndWithInt:(jint)i
                 withInt:(jint)runEnd {
  *IOSIntArray_GetRef(nil_chk(runEnds_), stackSize_ - i) = runEnd;
}

- (void)pushRunLenWithInt:(jint)len {
  *IOSIntArray_GetRef(nil_chk(runEnds_), stackSize_ + 1) = IOSIntArray_Get(runEnds_, stackSize_) + len;
  ++stackSize_;
}

- (jint)nextRun {
  jint runBase = [self runEndWithInt:0];
  JreAssert(runBase < to_, @"org/apache/lucene/util/TimSorter.java:102 condition failed: assert runBase < to;");
  if (runBase == to_ - 1) {
    return 1;
  }
  jint o = runBase + 2;
  if ([self compareWithInt:runBase withInt:runBase + 1] > 0) {
    while (o < to_ && [self compareWithInt:o - 1 withInt:o] > 0) {
      ++o;
    }
    [self reverseWithInt:runBase withInt:o];
  }
  else {
    while (o < to_ && [self compareWithInt:o - 1 withInt:o] <= 0) {
      ++o;
    }
  }
  jint runHi = JavaLangMath_maxWithInt_withInt_(o, JavaLangMath_minWithInt_withInt_(to_, runBase + minRun_));
  [self binarySortWithInt:runBase withInt:runHi withInt:o];
  return runHi - runBase;
}

- (void)ensureInvariants {
  while (stackSize_ > 1) {
    jint runLen0 = [self runLenWithInt:0];
    jint runLen1 = [self runLenWithInt:1];
    if (stackSize_ > 2) {
      jint runLen2 = [self runLenWithInt:2];
      if (runLen2 <= runLen1 + runLen0) {
        if (runLen2 < runLen0) {
          [self mergeAtWithInt:1];
        }
        else {
          [self mergeAtWithInt:0];
        }
        continue;
      }
    }
    if (runLen1 <= runLen0) {
      [self mergeAtWithInt:0];
      continue;
    }
    break;
  }
}

- (void)exhaustStack {
  while (stackSize_ > 1) {
    [self mergeAtWithInt:0];
  }
}

- (void)resetWithInt:(jint)from
             withInt:(jint)to {
  stackSize_ = 0;
  JavaUtilArrays_fillWithIntArray_withInt_(runEnds_, 0);
  *IOSIntArray_GetRef(nil_chk(runEnds_), 0) = from;
  self->to_ = to;
  jint length = to - from;
  self->minRun_ = length <= OrgApacheLuceneUtilTimSorter_THRESHOLD ? length : OrgApacheLuceneUtilTimSorter_minRunWithInt_(length);
}

- (void)mergeAtWithInt:(jint)n {
  JreAssert(stackSize_ >= 2, @"org/apache/lucene/util/TimSorter.java:168 condition failed: assert stackSize >= 2;");
  [self mergeWithInt:[self runBaseWithInt:n + 1] withInt:[self runBaseWithInt:n] withInt:[self runEndWithInt:n]];
  for (jint j = n + 1; j > 0; --j) {
    [self setRunEndWithInt:j withInt:[self runEndWithInt:j - 1]];
  }
  --stackSize_;
}

- (void)mergeWithInt:(jint)lo
             withInt:(jint)mid
             withInt:(jint)hi {
  if ([self compareWithInt:mid - 1 withInt:mid] <= 0) {
    return;
  }
  lo = [self upper2WithInt:lo withInt:mid withInt:mid];
  hi = [self lower2WithInt:mid withInt:hi withInt:mid - 1];
  if (hi - mid <= mid - lo && hi - mid <= maxTempSlots_) {
    [self mergeHiWithInt:lo withInt:mid withInt:hi];
  }
  else if (mid - lo <= maxTempSlots_) {
    [self mergeLoWithInt:lo withInt:mid withInt:hi];
  }
  else {
    [self mergeInPlaceWithInt:lo withInt:mid withInt:hi];
  }
}

- (void)sortWithInt:(jint)from
            withInt:(jint)to {
  [self checkRangeWithInt:from withInt:to];
  if (to - from <= 1) {
    return;
  }
  [self resetWithInt:from withInt:to];
  do {
    [self ensureInvariants];
    [self pushRunLenWithInt:[self nextRun]];
  }
  while ([self runEndWithInt:0] < to);
  [self exhaustStack];
  JreAssert([self runEndWithInt:0] == to, @"org/apache/lucene/util/TimSorter.java:204 condition failed: assert runEnd(0) == to;");
}

- (void)doRotateWithInt:(jint)lo
                withInt:(jint)mid
                withInt:(jint)hi {
  jint len1 = mid - lo;
  jint len2 = hi - mid;
  if (len1 == len2) {
    while (mid < hi) {
      [self swapWithInt:lo++ withInt:mid++];
    }
  }
  else if (len2 < len1 && len2 <= maxTempSlots_) {
    [self saveWithInt:mid withInt:len2];
    for (jint i = lo + len1 - 1, j = hi - 1; i >= lo; --i, --j) {
      [self copy__WithInt:i withInt:j];
    }
    for (jint i = 0, j = lo; i < len2; ++i, ++j) {
      [self restoreWithInt:i withInt:j];
    }
  }
  else if (len1 <= maxTempSlots_) {
    [self saveWithInt:lo withInt:len1];
    for (jint i = mid, j = lo; i < hi; ++i, ++j) {
      [self copy__WithInt:i withInt:j];
    }
    for (jint i = 0, j = lo + len2; j < hi; ++i, ++j) {
      [self restoreWithInt:i withInt:j];
    }
  }
  else {
    [self reverseWithInt:lo withInt:mid];
    [self reverseWithInt:mid withInt:hi];
    [self reverseWithInt:lo withInt:hi];
  }
}

- (void)mergeLoWithInt:(jint)lo
               withInt:(jint)mid
               withInt:(jint)hi {
  JreAssert([self compareWithInt:lo withInt:mid] > 0, @"org/apache/lucene/util/TimSorter.java:239 condition failed: assert compare(lo, mid) > 0;");
  jint len1 = mid - lo;
  [self saveWithInt:lo withInt:len1];
  [self copy__WithInt:mid withInt:lo];
  jint i = 0;
  jint j = mid + 1;
  jint dest = lo + 1;
  for (; ; ) {
    for (jint count = 0; count < OrgApacheLuceneUtilTimSorter_MIN_GALLOP; ) {
      if (i >= len1 || j >= hi) {
        goto break_outer;
      }
      else if ([self compareSavedWithInt:i withInt:j] <= 0) {
        [self restoreWithInt:i++ withInt:dest++];
        count = 0;
      }
      else {
        [self copy__WithInt:j++ withInt:dest++];
        ++count;
      }
    }
    jint next = [self lowerSaved3WithInt:j withInt:hi withInt:i];
    for (; j < next; ++dest) {
      [self copy__WithInt:j++ withInt:dest];
    }
    [self restoreWithInt:i++ withInt:dest++];
  }
  break_outer: ;
  for (; i < len1; ++dest) {
    [self restoreWithInt:i++ withInt:dest];
  }
  JreAssert(j == dest, @"org/apache/lucene/util/TimSorter.java:266 condition failed: assert j == dest;");
}

- (void)mergeHiWithInt:(jint)lo
               withInt:(jint)mid
               withInt:(jint)hi {
  JreAssert([self compareWithInt:mid - 1 withInt:hi - 1] > 0, @"org/apache/lucene/util/TimSorter.java:270 condition failed: assert compare(mid - 1, hi - 1) > 0;");
  jint len2 = hi - mid;
  [self saveWithInt:mid withInt:len2];
  [self copy__WithInt:mid - 1 withInt:hi - 1];
  jint i = mid - 2;
  jint j = len2 - 1;
  jint dest = hi - 2;
  for (; ; ) {
    for (jint count = 0; count < OrgApacheLuceneUtilTimSorter_MIN_GALLOP; ) {
      if (i < lo || j < 0) {
        goto break_outer;
      }
      else if ([self compareSavedWithInt:j withInt:i] >= 0) {
        [self restoreWithInt:j-- withInt:dest--];
        count = 0;
      }
      else {
        [self copy__WithInt:i-- withInt:dest--];
        ++count;
      }
    }
    jint next = [self upperSaved3WithInt:lo withInt:i + 1 withInt:j];
    while (i >= next) {
      [self copy__WithInt:i-- withInt:dest--];
    }
    [self restoreWithInt:j-- withInt:dest--];
  }
  break_outer: ;
  for (; j >= 0; --dest) {
    [self restoreWithInt:j-- withInt:dest];
  }
  JreAssert(i == dest, @"org/apache/lucene/util/TimSorter.java:297 condition failed: assert i == dest;");
}

- (jint)lowerSavedWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)val {
  jint len = to - from;
  while (len > 0) {
    jint half = JreURShift32(len, 1);
    jint mid = from + half;
    if ([self compareSavedWithInt:val withInt:mid] > 0) {
      from = mid + 1;
      len = len - half - 1;
    }
    else {
      len = half;
    }
  }
  return from;
}

- (jint)upperSavedWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)val {
  jint len = to - from;
  while (len > 0) {
    jint half = JreURShift32(len, 1);
    jint mid = from + half;
    if ([self compareSavedWithInt:val withInt:mid] < 0) {
      len = half;
    }
    else {
      from = mid + 1;
      len = len - half - 1;
    }
  }
  return from;
}

- (jint)lowerSaved3WithInt:(jint)from
                   withInt:(jint)to
                   withInt:(jint)val {
  jint f = from;
  jint t = f + 1;
  while (t < to) {
    if ([self compareSavedWithInt:val withInt:t] <= 0) {
      return [self lowerSavedWithInt:f withInt:t withInt:val];
    }
    jint delta = t - f;
    f = t;
    t += JreLShift32(delta, 1);
  }
  return [self lowerSavedWithInt:f withInt:to withInt:val];
}

- (jint)upperSaved3WithInt:(jint)from
                   withInt:(jint)to
                   withInt:(jint)val {
  jint f = to - 1;
  jint t = to;
  while (f > from) {
    if ([self compareSavedWithInt:val withInt:f] >= 0) {
      return [self upperSavedWithInt:f withInt:t withInt:val];
    }
    jint delta = t - f;
    t = f;
    f -= JreLShift32(delta, 1);
  }
  return [self upperSavedWithInt:from withInt:t withInt:val];
}

- (void)copy__WithInt:(jint)src
              withInt:(jint)dest {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)saveWithInt:(jint)i
            withInt:(jint)len {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)restoreWithInt:(jint)i
               withInt:(jint)j {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jint)compareSavedWithInt:(jint)i
                    withInt:(jint)j {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(runEnds_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 2, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 7, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 8, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 13, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 14, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 15, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 16, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 17, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 18, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 19, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 20, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 21, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 22, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x404, 23, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(minRunWithInt:);
  methods[2].selector = @selector(runLenWithInt:);
  methods[3].selector = @selector(runBaseWithInt:);
  methods[4].selector = @selector(runEndWithInt:);
  methods[5].selector = @selector(setRunEndWithInt:withInt:);
  methods[6].selector = @selector(pushRunLenWithInt:);
  methods[7].selector = @selector(nextRun);
  methods[8].selector = @selector(ensureInvariants);
  methods[9].selector = @selector(exhaustStack);
  methods[10].selector = @selector(resetWithInt:withInt:);
  methods[11].selector = @selector(mergeAtWithInt:);
  methods[12].selector = @selector(mergeWithInt:withInt:withInt:);
  methods[13].selector = @selector(sortWithInt:withInt:);
  methods[14].selector = @selector(doRotateWithInt:withInt:withInt:);
  methods[15].selector = @selector(mergeLoWithInt:withInt:withInt:);
  methods[16].selector = @selector(mergeHiWithInt:withInt:withInt:);
  methods[17].selector = @selector(lowerSavedWithInt:withInt:withInt:);
  methods[18].selector = @selector(upperSavedWithInt:withInt:withInt:);
  methods[19].selector = @selector(lowerSaved3WithInt:withInt:withInt:);
  methods[20].selector = @selector(upperSaved3WithInt:withInt:withInt:);
  methods[21].selector = @selector(copy__WithInt:withInt:);
  methods[22].selector = @selector(saveWithInt:withInt:);
  methods[23].selector = @selector(restoreWithInt:withInt:);
  methods[24].selector = @selector(compareSavedWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MINRUN", "I", .constantValue.asInt = OrgApacheLuceneUtilTimSorter_MINRUN, 0x18, -1, -1, -1, -1 },
    { "THRESHOLD", "I", .constantValue.asInt = OrgApacheLuceneUtilTimSorter_THRESHOLD, 0x18, -1, -1, -1, -1 },
    { "STACKSIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilTimSorter_STACKSIZE, 0x18, -1, -1, -1, -1 },
    { "MIN_GALLOP", "I", .constantValue.asInt = OrgApacheLuceneUtilTimSorter_MIN_GALLOP, 0x18, -1, -1, -1, -1 },
    { "maxTempSlots_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "minRun_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "to_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "stackSize_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "runEnds_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "minRun", "runLen", "runBase", "runEnd", "setRunEnd", "II", "pushRunLen", "reset", "mergeAt", "merge", "III", "sort", "doRotate", "mergeLo", "mergeHi", "lowerSaved", "upperSaved", "lowerSaved3", "upperSaved3", "copy", "save", "restore", "compareSaved" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilTimSorter = { "TimSorter", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 25, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilTimSorter;
}

@end

void OrgApacheLuceneUtilTimSorter_initWithInt_(OrgApacheLuceneUtilTimSorter *self, jint maxTempSlots) {
  OrgApacheLuceneUtilSorter_init(self);
  JreStrongAssignAndConsume(&self->runEnds_, [IOSIntArray newArrayWithLength:1 + OrgApacheLuceneUtilTimSorter_STACKSIZE]);
  self->maxTempSlots_ = maxTempSlots;
}

jint OrgApacheLuceneUtilTimSorter_minRunWithInt_(jint length) {
  OrgApacheLuceneUtilTimSorter_initialize();
  JreAssert(length >= OrgApacheLuceneUtilTimSorter_MINRUN, @"org/apache/lucene/util/TimSorter.java:64 condition failed: assert length >= MINRUN;");
  jint n = length;
  jint r = 0;
  while (n >= 64) {
    r |= n & 1;
    JreURShiftAssignInt(&n, 1);
  }
  jint minRun = n + r;
  JreAssert(minRun >= OrgApacheLuceneUtilTimSorter_MINRUN && minRun <= OrgApacheLuceneUtilTimSorter_THRESHOLD, @"org/apache/lucene/util/TimSorter.java:72 condition failed: assert minRun >= MINRUN && minRun <= THRESHOLD;");
  return minRun;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilTimSorter)
