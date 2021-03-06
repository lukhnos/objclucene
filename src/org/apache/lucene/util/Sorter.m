//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Sorter.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/util/Sorter.h"

__attribute__((unused)) static void OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(OrgApacheLuceneUtilSorter *self, jint from, jint to);

__attribute__((unused)) static void OrgApacheLuceneUtilSorter_rotateWithInt_withInt_withInt_(OrgApacheLuceneUtilSorter *self, jint lo, jint mid, jint hi);

@implementation OrgApacheLuceneUtilSorter

+ (jint)THRESHOLD {
  return OrgApacheLuceneUtilSorter_THRESHOLD;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilSorter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)sortWithInt:(jint)from
            withInt:(jint)to {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)checkRangeWithInt:(jint)from
                  withInt:(jint)to {
  if (to < from) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"'to' must be >= 'from', got from=", from, @" and to=", to));
  }
}

- (void)mergeInPlaceWithInt:(jint)from
                    withInt:(jint)mid
                    withInt:(jint)to {
  if (from == mid || mid == to || [self compareWithInt:mid - 1 withInt:mid] <= 0) {
    return;
  }
  else if (to - from == 2) {
    [self swapWithInt:mid - 1 withInt:mid];
    return;
  }
  while ([self compareWithInt:from withInt:mid] <= 0) {
    ++from;
  }
  while ([self compareWithInt:mid - 1 withInt:to - 1] <= 0) {
    --to;
  }
  jint first_cut, second_cut;
  jint len11, len22;
  if (mid - from > to - mid) {
    len11 = JreURShift32((mid - from), 1);
    first_cut = from + len11;
    second_cut = [self lowerWithInt:mid withInt:to withInt:first_cut];
    len22 = second_cut - mid;
  }
  else {
    len22 = JreURShift32((to - mid), 1);
    second_cut = mid + len22;
    first_cut = [self upperWithInt:from withInt:mid withInt:second_cut];
    len11 = first_cut - from;
  }
  OrgApacheLuceneUtilSorter_rotateWithInt_withInt_withInt_(self, first_cut, mid, second_cut);
  jint new_mid = first_cut + len22;
  [self mergeInPlaceWithInt:from withInt:first_cut withInt:new_mid];
  [self mergeInPlaceWithInt:new_mid withInt:second_cut withInt:to];
}

- (jint)lowerWithInt:(jint)from
             withInt:(jint)to
             withInt:(jint)val {
  jint len = to - from;
  while (len > 0) {
    jint half = JreURShift32(len, 1);
    jint mid = from + half;
    if ([self compareWithInt:mid withInt:val] < 0) {
      from = mid + 1;
      len = len - half - 1;
    }
    else {
      len = half;
    }
  }
  return from;
}

- (jint)upperWithInt:(jint)from
             withInt:(jint)to
             withInt:(jint)val {
  jint len = to - from;
  while (len > 0) {
    jint half = JreURShift32(len, 1);
    jint mid = from + half;
    if ([self compareWithInt:val withInt:mid] < 0) {
      len = half;
    }
    else {
      from = mid + 1;
      len = len - half - 1;
    }
  }
  return from;
}

- (jint)lower2WithInt:(jint)from
              withInt:(jint)to
              withInt:(jint)val {
  jint f = to - 1, t = to;
  while (f > from) {
    if ([self compareWithInt:f withInt:val] < 0) {
      return [self lowerWithInt:f withInt:t withInt:val];
    }
    jint delta = t - f;
    t = f;
    f -= JreLShift32(delta, 1);
  }
  return [self lowerWithInt:from withInt:t withInt:val];
}

- (jint)upper2WithInt:(jint)from
              withInt:(jint)to
              withInt:(jint)val {
  jint f = from, t = f + 1;
  while (t < to) {
    if ([self compareWithInt:t withInt:val] > 0) {
      return [self upperWithInt:f withInt:t withInt:val];
    }
    jint delta = t - f;
    f = t;
    t += JreLShift32(delta, 1);
  }
  return [self upperWithInt:f withInt:to withInt:val];
}

