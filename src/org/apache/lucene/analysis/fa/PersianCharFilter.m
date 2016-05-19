//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianCharFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/fa/PersianCharFilter.h"

@implementation OrgApacheLuceneAnalysisFaPersianCharFilter

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(self, inArg);
  return self;
}

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  jint charsRead = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:cbuf withInt:off withInt:len];
  if (charsRead > 0) {
    jint end = off + charsRead;
    while (off < end) {
      if (IOSCharArray_Get(nil_chk(cbuf), off) == 0x200c) *IOSCharArray_GetRef(cbuf, off) = ' ';
      off++;
    }
  }
  return charsRead;
}

- (jint)read {
  jint ch = [((JavaIoReader *) nil_chk(input_)) read];
  if (ch == 0x200c) {
    return ' ';
  }
  else {
    return ch;
  }
}

- (jint)correctWithInt:(jint)currentOff {
  return currentOff;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoReader:", "PersianCharFilter", NULL, 0x1, NULL, NULL },
    { "readWithCharArray:withInt:withInt:", "read", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "read", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "correctWithInt:", "correct", "I", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianCharFilter = { 2, "PersianCharFilter", "org.apache.lucene.analysis.fa", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFaPersianCharFilter;
}

@end

void OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(OrgApacheLuceneAnalysisFaPersianCharFilter *self, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisCharFilter_initWithJavaIoReader_(self, inArg);
}

OrgApacheLuceneAnalysisFaPersianCharFilter *new_OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianCharFilter, initWithJavaIoReader_, inArg)
}

OrgApacheLuceneAnalysisFaPersianCharFilter *create_OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianCharFilter, initWithJavaIoReader_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianCharFilter)
