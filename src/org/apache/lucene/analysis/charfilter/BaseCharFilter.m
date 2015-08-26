//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/BaseCharFilter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/charfilter/BaseCharFilter.h"
#include "org/apache/lucene/util/ArrayUtil.h"

@interface OrgApacheLuceneAnalysisCharfilterBaseCharFilter () {
 @public
  IOSIntArray *offsets_;
  IOSIntArray *diffs_;
  jint size_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterBaseCharFilter, offsets_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterBaseCharFilter, diffs_, IOSIntArray *)

@implementation OrgApacheLuceneAnalysisCharfilterBaseCharFilter

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisCharfilterBaseCharFilter_initWithJavaIoReader_(self, inArg);
  return self;
}

- (jint)correctWithInt:(jint)currentOff {
  if (offsets_ == nil || currentOff < IOSIntArray_Get(offsets_, 0)) {
    return currentOff;
  }
  jint hi = size_ - 1;
  if (currentOff >= IOSIntArray_Get(nil_chk(offsets_), hi)) return currentOff + IOSIntArray_Get(nil_chk(diffs_), hi);
  jint lo = 0;
  jint mid = -1;
  while (hi >= lo) {
    mid = JreURShift32((lo + hi), 1);
    if (currentOff < IOSIntArray_Get(offsets_, mid)) hi = mid - 1;
    else if (currentOff > IOSIntArray_Get(offsets_, mid)) lo = mid + 1;
    else return currentOff + IOSIntArray_Get(nil_chk(diffs_), mid);
  }
  if (currentOff < IOSIntArray_Get(offsets_, mid)) return mid == 0 ? currentOff : currentOff + IOSIntArray_Get(nil_chk(diffs_), mid - 1);
  else return currentOff + IOSIntArray_Get(nil_chk(diffs_), mid);
}

- (jint)getLastCumulativeDiff {
  return offsets_ == nil ? 0 : IOSIntArray_Get(nil_chk(diffs_), size_ - 1);
}

- (void)addOffCorrectMapWithInt:(jint)off
                        withInt:(jint)cumulativeDiff {
  if (offsets_ == nil) {
    JreStrongAssignAndConsume(&offsets_, [IOSIntArray newArrayWithLength:64]);
    JreStrongAssignAndConsume(&diffs_, [IOSIntArray newArrayWithLength:64]);
  }
  else if (size_ == offsets_->size_) {
    JreStrongAssign(&offsets_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(offsets_));
    JreStrongAssign(&diffs_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(diffs_));
  }
  JreAssert(((size_ == 0 || off >= IOSIntArray_Get(nil_chk(offsets_), size_ - 1))), (JreStrcat("$ICI$IC$C$", @"Offset #", size_, '(', off, @") is less than the last recorded offset ", IOSIntArray_Get(nil_chk(offsets_), size_ - 1), 0x000a, JavaUtilArrays_toStringWithIntArray_(offsets_), 0x000a, JavaUtilArrays_toStringWithIntArray_(diffs_))));
  if (size_ == 0 || off != IOSIntArray_Get(offsets_, size_ - 1)) {
    *IOSIntArray_GetRef(offsets_, size_) = off;
    *IOSIntArray_GetRef(nil_chk(diffs_), size_++) = cumulativeDiff;
  }
  else {
    *IOSIntArray_GetRef(nil_chk(diffs_), size_ - 1) = cumulativeDiff;
  }
}

- (void)dealloc {
  RELEASE_(offsets_);
  RELEASE_(diffs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoReader:", "BaseCharFilter", NULL, 0x1, NULL, NULL },
    { "correctWithInt:", "correct", "I", 0x4, NULL, NULL },
    { "getLastCumulativeDiff", NULL, "I", 0x4, NULL, NULL },
    { "addOffCorrectMapWithInt:withInt:", "addOffCorrectMap", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "offsets_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "diffs_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "size_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterBaseCharFilter = { 2, "BaseCharFilter", "org.apache.lucene.analysis.charfilter", NULL, 0x401, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCharfilterBaseCharFilter;
}

@end

void OrgApacheLuceneAnalysisCharfilterBaseCharFilter_initWithJavaIoReader_(OrgApacheLuceneAnalysisCharfilterBaseCharFilter *self, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisCharFilter_initWithJavaIoReader_(self, inArg);
  self->size_ = 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterBaseCharFilter)