- (void)reverseWithInt:(jint)from
               withInt:(jint)to {
  OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(self, from, to);
}

- (void)rotateWithInt:(jint)lo
              withInt:(jint)mid
              withInt:(jint)hi {
  OrgApacheLuceneUtilSorter_rotateWithInt_withInt_withInt_(self, lo, mid, hi);
}

- (void)doRotateWithInt:(jint)lo
                withInt:(jint)mid
                withInt:(jint)hi {
  if (mid - lo == hi - mid) {
    while (mid < hi) {
      [self swapWithInt:lo++ withInt:mid++];
    }
  }
  else {
    OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(self, lo, mid);
    OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(self, mid, hi);
    OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(self, lo, hi);
  }
}

- (void)insertionSortWithInt:(jint)from
                     withInt:(jint)to {
  for (jint i = from + 1; i < to; ++i) {
    for (jint j = i; j > from; --j) {
      if ([self compareWithInt:j - 1 withInt:j] > 0) {
        [self swapWithInt:j - 1 withInt:j];
      }
      else {
        break;
      }
    }
  }
}

- (void)binarySortWithInt:(jint)from
                  withInt:(jint)to {
  [self binarySortWithInt:from withInt:to withInt:from + 1];
}

- (void)binarySortWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)i {
  for (; i < to; ++i) {
    jint l = from;
    jint h = i - 1;
    while (l <= h) {
      jint mid = JreURShift32((l + h), 1);
      jint cmp = [self compareWithInt:i withInt:mid];
      if (cmp < 0) {
        h = mid - 1;
      }
      else {
        l = mid + 1;
      }
    }
    switch (i - l) {
      case 2:
      [self swapWithInt:l + 1 withInt:l + 2];
      [self swapWithInt:l withInt:l + 1];
      break;
      case 1:
      [self swapWithInt:l withInt:l + 1];
      break;
      case 0:
      break;
      default:
      for (jint j = i; j > l; --j) {
        [self swapWithInt:j - 1 withInt:j];
      }
      break;
    }
  }
}

- (void)heapSortWithInt:(jint)from
                withInt:(jint)to {
  if (to - from <= 1) {
    return;
  }
  [self heapifyWithInt:from withInt:to];
  for (jint end = to - 1; end > from; --end) {
    [self swapWithInt:from withInt:end];
    [self siftDownWithInt:from withInt:from withInt:end];
  }
}

- (void)heapifyWithInt:(jint)from
               withInt:(jint)to {
  for (jint i = OrgApacheLuceneUtilSorter_heapParentWithInt_withInt_(from, to - 1); i >= from; --i) {
    [self siftDownWithInt:i withInt:from withInt:to];
  }
}

- (void)siftDownWithInt:(jint)i
                withInt:(jint)from
                withInt:(jint)to {
  for (jint leftChild = OrgApacheLuceneUtilSorter_heapChildWithInt_withInt_(from, i); leftChild < to; leftChild = OrgApacheLuceneUtilSorter_heapChildWithInt_withInt_(from, i)) {
    jint rightChild = leftChild + 1;
    if ([self compareWithInt:i withInt:leftChild] < 0) {
      if (rightChild < to && [self compareWithInt:leftChild withInt:rightChild] < 0) {
        [self swapWithInt:i withInt:rightChild];
        i = rightChild;
      }
      else {
        [self swapWithInt:i withInt:leftChild];
        i = leftChild;
      }
    }
    else if (rightChild < to && [self compareWithInt:i withInt:rightChild] < 0) {
      [self swapWithInt:i withInt:rightChild];
      i = rightChild;
    }
    else {
      break;
    }
  }
}

