//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/TermStats.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/misc/TermStats.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/misc/TermStats must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneMiscTermStats

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termtext
                         withInt:(jint)df
                        withLong:(jlong)tf {
  OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(self, field, termtext, df, tf);
  return self;
}

- (NSString *)getTermText {
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk(termtext_)) utf8ToString];
}

- (NSString *)description {
  return (JreStrcat("$$$I$J", @"TermStats: term=", [((OrgApacheLuceneUtilBytesRef *) nil_chk(termtext_)) utf8ToString], @" docFreq=", docFreq_, @" totalTermFreq=", totalTermFreq_));
}

- (void)dealloc {
  RELEASE_(termtext_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRef:withInt:withLong:);
  methods[1].selector = @selector(getTermText);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termtext_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "docFreq_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "totalTermFreq_", "J", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneUtilBytesRef;IJ", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscTermStats = { "TermStats", "org.apache.lucene.misc", ptrTable, methods, fields, 7, 0x11, 3, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneMiscTermStats;
}

@end

void OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(OrgApacheLuceneMiscTermStats *self, NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) {
  NSObject_init(self);
  JreStrongAssign(&self->termtext_, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(termtext));
  JreStrongAssign(&self->field_, field);
  self->docFreq_ = df;
  self->totalTermFreq_ = tf;
}

OrgApacheLuceneMiscTermStats *new_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscTermStats, initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_, field, termtext, df, tf)
}

OrgApacheLuceneMiscTermStats *create_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscTermStats, initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_, field, termtext, df, tf)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscTermStats)