+ (jint)heapParentWithInt:(jint)from
                  withInt:(jint)i {
  return OrgApacheLuceneUtilSorter_heapParentWithInt_withInt_(from, i);
}

+ (jint)heapChildWithInt:(jint)from
                 withInt:(jint)i {
  return OrgApacheLuceneUtilSorter_heapChildWithInt_withInt_(from, i);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Sorter", NULL, 0x4, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x404, NULL, NULL },
    { "swapWithInt:withInt:", "swap", "V", 0x404, NULL, NULL },
    { "sortWithInt:withInt:", "sort", "V", 0x401, NULL, NULL },
    { "checkRangeWithInt:withInt:", "checkRange", "V", 0x0, NULL, NULL },
    { "mergeInPlaceWithInt:withInt:withInt:", "mergeInPlace", "V", 0x0, NULL, NULL },
    { "lowerWithInt:withInt:withInt:", "lower", "I", 0x0, NULL, NULL },
    { "upperWithInt:withInt:withInt:", "upper", "I", 0x0, NULL, NULL },
    { "lower2WithInt:withInt:withInt:", "lower2", "I", 0x0, NULL, NULL },
    { "upper2WithInt:withInt:withInt:", "upper2", "I", 0x0, NULL, NULL },
    { "reverseWithInt:withInt:", "reverse", "V", 0x10, NULL, NULL },
    { "rotateWithInt:withInt:withInt:", "rotate", "V", 0x10, NULL, NULL },
    { "doRotateWithInt:withInt:withInt:", "doRotate", "V", 0x0, NULL, NULL },
    { "insertionSortWithInt:withInt:", "insertionSort", "V", 0x0, NULL, NULL },
    { "binarySortWithInt:withInt:", "binarySort", "V", 0x0, NULL, NULL },
    { "binarySortWithInt:withInt:withInt:", "binarySort", "V", 0x0, NULL, NULL },
    { "heapSortWithInt:withInt:", "heapSort", "V", 0x0, NULL, NULL },
    { "heapifyWithInt:withInt:", "heapify", "V", 0x0, NULL, NULL },
    { "siftDownWithInt:withInt:withInt:", "siftDown", "V", 0x0, NULL, NULL },
    { "heapParentWithInt:withInt:", "heapParent", "I", 0x8, NULL, NULL },
    { "heapChildWithInt:withInt:", "heapChild", "I", 0x8, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "THRESHOLD", "THRESHOLD", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilSorter_THRESHOLD },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilSorter = { 2, "Sorter", "org.apache.lucene.util", NULL, 0x401, 21, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilSorter;
}

@end

void OrgApacheLuceneUtilSorter_init(OrgApacheLuceneUtilSorter *self) {
  NSObject_init(self);
}

void OrgApacheLuceneUtilSorter_reverseWithInt_withInt_(OrgApacheLuceneUtilSorter *self, jint from, jint to) {
  for (--to; from < to; ++from, --to) {
    [self swapWithInt:from withInt:to];
  }
}

void OrgApacheLuceneUtilSorter_rotateWithInt_withInt_withInt_(OrgApacheLuceneUtilSorter *self, jint lo, jint mid, jint hi) {
  JreAssert((lo <= mid && mid <= hi), (@"org/apache/lucene/util/Sorter.java:146 condition failed: assert lo <= mid && mid <= hi;"));
  if (lo == mid || mid == hi) {
    return;
  }
  [self doRotateWithInt:lo withInt:mid withInt:hi];
}

jint OrgApacheLuceneUtilSorter_heapParentWithInt_withInt_(jint from, jint i) {
  OrgApacheLuceneUtilSorter_initialize();
  return (JreURShift32((i - 1 - from), 1)) + from;
}

jint OrgApacheLuceneUtilSorter_heapChildWithInt_withInt_(jint from, jint i) {
  OrgApacheLuceneUtilSorter_initialize();
  return (JreLShift32((i - from), 1)) + 1 + from;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilSorter)
